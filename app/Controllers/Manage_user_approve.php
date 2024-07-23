<?php

namespace App\Controllers;

use App\Models\Manage_user_approve_model;
use CodeIgniter\Controller;
use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;
use Config\Services;

class Manage_user_approve extends Controller
{
    protected $request;

    public function __construct()
    {
        $this->request = Services::request();
    }

    public function index()
    {
        $session = session();

        if (!$session->get('userAdmin') == '1') {
            // If authentication fails, set flash message and redirect back
            $session->setFlashdata('danger', 'Halaman Khusus Admin');
            return redirect()->to(base_url()); // Redirect to your desired page after logout
        }

        $data = [];

        // Load model
        $main_model = new \App\Models\MainModel();
        $data['slider'] = $main_model->get_slider_front();
        $data['image'] = $data['slider'][0]['images'][0]['path'];
        $data['video'] = $main_model->get_video_front();

        // Load library layout
        $zainlayout = new \App\Libraries\Zainlayout();
        return $zainlayout->render('manage_user_approve', $data);
    }

    public function ajaxList()
    {
        $datatable = new Manage_user_approve_model($this->request);

        if ($this->request->getMethod(true) === 'POST') {
            $lists = $datatable->getDatatables();
            $data = [];
            $no = $this->request->getPost('start');

            foreach ($lists as $list) {
                $approve_link = '<a href="' . site_url('Manage_user_approve/approveAction/' . $list->userId) . '" class="btn btn-primary btn-sm text-white"><i class="fas fa-check"></i></a>';
                $decline_link = '<a href="' . site_url('Manage_user_approve/declineAction/' . $list->userId) . '" class="btn btn-danger btn-sm text-white"><i class="fas fa-times"></i></a>';

                $row = [
                    ++$no,
                    $list->userFullName,
                    $list->asal_instansi,
                    $list->skema,
                    $approve_link . " " . $decline_link
                ];
                $data[] = $row;
            }

            $output = [
                'draw' => $this->request->getPost('draw'),
                'recordsTotal' => $datatable->countAll(),
                'recordsFiltered' => $datatable->countFiltered(),
                'data' => $data
            ];

            return $this->response->setJSON($output);
        } else {
            return $this->response->setStatusCode(ResponseInterface::HTTP_FORBIDDEN, 'The action you requested is not allowed.');
        }
    }

    public function approveAction($userId = null)
    {
        // Validasi $userId
        if (!$userId) {
            return redirect()->back()->with('error', 'User ID is required.');
        }

        // Ubah userAdmin menjadi 0 (approve)
        $userModel = new Manage_user_approve_model($this->request);
        $userModel->updateUserAdmin($userId, 0); // Assuming this method exists in your model

        return redirect()->back()->with('success', 'User approved successfully.');
    }

    public function declineAction($userId = null)
    {
        // Validasi $userId
        if (!$userId) {
            return redirect()->back()->with('error', 'User ID is required.');
        }

        // Ubah userAdmin menjadi 4 (decline)
        $userModel = new Manage_user_approve_model($this->request);
        $userModel->updateUserAdmin($userId, 4); // Assuming this method exists in your model

        return redirect()->back()->with('success', 'User declined successfully.');
    }
}
