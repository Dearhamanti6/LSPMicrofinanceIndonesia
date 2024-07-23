<?php

namespace App\Controllers;

use App\Models\AsesorKompetensiModel;
use Config\Services;

class AsesorKompetensiController extends BaseController
{
    public function index()
    {
        $zainlayout = new \App\Libraries\Zainlayout();
        $data = array();
        return $zainlayout->render('asesor_kompetensi/index', $data, 'view');
    }

    public function ajaxList()
    {
        $request = Services::request();
        $datatable = new AsesorKompetensiModel($request);

        if ($request->getMethod(true) === 'POST') {
            $lists = $datatable->getDatatables();
            $data = [];
            $no = $request->getPost('start');

            foreach ($lists as $list) {
                $no++;
                $row = [];
                $row[] = $no;
                $row[] = $list->nama_asesor;
                $row[] = $list->no_registrasi;
                $data[] = $row;
            }

            $output = [
                'draw' => $request->getPost('draw'),
                'recordsTotal' => $datatable->countAll(),
                'recordsFiltered' => $datatable->countFiltered(),
                'data' => $data
            ];

            return $this->response->setJSON($output);
        } else {
            return $this->response->setStatusCode(ResponseInterface::HTTP_FORBIDDEN, 'The action you requested is not allowed.');
        }
    }
}
