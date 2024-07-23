<?php

namespace App\Controllers;

use App\Models\UserModel; // Ensure this path is correct relative to your namespace

class Register extends BaseController
{

    public function index()
    {
        $session = \Config\Services::session();

        if (session()->get('userId')) {
            // If authentication fails, set flash message and redirect back
            $session->setFlashdata('danger', 'Kamu Sudah terdaftar');
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
        return $zainlayout->render('register', $data);
    }

    public function auth()
    {

        // Get the request and session services
        $request = \Config\Services::request();
        $session = \Config\Services::session();

        // Retrieve input data
        $email = $request->getPost('email');
        $password = md5(md5($request->getPost('password')));

        // Load the database service
        $db = \Config\Database::connect();

        // Check if the input data matches any record in the database
        $builder = $db->table('user');
        $builder->where('userEmail', $email);
        $builder->where('userPassword', $password);

        // Get the number of matching rows
        $cek_data = $builder->countAllResults(false);
        echo "Number of matching rows: " . $cek_data;

        if ($cek_data > 0) {
            $row = $builder->get()->getRow();

            // Set session data
            $new_session = [
                'userId' => $row->userId,
                'userFullName' => $row->userFullName,
                'userEmail' => $row->userEmail,
                'userAdmin' => $row->userAdmin
            ];
            $session->set($new_session);
            // If authentication fails, set flash message and redirect back
            $session->setFlashdata('success', 'Berhasil Login');
            return redirect()->back();


            return redirect()->back();
        } else {
            // If authentication fails, set flash message and redirect back
            $session->setFlashdata('danger', 'E-mail / Password salah');
            return redirect()->back();
        }
    }

    public function logout()
    {
        // Get the session service
        $session = \Config\Services::session();

        // Destroy session data
        $session->destroy();

        // Set flash message for successful logout
        $session->setFlashdata('success', 'Berhasil Logout');

        // Redirect to home or login page
        return redirect()->to(base_url()); // Redirect to your desired page after logout
    }

    public function add_user()
    {
        function getRandomName($file)
        {
            // Generate a random string (you can adjust the length as needed)
            $randomString = md5(uniqid(rand(), true));

            // Get the original file extension
            $extension = pathinfo($file, PATHINFO_EXTENSION);

            // Combine random string and original extension
            $newFileName = $randomString . '.' . $extension;

            return $newFileName;
        }
        $session = session();

        // Proses upload file
        $agambar_ijazah = $this->request->getFile('agambar_ijazah');
        $agambar_pasfoto = $this->request->getFile('agambar_pasfoto');
        $agambar_ktpkk = $this->request->getFile('agambar_ktpkk');
        $agambar_pengalaman = $this->request->getFile('agambar_pengalaman');
        $agambar_porto = $this->request->getFile('agambar_porto');
        $agambar_bktibayar = $this->request->getFile('agambar_bktibayar');
        $agambar_ttd = $this->request->getFile('agambar_ttd');

        // Pindahkan file ke folder yang ditentukan
        $path = WRITEPATH . 'uploads'; // Folder uploads yang ada di dalam folder writable

        // Buat direktori jika belum ada
        if (!is_dir($path)) {
            mkdir($path, 0777, true);
        }

        // Generate nama file yang unik
        $nama_agambar_ijazah = $agambar_ijazah->getRandomName();
        $nama_agambar_pasfoto = $agambar_pasfoto->getRandomName();
        $nama_agambar_ktpkk = $agambar_ktpkk->getRandomName();
        $nama_agambar_pengalaman = $agambar_pengalaman->getRandomName();
        $nama_agambar_porto = $agambar_porto->getRandomName();
        $nama_agambar_bktibayar = $agambar_bktibayar->getRandomName();
        $nama_agambar_ttd = $agambar_ttd->getRandomName();

        // Pindahkan file ke folder yang ditentukan
        $agambar_ijazah->move($path, $nama_agambar_ijazah);
        $agambar_pasfoto->move($path, $nama_agambar_pasfoto);
        $agambar_ktpkk->move($path, $nama_agambar_ktpkk);
        $agambar_pengalaman->move($path, $nama_agambar_pengalaman);
        $agambar_porto->move($path, $nama_agambar_porto);
        $agambar_bktibayar->move($path, $nama_agambar_bktibayar);
        $agambar_ttd->move($path, $nama_agambar_ttd);

        // Proses penyimpanan data ke dalam database
        $userModel = new UserModel();

        $data = [
            'userFullName' => $this->request->getPost('nama_lengkap'),
            'userEmail' => $this->request->getPost('email'),
            'userPassword' => md5(md5($this->request->getPost('password'))),
            'alamat' => $this->request->getPost('alamat'),
            'asal_instansi' => $this->request->getPost('asal_instansi'),
            'skema' => $this->request->getPost('skema'),
            'no_whatsapp' => $this->request->getPost('no_watsap'),
            'agambar_ijazah' => $nama_agambar_ijazah,
            'agambar_pasfoto' => $nama_agambar_pasfoto,
            'agambar_ktpkk' => $nama_agambar_ktpkk,
            'agambar_pengalaman' => $nama_agambar_pengalaman,
            'userAdmin' => '3',
            'agambar_porto' => $nama_agambar_porto,
            'agambar_bktibayar' => $nama_agambar_bktibayar,
            'agambar_ttd' => $nama_agambar_ttd,
            // tambahkan kolom lain yang sesuai dengan tabel user
        ];

        // Simpan data ke dalam tabel user
        $userModel->insert($data);

        if ($userModel->insertID()) {
            // Set flash message for successful insertion
            $session->setFlashdata('success', 'Data Telah Tersimpan..');
        } else {
            $session->setFlashdata('danger', 'Pendaftaran gagal, coba lagi..');
        }

        // Redirect ke halaman lain atau tampilkan pesan sukses
        return redirect()->to(base_url()); // Redirect to your desired page after logout
    }
}
