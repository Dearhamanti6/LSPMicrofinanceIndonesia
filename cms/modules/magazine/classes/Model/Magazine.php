<?php defined('SYSPATH') or die('No direct script access.');

class Model_Magazine extends Model {
	
	public function count_search($date1 = '', $date2 = '', $search = '') {
		$session = Session::instance();
		$return = 0;

		$query =	DB::select(array(DB::expr('COUNT(1)'), 'COUNT'))
					->from('magazine_category')
					->where('mgzc_status', '!=', '0');

                $ex_search = explode(',', $search);
                foreach($ex_search as $v_search) {
                    $query = $query->where('mgzc_title', 'LIKE', '%' . trim($v_search) . '%');
                }

                $query = $query->order_by('mgzc_id', 'ASC')
					->execute()
					->as_array();


		if(!empty($query[0]['COUNT'])) {
			$return = $query[0]['COUNT'];
		}

		return $return;

	}

	public function list_search($search = '', $limit = '', $offset = '') {
		$exec = DB::select(
					array('mgzc_id', 'id'),
					array('mgzc_title', 'title')
				)
				->from('magazine_category')
				->where('mgzc_status', '!=', '0');

                $ex_search = explode(',', $search);
				if(!empty($ex_search)){
					foreach($ex_search as $v_search) {
						$exec = $exec->where('mgzc_title', 'LIKE', '%' . trim($v_search) . '%');
					}
				}

				
				//echo Debug::vars((string) $exec);
                $exec = $exec->order_by('mgzc_title', 'ASC')
				->limit($limit)
				->offset($offset)
				->execute()
				->as_array();

		return $exec;

	}

	public function list_category() {
		$exec = DB::select(
					array('mgzc_id', 'id'),
					array('mgzc_title', 'title')
				)
				->from('magazine_category')
				->where('mgzc_status', '!=', '0');
				
				//echo Debug::vars((string) $exec);
                $exec = $exec->order_by('mgzc_title', 'ASC')
				->execute()
				->as_array();

		return $exec;

	}
	
	public function save_data($data = '', $user_id = '') {
		// Save to table article
		DB::insert('magazine_category', array(
			'mgzc_title'
		))
		->values(array(
			$data['title']))
		->execute();
					
	}

	public function detail_data($id = '') {

		$return = '';

		$exec = DB::select(
					array('mgzc_id', 'id'),
					array('mgzc_title', 'title')
				)
				->from('magazine_category')
				->where('mgzc_id', '=', $id)
				->execute()
				->as_array();

		if(!empty($exec[0])) {

			$return = $exec[0];

		}
		return $return;

	}
	
	public function update_data($data = '', $user_id = '', $action='') {

		// Id category
		$id_category = $data['id'];
		DB::update('magazine_category')
			->set(array('mgzc_title' => $data['title']))
			->where('mgzc_id', '=', $id_category)
			->execute();

	}

	public function delete_data($id = '') {
		DB::update('magazine_category')
			->set(array('mgzc_status' => 0))
			->where('mgzc_id', '=', $id)
			->execute();

	}

	// MAGAZINE
	public function count_search_magazine($date1 = '', $date2 = '', $search = '') {
		$session = Session::instance();
		$return = 0;

		$publish = $session->get("publish_magz", "magazinePublishTime");

		$query =	DB::select(array(DB::expr('COUNT(1)'), 'COUNT'))
					->from('magazine')
					->where(DB::expr('DATE('.$publish.')'), '>=', $date1)
					->where(DB::expr('DATE('.$publish.')'), '<=', $date2)
					->where('magazineStatus', '!=', '0');

                $ex_search = explode(',', $search);
                foreach($ex_search as $v_search) {
                    $query = $query->where('magazineTitle', 'LIKE', '%' . trim($v_search) . '%');
                }

                $query = $query->order_by('magazineId', 'DESC')
					->execute()
					->as_array();


		if(!empty($query[0]['COUNT'])) {
			$return = $query[0]['COUNT'];
		}

		return $return;

	}

	public function list_search_magazine($date1 = '', $date2 = '', $search = '', $limit = '', $offset = '') {
		$session = Session::instance();
		$publish = $session->get("publish_magz", "magazinePublishTime");
		$exec = DB::select(
					array('magazineId', 'id'),
					array('magazineTitle', 'title'),
					array('magazineExcerpt', 'description'),
					array('magazineDetail', 'detail'),
					array('magazineSaved', 'saved'),
					array('magazinePublishTime', 'publishTime'),
					array('magazineStatus', 'status'),
					array('magazineAdmiId', 'saved_id'),
					array('magazineFile', 'file'),
					array('userFullName', 'name_saved')
				)
				->from('magazine')
				->join('user', 'LEFT')
				->on('magazine.magazineAdmiId', '=', 'user.userId')
				->where(DB::expr('DATE('.$publish.')'), '>=', $date1)
				->where(DB::expr('DATE('.$publish.')'), '<=', $date2)
				->where('magazineStatus', '!=', '0');

                $ex_search = explode(',', $search);
				if(!empty($ex_search)){
					foreach($ex_search as $v_search) {
						$exec = $exec->where('magazineTitle', 'LIKE', '%' . trim($v_search) . '%');
					}
				}

				
				//echo Debug::vars((string) $exec);
                $exec = $exec->order_by('magazineId', 'DESC')
				->limit($limit)
				->offset($offset)
				->execute()
				->as_array();

		if(!empty($exec)) {

			foreach($exec as $k_exec => $v_exec) {
				
				if(!empty($v_exec['id'])) {

					// Get images
					$exec[$k_exec]['images'] = 	DB::select(
													array('magzimArimId', 'image_id'),
													array('arimFileType', 'image_type')
												)
												->from('magazine_images')
												->join('arsip_images', 'LEFT')
												->on('arsip_images.arimId', '=', 'magazine_images.magzimArimId')
												->where('magzimMagazineId', '=', $v_exec['id'])
												->execute()
												->as_array();

				}

			}

		}

		return $exec;

	}
	public function save_magazine($data = '', $user_id = '') {
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
		$article =	DB::insert('magazine', array(
						'magazineTitle',
						'magazineCatMagzId',
						'magazineExcerpt',
						'magazineDetail',
						'magazineFile',
						'magazinePath',
						'magazinePublishTime',
						'magazineSaved',
						'magazineAdmiId'
					))
					->values(array(
						$data['title'],
						NULL,
						$data['description'],
						str_replace("../uploads/", "/uploads/", $data['detail']),
						$data['name_file'],
						$data['path'],
						$publish_time,
						$saved_time,
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
					$image = 	DB::insert('magazine_images', array(
									'magzimMagazineId',
									'magzimArimId'
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

	public function detail_data_magazine($id = '') {

		$return = '';

		$exec = DB::select(
					array('magazineId', 'id'),
					array('magazineTitle', 'title'),
					array('magazineExcerpt', 'description'),
					array('magazineDetail', 'detail'),
					array('magazinePublishTime', 'publishTime'),
					array('magazineSaved', 'saved'),
					array('magazineFile', 'file'),
					array('magazinePath', 'path'),
					array('magazineStatus', 'status')
				)
				->from('magazine')
				->where('magazineId', '=', $id)
				->execute()
				->as_array();

		if(!empty($exec)) {
			foreach($exec as $k_exec => $v_exec) {
				if(!empty($v_exec['id'])) {

					// Get images
					$exec[$k_exec]['images'] = 	DB::select(
													array('magzimArimId', 'image_id'),
													array('arimFileType', 'image_type')
												)
												->from('magazine_images')
												->join('arsip_images', 'LEFT')
												->on('arsip_images.arimId', '=', 'magazine_images.magzimArimId')
												->where('magzimMagazineId', '=', $v_exec['id'])
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

	public function update_data_magazine($data = '', $user_id = '', $action='') {

		// Id article
		$id_article = $data['id'];

		// Start Transaction
		Database::instance()->begin();

		// Check old image
		if($data['image'] != @$data['image_old']) {

			// Delete Data Old
			DB::delete('magazine_images')
				->where('magzimMagazineId', '=', $id_article)
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
					$image = 	DB::insert('magazine_images', array(
									'magzimMagazineId',
									'magzimArimId'
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
		$update = DB::update('magazine')
			->set(array('magazineTitle' => $data['title']))
			->set(array('magazineExcerpt' => $data['description']))
			->set(array('magazineDetail' => $data['detail']));

		// If post publish time
        if(!empty($data['publish_time'])) {
			$publish_time = DateTime::createFromFormat('d/m/Y H:i:s', $data['publish_time']);
			$publish_time = $publish_time->format('Y-m-d H:i:s');
            $update = $update->set(array('magazinePublishTime' => $publish_time));
		}
		if(!empty($data['name_file']))
		{
			$update = $update
			->set(array('magazineFile' => $data['name_file']))
			->set(array('magazinePath' => $data['path']));
		}
		$update = $update->where('magazineId', '=', $id_article)->execute();

		// Commit transaction
		Database::instance()->commit();

	}

	public function delete_data_magazine($id = '') {
		DB::update('magazine')
			->set(array('magazineStatus' => 0))
			->where('magazineId', '=', $id)
			->execute();

	}

}
