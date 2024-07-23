<?php namespace App\Controllers;

class Profil extends BaseController
{
	public function index()
	{
		$data = array();
        
        // Load model
        $main_model = new \App\Models\MainModel();
        $data['content'] = $main_model->get_content('content_about_lsp');
		$zainlayout = new \App\Libraries\Zainlayout();
		return $zainlayout->render('profil', $data);
	}
	
	public function visi()
	{
		$data = array();
        
        // Load model
        $main_model = new \App\Models\MainModel();
        $data['content'] = $main_model->get_content('content_visi_lsp');
		$zainlayout = new \App\Libraries\Zainlayout();
		return $zainlayout->render('visi', $data);

	}

	public function logo()
	{
		$zaincode = new \App\Libraries\Zaincode();
		$zainlayout = new \App\Libraries\Zainlayout();
		$data =array();
		return $zainlayout->render('logo',$data,'view');
	}

	public function struktur()
	{
		$data = array();
        // Load model
        $main_model = new \App\Models\MainModel();
		$data['content'] = $main_model->get_organisasi_all();
		$zainlayout = new \App\Libraries\Zainlayout();
		return $zainlayout->render('struktur', $data);
	}
}