<?php namespace App\Controllers;

class Sertifikasi extends BaseController
{
	public function index()
	{
		$zainlayout = new \App\Libraries\Zainlayout();
		$data = array();
		return $zainlayout->render('sertifikasi',$data,'view');
    }

	public function detail($id)
	{
		$zainlayout = new \App\Libraries\Zainlayout();
		$data=array();
		return $zainlayout->render('sertifikasi/sertifikasi'.$id.'',$data,'view');
	}
}