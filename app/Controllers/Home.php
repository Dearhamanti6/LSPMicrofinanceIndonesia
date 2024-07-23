<?php namespace App\Controllers;

class Home extends BaseController {

    public function index() {
        $data = array();
        
        // Load model
        $main_model = new \App\Models\MainModel();
        $data['news'] = $main_model->get_news_front();
        $data['slider'] = $main_model->get_slider_front();
        $data['image']  = $data['slider'][0]['images'][0]['path'];
        $data['video'] = $main_model->get_video_front();
        // Load library layout
        // print_r($data['slider']);
        // exit;
        $zainlayout = new \App\Libraries\Zainlayout();
        return $zainlayout->render('home', $data);
	}

}
