<!--hero section start-->
<section class="section section-xl section-header text-white hero-tab-slider gradient-overly-right-color" style="background: url('<?= $image ?>')no-repeat center center / cover">
    <div class="container">
        <div class="row">
            <div class="owl-carousel owl-theme custom-indicator-slider">
                <div class="item">
                    <div class="col-md-8 col-lg-7 col-12">
                        <div class="hero-content-wrap">
                            <h1 class="display-2">LSP Microfinance Indonesia</h1>
                            <p class="lead">Lembaga sertifikasi profesi yang memperoleh lisensi dari Badan Nasional Sertifikasi Profesi (BNSP) yang merupakan LSP Level 3.</p>
                            <ul class="list-unstyled tech-feature-list text-white">
                                <li class="py-1"><span class="ti-control-forward mr-2"></span><strong>Sertifikasi</strong>
                                </li>
                                <li class="py-1"><span class="ti-control-forward mr-2"></span><strong>Asesor</strong>
                                </li>
                                <li class="py-1"><span class="ti-control-forward mr-2"></span><strong>Struktur Organisasi</strong>
                                </li>
                            </ul>
                            <!-- <a href="#" class="btn btn-secondary mt-3">Profil</a> -->
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="col-md-8 col-lg-7 col-12">
                        <div class="hero-content-wrap">
                            <!-- <span class="text-uppercase font-small">For Business Solutions</span> -->
                            <h1 class="display-2">Ruang Lingkup Skema Sertifikasi</h1>
                            <ul class="list-unstyled tech-feature-list text-white">
                                <li class="py-1">
                                    <span class="ti-control-forward mr-2"></span>
                                    <strong>Pelaksanaan Proses Pinjaman</strong>
                                </li>
                                <li class="py-1">
                                    <span class="ti-control-forward mr-2"></span>
                                    <strong>Pengelolaan Risiko Pinjaman</strong>
                                </li>
                                <li class="py-1">
                                    <span class="ti-control-forward mr-2"></span>
                                    <strong>Penyelesaian Pinjaman Bermasalah</strong>
                                </li>
                                <li class="py-1">
                                    <span class="ti-control-forward mr-2"></span>
                                    <strong>Penilaian Kesehatan</strong>
                                </li>
                                <li class="py-1">
                                    <span class="ti-control-forward mr-2"></span>
                                    <strong>Pendampingan dan Pengelolaan Pinjaman Ultra Mikro</strong>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="col-md-8 col-lg-7 col-12">
                        <div class="hero-content-wrap">
                            <!-- <span class="text-uppercase font-small">Media Komunikasi</span> -->
                            <h1 class="display-2">Media Komunikasi</h1>
                            <p class="lead">Untuk sebuah sarana yang dipakai untuk mendistribusikan atau menyampaikan sebuah informasi.</p>

                            <ul class="list-unstyled tech-feature-list text-white">
                                <li class="py-1"><span class="ti-control-forward mr-2"></span><strong>News</strong>
                                    Artikel
                                </li>
                                <li class="py-1"><span class="ti-control-forward mr-2"></span><strong>Video</strong>

                                </li>
                            </ul>
                            <!-- <a href="#" class="btn btn-secondary mt-3">Get Start Now</a> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--custom indicator list start-->
    <ul id="carousel-custom-indicator" class="owl-dots list-inline text-center custom-indicators position-absolute bottom-0 w-100 mb-0 d-none d-sm-none d-md-block d-lg-block">
        <li class="list-inline-item">
            <button class="border-0 font-weight-bold d-flex align-items-center"><span class="fas fa-route icon icon-xs mr-2"></span> Profil
            </button>
        </li>
        <li class="list-inline-item">
            <button class="border-0 font-weight-bold d-flex align-items-center"><span class="fas fa-wallet icon icon-xs mr-2"></span> Sertifikasi
            </button>
        </li>
        <li class="list-inline-item">
            <button class="border-0 font-weight-bold d-flex align-items-center"><span class="fas fa-bullhorn icon icon-xs mr-2"></span> Media
            </button>
        </li>
    </ul>
    <!--custom indicator list end-->
</section>
<div class="section-md  text-white py-5" style="background-color: #102857;;">
    <div class="row justify-content-center">
        <div class="col-md-10 col-lg-9">
            <div class="page-header-content text-center" >
                <h5>Tingkatkan karier Anda dengan mengikuti sertifikasi ini.</h5>
                <h5>Daftar sekarang dan raih kesempatan untuk menjadi ahli di bidang Anda!</h5>
            </div>
        </div>
        <?php if (!session()->get('userId')) { ?>
            <div class="col-md-2 col-lg-4">
                <div class="d-flex justify-content-center ">
                <a class="btn-sm" style="background-color: #e80566; color: white;font-size:20px;" href="register">Daftar Sekarang</a>
                </div>
            </div>
        <?php } ?>
    </div>
</div>
<!--blog section start-->
<section class="section section-sm ">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-10">
                <div class="section-heading text-center mb-5">
                    <h2>Our Latest News</h2>
                    <p class="lead"></p>
                </div>
            </div>
        </div>
        <div class="row">
            <?php
            if (!empty($news)) {
                foreach ($news as $v_news) {
            ?>
                    <div class="col-12 col-md-6 col-lg-4 mb-4 mb-md-4 mb-lg-0 mb-4" style="padding-bottom: 25px;">
                        <div class="card bg-white border-variant-soft shadow-soft" data-aos="fade-up" data-aos-duration="3000">
                            <div class="blog-img position-relative">
                                <img src="<?php echo $v_news['images'][0]['path'] ?>" class="card-img-top rounded-top" alt="themetags office">
                            </div>
                            <div class="card-body">
                                <div class="media d-flex align-items-center justify-content-between">
                                    <div class="d-flex align-items-center">
                                        <span class="small"><span class="far fa-calendar-alt mr-2"></span><?php echo $v_news['timeago'] ?></span>
                                    </div>
                                </div>
                                <h3 class="h5 card-title mt-3"><a href="#"><?php echo $v_news['newsTitle'] ?></a></h3>
                                <a href="<?= base_url() ?>/events/article/detail/<?php echo $v_news['newsId'] ?>/<?php echo strtolower(url_title($v_news['newsTitle'])) ?>" class="link-with-icon text-default font-small font-weight-bold">Read more <span> <i class="fas fa-angle-right"></i></span></a>
                            </div>
                        </div>
                    </div>
            <?php
                }
            }
            ?>
        </div>
    </div>
</section>
<style>
    .card:hover .card-img-top {
        transform: scale(1.1);
        transition: transform 0.3s ease-in-out;
    }
</style>