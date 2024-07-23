<section class="" style="background: url('https://bri-institute.ac.id/wp-content/uploads/2020/04/Focus-group-Discussion-BRI-Institute-dan-Anggota-Aftech-2.jpeg')no-repeat center center / cover">
    <div class="section-sm text-white section-header" style="background-color: #111d50;">
        <div class="row justify-content-left px-5 pt-5">
            <div class="col-md-8 col-lg-7">
                <div class="page-header-content text-start">
                    <h1>Struktur Organisasi</h1>
                    <nav aria-label="breadcrumb" class="d-flex justify-content-left">
                        <ol class="breadcrumb breadcrumb-transparent breadcrumb-text-light mb-0">
                            <li class="breadcrumb-item"><a href="<?= base_url() ?>/home">Home</a></li>
                            <li class="breadcrumb-item"><a href="#">Pages</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Struktur Organisasi</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <hr style="border-color: #c3212b; border-width: 5px;margin: 0 0 0 0">
    </div>
</section>
<section class="section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-9 col-lg-8">
                <div class="section-heading text-center">
                    <h2>LSP Microfinance Indonesia</h2>
                    <p class="lead">Struktur Organisasi</p>
                </div>
            </div>
        </div>
        <div class="feature-tabs-wrap">
            <ul class="nav nav-tabs mb-3 border-bottom-0 feature-tabs" data-tabs="tabs">
                <li class="nav-item">
                    <a class="nav-link d-flex align-items-center active" href="#feature-tab-1" data-toggle="tab">
                        <h6 class="mb-0">Struktur Organisasi</h6>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link d-flex align-items-center" href="#feature-tab-2" data-toggle="tab">
                        <h6 class="mb-0">Employee</h6>
                    </a>
                </li>
            </ul>
            <div class="tab-content feature-tab-content">
                <div class="tab-pane active" id="feature-tab-1">
                    <div class="col-md-12">
                        <!--<img src="/public/assets/image/struktur_1.png" alt="">    -->
                        <img src="<?= base_url() ?>/public/assets/image/struktur.jpg" alt="">
                    </div>
                </div>
                <div class="tab-pane" id="feature-tab-2">
                    <div class="row">
                        <?php if (!empty($content)) : ?>
                            <?php $no = 1; ?>
                            <?php foreach ($content as $v_content) : ?>
                                <div class="col-lg-4 col-md-6" style="padding-bottom: 25px;">
                                    <a href="#" data-toggle="modal" data-target="#exampleModalCenter<?= $no ?>">
                                        <div class="card text-center single-pricing-pack">
                                            <div class="mt-3">
                                                <img src="<?= $v_content['images'][0]['path'] ?>" alt="pricing img" class="img-fluid">
                                            </div>
                                            <div class="card-body">
                                                <ul class="list-unstyled text-sm mb-4 pricing-feature-list">
                                                    <h4><?= $v_content['anggotaPosition'] ?></h4>
                                                    <li>
                                                        <h4><?= $v_content['anggotaName'] ?></h4>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="modal fade bd-example-modal-lg" id="exampleModalCenter<?= $no++ ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <img src="<?= $v_content['images'][0]['path'] ?>" alt="pricing img" class="img-fluid">
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="box-grid-inner">
                                                            <div class="boxName">
                                                                <h3><?= $v_content['anggotaName'] ?></h3>
                                                                <p><?= $v_content['anggotaPosition'] ?></p>
                                                            </div>
                                                            <?= $v_content['anggotaDetail'] ?>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>