<?php defined('SYSPATH') or die('No direct script access.');

class Model_News extends Model {
	
	public function count_search($date1 = '', $date2 = '', $search = '') {
		$session = Session::instance();
		$return = 0;

		$publish = $session->get("publish_news", "newsPublishTime");

		$query =	DB::select(array(DB::expr('COUNT(1)'), 'COUNT'))
					->from('news')
					->where(DB::expr('DATE('.$publish.')'), '>=', $date1)
					->where(DB::expr('DATE('.$publish.')'), '<=', $date2)
					->where('newsStatus', '!=', '0');

                $ex_search = explode(',', $search);
                foreach($ex_search as $v_search) {
                    $query = $query->where('newsTitle', 'LIKE', '%' . trim($v_search) . '%');
                }

                $query = $query->order_by('newsId', 'DESC')
					->execute()
					->as_array();


		if(!empty($query[0]['COUNT'])) {
			$return = $query[0]['COUNT'];
		}

		return $return;

	}

	public function list_search($date1 = '', $date2 = '', $search = '', $limit = '', $offset = '') {
		$session = Session::instance();
		$publish = $session->get("publish_news", "newsPublishTime");
		$exec = DB::select(
					array('newsId', 'id'),
					array('newsTitle', 'title'),
					array('newsExcerpt', 'description'),
					array('newsDetail', 'detail'),
					array('newsSaved', 'saved'),
					array('newsPublishTime', 'publishTime'),
					array('newsStatus', 'status'),
					array('newsAdmiId', 'saved_id'),
					array('userFullName', 'name_saved')
				)
				->from('news')
				->join('user', 'LEFT')
				->on('news.newsAdmiId', '=', 'user.userId')
				->where(DB::expr('DATE('.$publish.')'), '>=', $date1)
				->where(DB::expr('DATE('.$publish.')'), '<=', $date2)
				->where('newsStatus', '!=', '0');

                $ex_search = explode(',', $search);
				if(!empty($ex_search)){
					foreach($ex_search as $v_search) {
						$exec = $exec->where('newsTitle', 'LIKE', '%' . trim($v_search) . '%');
					}
				}

				
				//echo Debug::vars((string) $exec);
                $exec = $exec->order_by('newsId', 'DESC')
				->limit($limit)
				->offset($offset)
				->execute()
				->as_array();

		if(!empty($exec)) {

			foreach($exec as $k_exec => $v_exec) {
				
				if(!empty($v_exec['id'])) {

					// Get images
					$exec[$k_exec]['images'] = 	DB::select(
													array('neimArimId', 'image_id'),
													array('arimFileType', 'image_type')
												)
												->from('news_images')
												->join('arsip_images', 'LEFT')
												->on('arsip_images.arimId', '=', 'news_images.neimArimId')
												->where('neimNewsId', '=', $v_exec['id'])
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
		$article =	DB::insert('news', array(
						'newsTitle',
						'newsExcerpt',
						'newsDetail',
						'newsPublishTime',
						'newsSaved',
						'newsAdmiId'
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
					$image = 	DB::insert('news_images', array(
									'neimNewsId',
									'neimArimId'
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
					array('newsId', 'id'),
					array('newsTitle', 'title'),
					array('newsExcerpt', 'description'),
					array('newsDetail', 'detail'),
					array('newsPublishTime', 'publishTime'),
					array('newsSaved', 'saved'),
					array('newsStatus', 'status')
				)
				->from('news')
				->where('newsId', '=', $id)
				->execute()
				->as_array();

		if(!empty($exec)) {
			foreach($exec as $k_exec => $v_exec) {
				if(!empty($v_exec['id'])) {

					// Get images
					$exec[$k_exec]['images'] = 	DB::select(
													array('neimArimId', 'image_id'),
													array('arimFileType', 'image_type')
												)
												->from('news_images')
												->join('arsip_images', 'LEFT')
												->on('arsip_images.arimId', '=', 'news_images.neimArimId')
												->where('neimNewsId', '=', $v_exec['id'])
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
			DB::delete('news_images')
				->where('neimNewsId', '=', $id_article)
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
					$image = 	DB::insert('news_images', array(
									'neimNewsId',
									'neimArimId'
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
		$update = DB::update('news')
			->set(array('newsTitle' => $data['title']))
			->set(array('newsExcerpt' => $data['description']))
			->set(array('newsDetail' => $data['detail']));

		// If post publish time
        if(!empty($data['publish_time'])) {
			$publish_time = DateTime::createFromFormat('d/m/Y H:i:s', $data['publish_time']);
			$publish_time = $publish_time->format('Y-m-d H:i:s');
            $update = $update->set(array('newsPublishTime' => $publish_time));
		}
		$update = $update->where('newsId', '=', $id_article)->execute();

		// Commit transaction
		Database::instance()->commit();

	}

	public function delete_data($id = '') {
		DB::update('news')
			->set(array('newsStatus' => 0))
			->where('newsId', '=', $id)
			->execute();

	}

}
