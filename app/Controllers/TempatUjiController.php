<?php 
namespace App\Controllers;

use App\Models\TempatUjiModel;
use Config\Services;

class TempatUjiController extends BaseController
{
    public function index()
    {
        $zainlayout = new \App\Libraries\Zainlayout();
        $data=array();
        return $zainlayout->render('tempat_uji_kompetensi/index',$data,'view');
    }
    
    public function ajaxList()
    {
        $request = Services::request();
        $datatable = new TempatUjiModel($request);

        if ($request->getMethod(true) === 'POST') {
            $lists = $datatable->getDatatables();
            $data = [];
            $no = $request->getPost('start');

            foreach ($lists as $list) {
                $no++;
                $row = [];
                $row[] = $no;
                $row[] = $list->kode;
                $row[] = $list->nama_tuk;
                $row[] = $list->alamat;
                $data[] = $row;
            }

            $output = [
                'draw' => $request->getPost('draw'),
                'recordsTotal' => $datatable->countAll(),
                'recordsFiltered' => $datatable->countFiltered(),
                'data' => $data
            ];

            echo json_encode($output);
        }
    }
}