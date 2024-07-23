<?php namespace App\Controllers;

class Product extends BaseController {

    public function research() {
        $data = array();
        
        // Load model
        $main_model = new \App\Models\MainModel();
        $data['content'] = $main_model->get_content('content_product_research');
        
        $zainlayout = new \App\Libraries\Zainlayout();
        return $zainlayout->render('product_research', $data);
	}
    
    public function technical() {
        $data = array();
        
        // Load model
        $main_model = new \App\Models\MainModel();
        $data['content'] = $main_model->get_content('content_product_technical');
        
        $zainlayout = new \App\Libraries\Zainlayout();
        return $zainlayout->render('product_technical', $data);
	}
    
    public function consultancy() {
        $data = array();
        
        // Load model
        $main_model = new \App\Models\MainModel();
        $data['content'] = $main_model->get_content('content_product_consultancy');
        
        $zainlayout = new \App\Libraries\Zainlayout();
        return $zainlayout->render('product_consultancy', $data);
	}

}
