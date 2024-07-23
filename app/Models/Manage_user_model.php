<?php

namespace App\Models;

use CodeIgniter\Model;
use CodeIgniter\HTTP\RequestInterface;


class Manage_user_model extends Model
{
    protected $table = 'user';
    protected $column_order = ['userId'];
    protected $column_search = ['userFullName', 'userEmail', 'skema'];
    protected $order = ['userFullName' => 'ASC'];
    protected $request;
    protected $db;
    protected $dt;
    protected $allowedFields = [
        'userId', 'userFullName', 'userEmail', 'userPassword', 'userSaved',
        'userStatus', 'userAdmin', 'userAdminAccess', 'alamat', 'asal_instansi',
        'skema', 'no_whatsapp', 'agambar_ijazah', 'agambar_pasfoto',
        'agambar_ktpkk', 'agambar_pengalaman', 'agambar_porto',
        'agambar_bktibayar', 'agambar_ttd'
    ];


    public function __construct(RequestInterface $request)
    {
        parent::__construct();
        $this->db = db_connect();
        $this->request = $request;
        $this->dt = $this->db->table($this->table);
    }

    private function getDatatablesQuery()
    {
        $i = 0;
        foreach ($this->column_search as $item) {
            if ($this->request->getPost('search')['value']) {
                if ($i === 0) {
                    $this->dt->groupStart();
                    $this->dt->like($item, $this->request->getPost('search')['value']);
                } else {
                    $this->dt->orLike($item, $this->request->getPost('search')['value']);
                }
                if (count($this->column_search) - 1 == $i)
                    $this->dt->groupEnd();
            }
            $i++;
        }

        // Add condition for userAdmin = 0 or userAdmin = 1
        $this->dt->where('userAdmin', 0);
        $this->dt->orWhere('userAdmin', 1);

        if ($this->request->getPost('order')) {
            $this->dt->orderBy($this->column_order[$this->request->getPost('order')['0']['column']], $this->request->getPost('order')['0']['dir']);
        } else if (isset($this->order)) {
            $order = $this->order;
            $this->dt->orderBy(key($order), $order[key($order)]);
        }
    }

    public function getDatatables()
    {
        $this->getDatatablesQuery();
        if ($this->request->getPost('length') != -1)
            $this->dt->limit($this->request->getPost('length'), $this->request->getPost('start'));
        $query = $this->dt->get();
        return $query->getResult();
    }

    public function countFiltered()
    {
        $this->getDatatablesQuery();
        return $this->dt->countAllResults();
    }

    public function countAll()
    {
        $tbl_storage = $this->db->table($this->table);
        return $tbl_storage->countAllResults();
    }
    public function countUserAdmin3()
    {
        return $this->where('userAdmin', 3)->countAllResults();
    }
}
