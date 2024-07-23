<?php namespace App\Controllers;

class Contact extends BaseController
{
	public function index()
	{
		$zainlayout = new \App\Libraries\Zainlayout();
		return $zainlayout->render('contact');
    }
}