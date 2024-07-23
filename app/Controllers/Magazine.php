<?php namespace App\Controllers;

class Magazine extends BaseController {
    
    public function index() {
        $main_model = new \App\Models\MainModel();
        $data['all'] = $main_model->get_magazine_all();
        // Load Library Layout
        $zainlayout = new \App\Libraries\Zainlayout();
        return $zainlayout->render('magazine', $data);
	}

    public function detail($id = '', $title = '') {
        $data = array();
        
        // Load model
        $main_model = new \App\Models\MainModel();
        $query = $main_model->get_magazine_detail($id);
        $data['detail'] = array();
        if(!empty($query[0])) {
            $data['detail'] = $query[0];
        }
        // print_r($data['detail']);
        // exit;
        // Load Library Layout
        $zainlayout = new \App\Libraries\Zainlayout();
        return $zainlayout->render('magazine_detail', $data);
    }
    
   
}
