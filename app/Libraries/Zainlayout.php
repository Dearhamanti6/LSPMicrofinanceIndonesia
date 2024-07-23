<?php
namespace App\Libraries;

class Zainlayout {
    
    public function render($file_view = '', $param_data = array()) {
        $view = \Config\Services::renderer();
        
        $data = array();
        $data['content'] = $view->setData($param_data)->render($file_view);
        
        return $view->setData($data)->render('layout');
    }
    
}