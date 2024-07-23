<?php defined('SYSPATH') or die('No direct script access.');

class Model_Converence extends Model {
	
	public function count_search($date1 = '', $date2 = '', $search = '') {
		$session = Session::instance();
		$return = 0;

		$publish = $session->get("publish_news", "convPublishTime");

		$query =	DB::select(array(DB::expr('COUNT(1)'), 'COUNT'))
					->from('converence')
					->where(DB::expr('DATE('.$publish.')'), '>=', $date1)
					->where(DB::expr('DATE('.$publish.')'), '<=', $date2)
					->where('convStatus', '!=', '0');

                $ex_search = explode(',', $search);
                foreach($ex_search as $v_search) {
                    $query = $query->where('convTitle', 'LIKE', '%' . trim($v_search) . '%');
                }

                $query = $query->order_by('convId', 'DESC')
					->execute()
					->as_array();


		if(!empty($query[0]['COUNT'])) {
			$return = $query[0]['COUNT'];
		}

		return $return;

	}

	public function list_search($date1 = '', $date2 = '', $search = '', $limit = '', $offset = '') {
		$session = Session::instance();
		$publish = $session->get("publish_news", "convPublishTime");
		$exec = DB::select(
					array('convId', 'id'),
					array('convTitle', 'title'),
					array('convExcerpt', 'description'),
					array('convDetail', 'detail'),
					array('convSaved', 'saved'),
					array('convPublishTime', 'publishTime'),
					array('convStatus', 'status'),
					array('convAdmiId', 'saved_id'),
					array('userFullName', 'name_saved')
				)
				->from('converence')
				->join('user', 'LEFT')
				->on('converence.convAdmiId', '=', 'user.userId')
				->where(DB::expr('DATE('.$publish.')'), '>=', $date1)
				->where(DB::expr('DATE('.$publish.')'), '<=', $date2)
				->where('convStatus', '!=', '0');

                $ex_search = explode(',', $search);
				if(!empty($ex_search)){
					foreach($ex_search as $v_search) {
						$exec = $exec->where('convTitle', 'LIKE', '%' . trim($v_search) . '%');
					}
				}

				
				//echo Debug::vars((string) $exec);
                $exec = $exec->order_by('convId', 'DESC')
				->limit($limit)
				->offset($offset)
				->execute()
				->as_array();

		if(!empty($exec)) {

			foreach($exec as $k_exec => $v_exec) {
				
				if(!empty($v_exec['id'])) {

					// Get images
					$exec[$k_exec]['images'] = 	DB::select(
													array('coimArimId', 'image_id'),
													array('arimFileType', 'image_type')
												)
												->from('converence_images')
												->join('arsip_images', 'LEFT')
												->on('arsip_images.arimId', '=', 'converence_images.coimArimId')
												->where('coimConvId', '=', $v_exec['id'])
												->execute()
												->as_array();

				}

			}

		}

		return $exec;

	}
	
	public function save_data($data = '', $user_id = '') {
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
		$article =	DB::insert('converence', array(
						'convTitle',
						'convExcerpt',
						'convDetail',
						'convPublishTime',
						'convSaved',
						'convAdmiId'
					))
					->values(array(
						$data['title'],
						$data['description'],
						str_replace("../uploads/", "/uploads/", $data['detail']),
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
					$image = 	DB::insert('converence_images', array(
									'coimConvId',
									'coimArimId'
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

	public function detail_data($id = '') {

		$return = '';

		$exec = DB::select(
					array('convId', 'id'),
					array('convTitle', 'title'),
					array('convExcerpt', 'description'),
					array('convDetail', 'detail'),
					array('convPublishTime', 'publishTime'),
					array('convSaved', 'saved'),
					array('convStatus', 'status')
				)
				->from('converence')
				->where('convId', '=', $id)
				->execute()
				->as_array();

		if(!empty($exec)) {
			foreach($exec as $k_exec => $v_exec) {
				if(!empty($v_exec['id'])) {

					// Get images
					$exec[$k_exec]['images'] = 	DB::select(
													array('coimArimId', 'image_id'),
													array('arimFileType', 'image_type')
												)
												->from('converence_images')
												->join('arsip_images', 'LEFT')
												->on('arsip_images.arimId', '=', 'converence_images.coimArimId')
												->where('coimConvId', '=', $v_exec['id'])
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
	
	public function update_data($data = '', $user_id = '', $action='') {

		// Id article
		$id_article = $data['id'];

		// Start Transaction
		Database::instance()->begin();

		// Check old image
		if($data['image'] != @$data['image_old']) {

			// Delete Data Old
			DB::delete('converence_images')
				->where('coimConvId', '=', $id_article)
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
					$image = 	DB::insert('converence_images', array(
									'coimConvId',
									'coimArimId'
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
		$update = DB::update('converence')
			->set(array('convTitle' => $data['title']))
			->set(array('convExcerpt' => $data['description']))
			->set(array('convDetail' => $data['detail']));

		// If post publish time
        if(!empty($data['publish_time'])) {
			$publish_time = DateTime::createFromFormat('d/m/Y H:i:s', $data['publish_time']);
			$publish_time = $publish_time->format('Y-m-d H:i:s');
            $update = $update->set(array('convPublishTime' => $publish_time));
		}
		$update = $update->where('convId', '=', $id_article)->execute();

		// Commit transaction
		Database::instance()->commit();

	}

	public function delete_data($id = '') {
		DB::update('converence')
			->set(array('convStatus' => 0))
			->where('convId', '=', $id)
			->execute();

	}

}
