<?php defined('SYSPATH') or die('No direct script access.');

class Kohana_Converence {

	public static function validation($post) {
		
		$validation = 	Validation::factory($post)
						->rule('title', 'not_empty')
						->rule('title', 'max_length', array(':value', '65'))
						->rule('description', 'not_empty')
						->rule('description', 'max_length', array(':value', '165'))
						->rule('detail', 'not_empty')
						;
						
		if($validation->check()) {
			
			$return = TRUE;
		
		} else {
		
			$return = $validation->errors('validation');
		
		}
		
		return $return;
	}
    
    public static function get_user_approver($article_id = '') {
        
        $return = '';
		
        $exec = DB::select(
                        array('userRealName', 'name')
                )
                ->from('converence')
                ->join('user', 'LEFT')
		->on('converence.cnvUserIdApproved', '=', 'user.userId')
                ->where('convId', '=', $article_id)
                ->execute()
                ->as_array();

        if(!empty($exec[0]['name'])) {
                $return = $exec[0]['name'];
        }

        return $return;
        
    }
    
	public static function get_user_saved($article_id = '') {
		
		$return = '';
		
        $exec = DB::select(
                        array('userRealName', 'name')
                )
                ->from('article')
                ->join('user', 'LEFT')
		->on('converence.convUserIdSaved', '=', 'user.userId')
                ->where('convId', '=', $article_id)
                ->execute()
                ->as_array();

        if(!empty($exec[0]['name'])) {
                $return = $exec[0]['name'];
        }

        return $return;
		
	}
	
    public static function get_image($article_id = '') {
        
        $return = '';
        
        $exec = DB::select(
                        array('arimId', 'image_id'),
                        array('arimFileType', 'image_type')
                )
                ->from('converence_image')
                ->join('arsip_images', 'LEFT')
                ->on('arsip_images.arimId', '=', 'converence_image.coimArimId')
                ->where('coimConvId', '=', $article_id)
                ->limit(1)
                ->execute()
                ->as_array();

        if(!empty($exec[0]['image_id'])) {
            $split = str_split($exec[0]['image_id']);
            $path = implode('/', $split);
            $return = '/uploads/library/' . $path . '/' . $exec[0]['image_id'] . '.' . $exec[0]['image_type'];
        }
        
        return $return;
        
    }
    
    public static function detail($article_id = '') {
        
        // Load MOdel
        $converence_model = New Model_Converence();
        
        //Detail
        return $converence_model->detail_data($article_id);
        
    }
	
}