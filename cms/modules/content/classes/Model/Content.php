<?php defined('SYSPATH') or die('No direct script access.');

class Model_Content extends Model {
    
    public function detail_data($table = '') {

		$return = '';

		$exec = DB::select(
					array('contentId', 'id'),
					array('contentText', 'detail')
				)
				->from($table)
				->where('contentId', '=', 1)
				->execute()
				->as_array();

		
		if(!empty($exec[0])) {

			$return = $exec[0];

		}

		return $return;

	}
    
    public function update_data($data = '', $table = '') {

		// Start Transaction
		Database::instance()->begin();

		
		// Update date article
		$update = DB::update($table)
			->set(array('contentText' => $data['detail']));

		
		$update = $update->where('contentId', '=', 1)->execute();

		// Commit transaction
		Database::instance()->commit();

	}

	public function save_data_organisasi($data = '', $user_id = '') {
		// Start Transaction
		Database::instance()->begin();

		$publish_time = date('Y-m-d H:i:s'); // Default data now
		if(!empty($data['publish_time'])) {
			$publish_time = DateTime::createFromFormat('d/m/Y H:i:s', $data['publish_time']);
			$publish_time = $publish_time->format('Y-m-d H:i:s');

			$saved_time = date('Y-m-d H:i:s');
		} else {
			$saved_time = $publish_time;
		}
		
		// Save to table article
		$article =	DB::insert('content_anggota', array(
						'anggotaName',
						'anggotaPosition',
						'anggotaDetail',
						'anggotaDate',
						'anggotaAdmiId'
					))
					->values(array(
						$data['nama'],
						$data['jabatan'],
						str_replace("../uploads/", "/uploads/", $data['detail']),
						$publish_time,
						$user_id
					));
		list($lastid_article, $rows_inserted) = $article->execute();

		if(!empty($lastid_article)) {
            
            
			// Save article images
			if(!empty($data['image'])) {

				// Get id image from full url image
				$base_image = basename($data['image']).PHP_EOL;
				if(!empty($base_image)) {
					$ex_base = explode('.', $base_image);
					list($id_image, $file_type) = $ex_base;
				}

				if(!empty($id_image)) {
					$image = 	DB::insert('content_anggota_images', array(
									'anggimAnggotaId',
									'anggimArimId'
								))
								->values(array(
									$lastid_article,
									$id_image
								))
								->execute();
				}
			}
		}

		// Commit transaction
		Database::instance()->commit();
		
	}

	public function count_search($date1 = '', $date2 = '', $search = '') {
		$session = Session::instance();
		$return = 0;

		$query =	DB::select(array(DB::expr('COUNT(1)'), 'COUNT'))
					->from('content_anggota')
					->where('anggotaStatus', '!=', '0');

                $ex_search = explode(',', $search);
                foreach($ex_search as $v_search) {
                    $query = $query->where('anggotaName', 'LIKE', '%' . trim($v_search) . '%');
                }

                $query = $query->order_by('anggotaId', 'ASC')
					->execute()
					->as_array();


		if(!empty($query[0]['COUNT'])) {
			$return = $query[0]['COUNT'];
		}

		return $return;

	}

	public function list_search($search = '', $limit = '', $offset = '') {
		$session = Session::instance();
		$exec = DB::select(
					array('anggotaId', 'id'),
					array('anggotaName', 'title'),
					array('anggotaPosition', 'position'),
					array('anggotaDetail', 'detail'),
					array('anggotaDate', 'saved'),
					array('anggotaStatus', 'status'),
					array('anggotaAdmiId', 'saved_id'),
					array('userFullName', 'name_saved')
				)
				->from('content_anggota')
				->join('user', 'LEFT')
				->on('content_anggota.anggotaAdmiId', '=', 'user.userId')
				->where('anggotaStatus', '!=', '0');

                $ex_search = explode(',', $search);
				if(!empty($ex_search)){
					foreach($ex_search as $v_search) {
						$exec = $exec->where('anggotaName', 'LIKE', '%' . trim($v_search) . '%');
					}
				}

				
				//echo Debug::vars((string) $exec);
                $exec = $exec->order_by('anggotaId', 'ASC')
				->limit($limit)
				->offset($offset)
				->execute()
				->as_array();

		if(!empty($exec)) {

			foreach($exec as $k_exec => $v_exec) {
				
				if(!empty($v_exec['id'])) {

					// Get images
					$exec[$k_exec]['images'] = 	DB::select(
													array('anggimArimId', 'image_id'),
													array('arimFileType', 'image_type')
												)
												->from('content_anggota_images')
												->join('arsip_images', 'LEFT')
												->on('arsip_images.arimId', '=', 'content_anggota_images.anggimArimId')
												->where('anggimAnggotaId', '=', $v_exec['id'])
												->execute()
												->as_array();

				}

			}

		}

		return $exec;

	}

	public function detail_data_anggota($id = '') {

		$return = '';

		$exec = DB::select(
					array('anggotaId', 'id'),
					array('anggotaName', 'title'),
					array('anggotaPosition', 'position'),
					array('anggotaDetail', 'detail'),
					array('anggotaDate', 'saved'),
					array('anggotaStatus', 'status'),
					array('anggotaDate', 'publishTime')

				)
				->from('content_anggota')
				->where('anggotaId', '=', $id)
				->execute()
				->as_array();

		if(!empty($exec)) {
			foreach($exec as $k_exec => $v_exec) {
				if(!empty($v_exec['id'])) {

					// Get images
					$exec[$k_exec]['images'] = 	DB::select(
													array('anggimArimId', 'image_id'),
													array('arimFileType', 'image_type')
												)
												->from('content_anggota_images')
												->join('arsip_images', 'LEFT')
												->on('arsip_images.arimId', '=', 'content_anggota_images.anggimArimId')
												->where('anggimAnggotaId', '=', $v_exec['id'])
												->execute()
												->as_array();
                    
				}
			}
		}

		if(!empty($exec[0])) {

			$return = $exec[0];

		}

		return $return;

	}

	public function update_data_anggota($data = '', $user_id = '', $action='') {

		// Id article
		$id_article = $data['id'];

		// Start Transaction
		Database::instance()->begin();

		// Check old image
		if($data['image'] != @$data['image_old']) {

			// Delete Data Old
			DB::delete('content_anggota_images')
				->where('anggimAnggotaId', '=', $id_article)
				->execute();

			// Check new image
			if(!empty($data['image'])) {

				// Get id image from full url image
				$base_image = basename($data['image']).PHP_EOL;
				if(!empty($base_image)) {
					$ex_base = explode('.', $base_image);
					list($id_image, $file_type) = $ex_base;
				}

				if(!empty($id_image)) {
					$image = 	DB::insert('content_anggota_images', array(
									'anggimAnggotaId',
									'anggimArimId'
								))
								->values(array(
									$id_article,
									$id_image
								))
								->execute();
				}
			}
		}
        
        

		// Update date article
		$update = DB::update('content_anggota')
			->set(array('anggotaName' => $data['nama']))
			->set(array('anggotaPosition' => $data['jabatan']))
			->set(array('anggotaDetail' => $data['detail']));

		// If post publish time
        if(!empty($data['publish_time'])) {
			$publish_time = DateTime::createFromFormat('d/m/Y H:i:s', $data['publish_time']);
			$publish_time = $publish_time->format('Y-m-d H:i:s');
            $update = $update->set(array('anggotaDate' => $publish_time));
		}
		$update = $update->where('anggotaId', '=', $id_article)->execute();

		// Commit transaction
		Database::instance()->commit();

	}

	public function delete_data($id = '') {
		DB::update('content_anggota')
			->set(array('anggotaStatus' => 0))
			->where('anggotaId', '=', $id)
			->execute();

	}
    
}