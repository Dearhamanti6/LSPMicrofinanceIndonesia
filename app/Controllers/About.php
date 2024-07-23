<?php namespace App\Controllers;

class About extends BaseController {
    
    public function bmc() {
        $data = array();
        
        // Load model
        $main_model = new \App\Models\MainModel();
        $data['content'] = $main_model->get_content('content_about_bmc');
        
        $zainlayout = new \App\Libraries\Zainlayout();
        return $zainlayout->render('about_bmc', $data);
	}
    
    public function bri() {
        $data = array();
        
        // Load model
        $main_model = new \App\Models\MainModel();
        $data['content'] = $main_model->get_content('content_about_bri');
        
        $zainlayout = new \App\Libraries\Zainlayout();
        return $zainlayout->render('about_bri', $data);
	}
    
    public function documents() {
        $zainlayout = new \App\Libraries\Zainlayout();
        return $zainlayout->render('about_documents', array());
	}

}
