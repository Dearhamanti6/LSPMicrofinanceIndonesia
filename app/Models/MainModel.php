<?php namespace App\Models;

use CodeIgniter\Model;

class MainModel extends Model {
    
    private $dbc;
    private $url_image;
    private $url_pdf;
    
    public function __construct() {
        parent::__construct();
        $this->dbc = \Config\Database::connect();
        $this->url_image = 'http://cms.lspmicrofinanceindonesia.co.id/uploads/library/';
        // $this->url_image = 'http://cdn.neo.bmc.or.id/';
        $this->url_pdf = 'http://cms.lspmicrofinanceindonesia.co.id/uploads';
    }
    
    public function get_slider_front() {
        $return = array();
        
        // Get News
        $builder = $this->dbc->table('slider');
        $builder->orderBy('sldrId', 'DESC');
        $query   = $builder->getWhere(['sldrActive' => 1]);
        foreach ($query->getResult() as $row) {
            $return[] = json_decode(json_encode($row), TRUE);
        }
        
        // Get Image
        if(!empty($return)) {
            foreach($return as $k => $v) {
                $return_image = array();
                $builder = $this->dbc->table('arsip_images');
                $query   = $builder->getWhere(['arimId' => $v['sldrArimId']]);
                foreach ($query->getResult() as $row) {
                    $row->path = $this->url_image . implode('/', str_split($row->arimId)) . '/' . $row->arimId . '.' . $row->arimFileType;
                    $return_image[] = json_decode(json_encode($row), TRUE);
                }
                $return[$k]['images'] = $return_image;
            }
        }
        
        return $return;
    }
    
    public function get_news_front() {
        $return = array();
        
        $zaincode = new \App\Libraries\Zaincode();
        
        // Get News
        $builder = $this->dbc->table('news');
        $builder->orderBy('newsPublishTime', 'DESC');
        $query   = $builder->getWhere(['newsStatus' => 1], 6);
        foreach ($query->getResult() as $row) {
            $row->timeago = $zaincode->time_elapsed_string($row->newsPublishTime);
            $return[] = json_decode(json_encode($row), TRUE);
        }
        
        // Get Image
        if(!empty($return)) {
            foreach($return as $k => $v) {
                $return_image = array();
                $builder = $this->dbc->table('news_images');
                $builder->join('arsip_images', 'arsip_images.arimId = news_images.neimArimId');
                $query   = $builder->getWhere(['neimNewsId' => $v['newsId']]);
                foreach ($query->getResult() as $row) {
                    $row->path = $this->url_image . implode('/', str_split($row->arimId)) . '/' . $row->arimId . '_512x351.' . $row->arimFileType;
                    $return_image[] = json_decode(json_encode($row), TRUE);
                }
                $return[$k]['images'] = $return_image;
            }
        }
        
        return $return;
    }
    
    public function get_video_front() {
        $return = array();
        
        $zaincode = new \App\Libraries\Zaincode();
        
        // Get News
        $builder = $this->dbc->table('live_stream');
        $builder->orderBy('lvstId', 'DESC');
        $query   = $builder->getWhere(['lvstActive' => 1], 6);
        foreach ($query->getResult() as $row) {
            $row->timeago = $zaincode->time_elapsed_string($row->lvstSaved);
            $return[] = json_decode(json_encode($row), TRUE);
        }
        
        // Get Image
        if(!empty($return)) {
            foreach($return as $k => $v) {
                $return_image = array();
                $builder = $this->dbc->table('arsip_images');
                $query   = $builder->getWhere(['arimId' => $v['lvstArimId']]);
                foreach ($query->getResult() as $row) {
                    $row->path = $this->url_image . implode('/', str_split($row->arimId)) . '/' . $row->arimId . '_512x351.' . $row->arimFileType;
                    $return_image[] = json_decode(json_encode($row), TRUE);
                }
                $return[$k]['images'] = $return_image;
            }
        }
        
        return $return;
    }
    
    public function get_content($table = '') {
        $return = array();
        
        // Get News
        $builder = $this->dbc->table($table);
        $query   = $builder->getWhere(['contentId' => 1]);
        foreach ($query->getResult() as $row) {
            $return = json_decode(json_encode($row), TRUE);
        }
        
        return $return;
    }
    
    public function get_news_all() {
        $return = array();
        
        $zaincode = new \App\Libraries\Zaincode();
        
        // Get News
        $builder = $this->dbc->table('news');
        $builder->orderBy('newsPublishTime', 'DESC');
        $query   = $builder->getWhere(['newsStatus' => 1]);
        foreach ($query->getResult() as $row) {
            $row->timeago = $zaincode->time_elapsed_string($row->newsPublishTime);
            $return[] = json_decode(json_encode($row), TRUE);
        }
        
        // Get Image
        if(!empty($return)) {
            foreach($return as $k => $v) {
                $return_image = array();
                $builder = $this->dbc->table('news_images');
                $builder->join('arsip_images', 'arsip_images.arimId = news_images.neimArimId');
                $query   = $builder->getWhere(['neimNewsId' => $v['newsId']]);
                foreach ($query->getResult() as $row) {
                    $row->path = $this->url_image . implode('/', str_split($row->arimId)) . '/' . $row->arimId . '_512x351.' . $row->arimFileType;
                    $return_image[] = json_decode(json_encode($row), TRUE);
                }
                $return[$k]['images'] = $return_image;
            }
        }
        
        return $return;
    }

    public function get_organisasi_all() {
        $return = array();
        
        $zaincode = new \App\Libraries\Zaincode();
        
        // Get News
        $builder = $this->dbc->table('content_anggota');
        $builder->orderBy('anggotaDate', 'ASC');
        $query   = $builder->getWhere(['anggotaStatus' => 1]);
        foreach ($query->getResult() as $row) {
            $row->timeago = $zaincode->time_elapsed_string($row->anggotaDate);
            $return[] = json_decode(json_encode($row), TRUE);
        }
        
        // Get Image
        if(!empty($return)) {
            foreach($return as $k => $v) {
                $return_image = array();
                $builder = $this->dbc->table('content_anggota_images');
                $builder->join('arsip_images', 'arsip_images.arimId = content_anggota_images.anggimArimId');
                $query   = $builder->getWhere(['anggimAnggotaId' => $v['anggotaId']]);
                foreach ($query->getResult() as $row) {
                    $row->path = $this->url_image . implode('/', str_split($row->arimId)) . '/' . $row->arimId . '_840x576.' . $row->arimFileType;
                    $return_image[] = json_decode(json_encode($row), TRUE);
                }
                $return[$k]['images'] = $return_image;
            }
        }
        
        return $return;
    }

    // Magazine
    public function get_magazine_all() {
        $return = array();
        
        $zaincode = new \App\Libraries\Zaincode();
        
        // Get News
        $builder = $this->dbc->table('magazine');
        $builder->orderBy('magazinePublishTime', 'DESC');
        $query   = $builder->getWhere(['magazineStatus' => 1]);
        foreach ($query->getResult() as $row) {
            $row->timeago = $zaincode->time_elapsed_string($row->magazinePublishTime);
            $return[] = json_decode(json_encode($row), TRUE);
        }
        
        // Get Image
        if(!empty($return)) {
            foreach($return as $k => $v) {
                $return_image = array();
                $builder = $this->dbc->table('magazine_images');
                $builder->join('arsip_images', 'arsip_images.arimId = magazine_images.magzimArimId');
                $query   = $builder->getWhere(['magzimMagazineId' => $v['magazineId']]);
                foreach ($query->getResult() as $row) {
                    $row->path = $this->url_image . implode('/', str_split($row->arimId)) . '/' . $row->arimId . '_512x351.' . $row->arimFileType;
                    $return_image[] = json_decode(json_encode($row), TRUE);
                }
                $return[$k]['images'] = $return_image;
            }
        }
        
        return $return;
    }
    
    public function get_conv_all() {
        $return = array();
        
        $zaincode = new \App\Libraries\Zaincode();
        
        // Get News
        $builder = $this->dbc->table('converence');
        $builder->orderBy('convPublishTime', 'DESC');
        $query   = $builder->getWhere(['convStatus' => 1]);
        foreach ($query->getResult() as $row) {
            $row->timeago = $zaincode->time_elapsed_string($row->convPublishTime);
            $return[] = json_decode(json_encode($row), TRUE);
        }
        
        // Get Image
        if(!empty($return)) {
            foreach($return as $k => $v) {
                $return_image = array();
                $builder = $this->dbc->table('converence_images');
                $builder->join('arsip_images', 'arsip_images.arimId = converence_images.coimArimId');
                $query   = $builder->getWhere(['coimConvId' => $v['convId']]);
                foreach ($query->getResult() as $row) {
                    $row->path = $this->url_image . implode('/', str_split($row->arimId)) . '/' . $row->arimId . '_512x351.' . $row->arimFileType;
                    $return_image[] = json_decode(json_encode($row), TRUE);
                }
                $return[$k]['images'] = $return_image;
            }
        }
        
        return $return;
    }
    
    public function get_video_all() {
        $return = array();
        
        $zaincode = new \App\Libraries\Zaincode();
        
        // Get News
        $builder = $this->dbc->table('live_stream');
        $builder->orderBy('lvstId', 'DESC');
        $query   = $builder->getWhere(['lvstActive' => 1]);
        foreach ($query->getResult() as $row) {
            $row->timeago = $zaincode->time_elapsed_string($row->lvstSaved);
            $return[] = json_decode(json_encode($row), TRUE);
        }
        
        // Get Image
        if(!empty($return)) {
            foreach($return as $k => $v) {
                $return_image = array();
                $builder = $this->dbc->table('arsip_images');
                $query   = $builder->getWhere(['arimId' => $v['lvstArimId']]);
                foreach ($query->getResult() as $row) {
                    $row->path = $this->url_image . implode('/', str_split($row->arimId)) . '/' . $row->arimId . '_512x351.' . $row->arimFileType;
                    $return_image[] = json_decode(json_encode($row), TRUE);
                }
                $return[$k]['images'] = $return_image;
            }
        }
        
        return $return;
    }
    
    public function get_news_detail($id = '') {
        $return = array();
        
        $zaincode = new \App\Libraries\Zaincode();
        
        // Get News
        $builder = $this->dbc->table('news');
        $builder->orderBy('newsPublishTime', 'DESC');
        $query   = $builder->getWhere(['newsStatus' => 1, 'newsId' => $id]);
        foreach ($query->getResult() as $row) {
            $row->timeago = $zaincode->time_elapsed_string($row->newsPublishTime);
            $return[] = json_decode(json_encode($row), TRUE);
        }
        
        // Get Image
        if(!empty($return)) {
            foreach($return as $k => $v) {
                $return_image = array();
                $builder = $this->dbc->table('news_images');
                $builder->join('arsip_images', 'arsip_images.arimId = news_images.neimArimId');
                $query   = $builder->getWhere(['neimNewsId' => $v['newsId']]);
                foreach ($query->getResult() as $row) {
                    $row->path = $this->url_image . implode('/', str_split($row->arimId)) . '/' . $row->arimId . '.' . $row->arimFileType;
                    // $row->path = $this->url_image . implode('/', str_split($row->arimId)) . '/' . $row->arimId . '_512x351.' . $row->arimFileType;
                    $return_image[] = json_decode(json_encode($row), TRUE);
                }
                $return[$k]['images'] = $return_image;
                $return[$k]['publish_format'] = $zaincode->indonesian_date($v['newsPublishTime']); 
            }
        }
        
        return $return;
    }

    // magazine detail
    public function get_magazine_detail($id = '') {
        $return = array();
        
        $zaincode = new \App\Libraries\Zaincode();
        
        // Get News
        $builder = $this->dbc->table('magazine');
        $builder->orderBy('magazinePublishTime', 'DESC');
        $query   = $builder->getWhere(['magazineStatus' => 1, 'magazineId' => $id]);
        foreach ($query->getResult() as $row) {
            $row->timeago = $zaincode->time_elapsed_string($row->magazinePublishTime);
            $row->path = $this->url_pdf.$row->magazinePath;
            $return[] = json_decode(json_encode($row), TRUE);
        }
        
        // Get Image
        if(!empty($return)) {
            
            foreach($return as $k => $v) {
                $return_image = array();
                $builder = $this->dbc->table('magazine_images');
                $builder->join('arsip_images', 'arsip_images.arimId = magazine_images.magzimArimId');
                $query   = $builder->getWhere(['magzimMagazineId' => $v['magazineId']]);
                foreach ($query->getResult() as $row) {
                    $row->path = $this->url_image . implode('/', str_split($row->arimId)) . '/' . $row->arimId . '_512x351.' . $row->arimFileType;
                    $return_image[] = json_decode(json_encode($row), TRUE);
                }
                $return[$k]['images'] = $return_image;
                $return[$k]['publish_format'] = $zaincode->indonesian_date($v['magazinePublishTime']); 
            }
        }
        
        return $return;
    }
    
    public function get_conv_detail($id = '') {
        $return = array();
        
        $zaincode = new \App\Libraries\Zaincode();
        
        // Get News
        $builder = $this->dbc->table('converence');
        $builder->orderBy('convPublishTime', 'DESC');
        $query   = $builder->getWhere(['convStatus' => 1, 'convId' => $id]);
        foreach ($query->getResult() as $row) {
            $row->timeago = $zaincode->time_elapsed_string($row->convPublishTime);
            $return[] = json_decode(json_encode($row), TRUE);
        }
        
        // Get Image
        if(!empty($return)) {
            foreach($return as $k => $v) {
                $return_image = array();
                $builder = $this->dbc->table('converence_images');
                $builder->join('arsip_images', 'arsip_images.arimId = converence_images.coimArimId');
                $query   = $builder->getWhere(['coimConvId' => $v['convId']]);
                foreach ($query->getResult() as $row) {
                    $row->path = $this->url_image . implode('/', str_split($row->arimId)) . '/' . $row->arimId . '_512x351.' . $row->arimFileType;
                    $return_image[] = json_decode(json_encode($row), TRUE);
                }
                $return[$k]['images'] = $return_image;
                $return[$k]['publish_format'] = $zaincode->indonesian_date($v['convPublishTime']); 
            }
        }
        
        return $return;
    }
    
    public function get_video_detail($id = '') {
        $return = array();
        
        $zaincode = new \App\Libraries\Zaincode();
        
        // Get News
        $builder = $this->dbc->table('live_stream');
        $builder->orderBy('lvstId', 'DESC');
        $query   = $builder->getWhere(['lvstActive' => 1, 'lvstId' => $id]);
        foreach ($query->getResult() as $row) {
            $row->timeago = $zaincode->time_elapsed_string($row->lvstSaved);
            $return[] = json_decode(json_encode($row), TRUE);
        }
        
        // Get Image
        if(!empty($return)) {
            foreach($return as $k => $v) {
                $return_image = array();
                $builder = $this->dbc->table('arsip_images');
                $query   = $builder->getWhere(['arimId' => $v['lvstArimId']]);
                foreach ($query->getResult() as $row) {
                    $row->path = $this->url_image . implode('/', str_split($row->arimId)) . '/' . $row->arimId . '_512x351.' . $row->arimFileType;
                    $return_image[] = json_decode(json_encode($row), TRUE);
                }
                $return[$k]['images'] = $return_image;
                $return[$k]['publish_format'] = $zaincode->indonesian_date($v['lvstSaved']); 
            }
        }
        
        return $return;
    }
    
}