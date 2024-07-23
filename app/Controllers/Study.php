<?php namespace App\Controllers;

class Study extends BaseController {

    public function regular() {
        $data = array();
        
        // Load model
        $main_model = new \App\Models\MainModel();
        $data['content'] = $main_model->get_content('content_study_regular');
        
        $zainlayout = new \App\Libraries\Zainlayout();
        return $zainlayout->render('study_regular', $data);
	}
    
    public function customized() {
        $data = array();
        
        // Load model
        $main_model = new \App\Models\MainModel();
        $data['content'] = $main_model->get_content('content_study_customize');
        
        $zainlayout = new \App\Libraries\Zainlayout();
        return $zainlayout->render('study_customized', $data);
	}
    
    public function overseas() {
        $data = array();
        
        // Load model
        $main_model = new \App\Models\MainModel();
        $data['content'] = $main_model->get_content('content_study_overseas');
        
        $zainlayout = new \App\Libraries\Zainlayout();
        return $zainlayout->render('study_overseas', $data);
	}

}
