<?php namespace App\Controllers;

class Network extends BaseController {

    public function clients() {
        $data = array();
        
        // Load model
        $main_model = new \App\Models\MainModel();
        $data['content'] = $main_model->get_content('content_network_client');
        
        $zainlayout = new \App\Libraries\Zainlayout();
        return $zainlayout->render('network_clients', $data);
	}

    public function community() {
        $data = array();
        
        // Load model
        $main_model = new \App\Models\MainModel();
        $data['content'] = $main_model->get_content('content_network_community');
        
        $zainlayout = new \App\Libraries\Zainlayout();
        return $zainlayout->render('network_community', $data);
	}
    
}
