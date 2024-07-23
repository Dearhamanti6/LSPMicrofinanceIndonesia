<?php 
namespace App\Controllers;

use App\Models\PemegangSertifikatModel;
use Config\Services;

class PemegangSertifikatController extends BaseController
{
    public function index()
    {
        $zainlayout = new \App\Libraries\Zainlayout();
        $data=array();
        return $zainlayout->render('pemegang_sertifikat/index',$data,'view');
    }
    
    public function ajaxList()
    {
        $request = Services::request();
        $datatable = new PemegangSertifikatModel($request);

        if ($request->getMethod(true) === 'POST') {
            $lists = $datatable->getDatatables();
            $data = [];
            $no = $request->getPost('start');

            foreach ($lists as $list) {
                $no++;
                $row = [];
                $row[] = $no;
                $row[] = $list->nama_pemegang_sertifikat;
                $row[] = $list->nama_instansi;
                $row[] = $list->nama_skema;
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