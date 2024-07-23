<?php namespace App\Controllers;

class Empowerment extends BaseController {

    public function index() {
        $data = array();
        
        // Load model
        $main_model = new \App\Models\MainModel();
        $data['content'] = $main_model->get_content('content_empowerment');
        
        $zainlayout = new \App\Libraries\Zainlayout();
        return $zainlayout->render('empowerment', $data);
	}

}
