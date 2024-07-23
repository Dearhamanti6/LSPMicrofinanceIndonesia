<?php namespace App\Controllers;

class Events extends BaseController {

    public function converence() {
        $data = array();
        
        // Load model
        $main_model = new \App\Models\MainModel();
        $data['all'] = $main_model->get_conv_all();
        
        // Load Library Layout
        $zainlayout = new \App\Libraries\Zainlayout();
        return $zainlayout->render('events_converence', $data);
	}

    public function article() {
        $data = array();
        
        // Load model
        $main_model = new \App\Models\MainModel();
        $data['all'] = $main_model->get_news_all();
        
        // Load Library Layout
        $zainlayout = new \App\Libraries\Zainlayout();
        return $zainlayout->render('events_articles', $data);
	}
    
    public function video() {
        $data = array();
        
        // Load model
        $main_model = new \App\Models\MainModel();
        $data['all'] = $main_model->get_video_all();
        
        // Load Library Layout
        $zainlayout = new \App\Libraries\Zainlayout();
        return $zainlayout->render('events_video', $data);
	}
    
    public function article_detail($id = '', $title = '') {
        $data = array();
        
        // Load model
        $main_model = new \App\Models\MainModel();
        $query = $main_model->get_news_detail($id);
        $data['detail'] = array();
        if(!empty($query[0])) {
            $data['detail'] = $query[0];
        }
        
        // Load Library Layout
        $zainlayout = new \App\Libraries\Zainlayout();
        return $zainlayout->render('events_articles_detail', $data);
    }
    
    public function video_detail($id = '', $title = '') {
        $data = array();
        
        // Load model
        $main_model = new \App\Models\MainModel();
        $query = $main_model->get_video_detail($id);
        $data['detail'] = array();
        if(!empty($query[0])) {
            $data['detail'] = $query[0];
        }
        
        // Load Library Layout
        $zainlayout = new \App\Libraries\Zainlayout();
        return $zainlayout->render('events_video_detail', $data);
    }
    
    public function converence_detail($id = '', $title = '') {
        $data = array();
        
        // Load model
        $main_model = new \App\Models\MainModel();
        $query = $main_model->get_conv_detail($id);
        $data['detail'] = array();
        if(!empty($query[0])) {
            $data['detail'] = $query[0];
        }
        
        // Load Library Layout
        $zainlayout = new \App\Libraries\Zainlayout();
        return $zainlayout->render('events_converence_detail', $data);
    }
    
}
