<?php

namespace App\Controllers;

use App\Models\Manage_user_model;
use Config\Services;
use CodeIgniter\HTTP\ResponseInterface;


class Manage_user extends BaseController
{

    public function index()
    {
        $session = \Config\Services::session();

        if (!(session()->get('userAdmin')) == '1') {
            // If authentication fails, set flash message and redirect back
            $session->setFlashdata('danger', 'Halaman Khusus Admin');
            return redirect()->to(base_url()); // Redirect to your desired page after logout
        }

        $data = array();

        // Load model
        $main_model = new \App\Models\MainModel();
        // $data['news'] = $main_model->get_news_front();
        $data['slider'] = $main_model->get_slider_front();
        $data['image']  = $data['slider'][0]['images'][0]['path'];
        $data['video'] = $main_model->get_video_front();
        // Load library layout
        // print_r($data['slider']);
        // exit;
        $zainlayout = new \App\Libraries\Zainlayout();
        return $zainlayout->render('manage_user', $data);
    }

    public function ajaxList()
    {
        $request = Services::request();
        $datatable = new Manage_user_model($request);

        if ($request->getMethod(true) === 'POST') {
            $lists = $datatable->getDatatables();
            $data = [];
            $no = $request->getPost('start');

            foreach ($lists as $list) {

                $tombol = "";
                $no++;
                $row = [];
                $row[] = $list->userId;
                $row[] = $list->userFullName;
                $row[] = $list->userEmail;
                // $row[] = $list->userPassword;
                // $row[] = $list->userSaved;
                // $row[] = $list->userStatus;
                // $row[] = $list->userAdmin;
                // $row[] = $list->userAdminAccess;
                // $row[] = $list->alamat;
                $row[] = $list->asal_instansi;
                $row[] = $list->skema;
                $row[] = $list->no_whatsapp;
                // $row[] = "huy";
                // $row[] = $list->agambar_ijazah;
                // $row[] = $list->agambar_pasfoto;
                // $row[] = $list->agambar_ktpkk;
                // $row[] = $list->agambar_pengalaman;
                // $row[] = $list->agambar_porto;
                // $row[] = $list->agambar_bktibayar;
                // $row[] = $list->agambar_ttd;

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

    public function countUserAdmin3()
    {
        // Load the model
        $model = new Manage_user_model($this->request);

        // Call the method to count users with userAdmin = 3
        $count = $model->where('userAdmin', 3)->countAllResults();

        // Prepare JSON response
        $response = [
            'status' => 'success',
            'count' => $count
        ];

        // Return JSON response
        return $this->response->setJSON($response);
    }
}
