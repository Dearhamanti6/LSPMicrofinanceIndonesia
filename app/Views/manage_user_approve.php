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
<!--blog section start-->
<section class="section section-lg ">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col">
                <div class="section-heading text-center mb-5">
                    <h3 class="display-2">Manage Approvement Peserta</h3>
                    <p class="lead"></p>
                </div>
            </div>
        </div>


        <div class="row justify-content-center">
            <section class=" gray-light-bg">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="p-5 my-md-3 my-lg-3 my-sm-0 shadow-sm white-bg rounded">
                            <a type="button" class="btn btn-primary mb-4" href="<?= base_url(); ?>/Manage_user">
                                <i class="fas fa-arrow-left"></i>
                                Back
                            </a>

                            <table id="mu-table" class="table table-striped table-bordered table-hover" style="width: 100%;">
                                <thead>
                                    <tr>
                                        <th><strong>No</strong></th>
                                        <th><strong>Nama User</strong></th>
                                        <th><strong>Instansi</strong></th>
                                        <th><strong>Skema</strong></th>
                                        <!-- <th><strong>Ijazah</strong></th> -->
                                        <!-- <th><strong>Pas Foto </strong></th> -->
                                        <!-- <th><strong>KTP / KK</strong></th> -->
                                        <!-- <th><strong>Pengalaman</strong></th> -->
                                        <!-- <th><strong>Portofolio</strong></th> -->
                                        <!-- <th><strong>Bukti Bayar</strong></th> -->
                                        <!-- <th><strong>Ttd Peserta</strong></th> -->
                                        <th><strong>Aksi</strong></th>
                                    </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </section>

            <?= $this->section('javascript') ?>
            <script type="text/javascript">
                $(document).ready(function() {
                    var table = $('#mu-table').DataTable({
                        "processing": true,
                        "serverSide": true,
                        "scrollZ": "3000px",

                        "order": [],
                        "ajax": {
                            "url": "<?php echo site_url('Manage_user_approve/ajaxList') ?>",
                            "type": "POST",
                            "data": function(d) {
                                // Menambahkan token CSRF ke dalam permintaan
                                d['<?= csrf_token() ?>'] = '<?= csrf_hash() ?>';
                            },
                            "dataType": "json",
                            "error": function(jqXHR, ajaxOptions, thrownError) {
                                console.log("Error: " + thrownError);
                            }
                        },
                        "columnDefs": [{
                            "targets": [],
                            "orderable": false,
                        }],
                    });


                });
            </script>
            <?= $this->endSection() ?>
        </div>
</section>