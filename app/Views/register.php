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
                    <h1 class="display-2">Pendaftaran</h1>
                    <p class="lead"></p>
                </div>
            </div>
        </div>
        <form action="http://localhost/LSPKimiaIndustri/Register/add_user" method="post" enctype="multipart/form-data">
            <?= csrf_field(); ?>

            <div class="row justify-content-center">
                <div id="smartwizard" class="sw-main sw-theme-arrows" style="width: 500vh;">
                    <ul>
                        <li><a href="#step-1">Langkah 1<br /><small>Tahapan Skema</small></a></li>
                        <li><a href="#step-2">Langkah 2<br /><small>Bio Data</small></a></li>
                        <li><a href="#step-3">Langkah 3<br /><small>Persyaratan</small></a></li>
                    </ul>
                    <div class="mt-4">
                        <div id="step-1">
                            <h3>Pilih Skema</h3>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="skema" id="skema1" value="Pelaksanaan Proses Pinjaman">
                                <label class="form-check-label" for="skema1">
                                    Pelaksanaan Proses Pinjaman
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="skema" id="skema2" value="Pengelolaan Resiko Pinjaman">
                                <label class="form-check-label" for="skema2">
                                    Pengelolaan Resiko Pinjaman
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="skema" id="skema3" value="Penyelesaian Pinjaman Bermasalah">
                                <label class="form-check-label" for="skema3">
                                    Penyelesaian Pinjaman Bermasalah
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="skema" id="skema4" value="Penilaian Kesehatan Koperasi">
                                <label class="form-check-label" for="skema4">
                                    Penilaian Kesehatan Koperasi
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="skema" id="skema5" value="Pendampingan dan Pengelolaan Pinjaman Ultra Mikro">
                                <label class="form-check-label" for="skema5">
                                    Pendampingan dan Pengelolaan Pinjaman Ultra Mikro
                                </label>
                            </div>
                            <hr>
                        </div>


                        <div id="step-2">
                            <div class="row mt-3">
                                <div class="col">
                                    Nama Lengkap*
                                    <input type="text" name="nama_lengkap" class="form-control" id="nama_lengkap">
                                    <script>
                                        document.getElementById("nama_lengkap").focus();
                                    </script>
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-md-6">E-mail*
                                    <input type="email" name="email" class="form-control" id="email">
                                </div>
                                <div class="col-md-6">Password*
                                    <input type="password" name="password" class="form-control" id="email">
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="col">Alamat Domisili*
                                    <textarea class="form-control" name="alamat" rows="5" id="comment"></textarea>
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-md-6">Asal Instansi / Perguruan Tinggi*
                                    <input type="text" name="asal_instansi" class="form-control" id="email">
                                </div>
                                <div class="col-md-6">No Whatsapp*
                                    <input type="number" name="no_watsap" class="form-control" id="email">
                                </div>
                            </div>
                        </div>
                        <div id="step-3">
                            <div class="row mt-2 ml-3">
                                <div class="col mt-3">
                                    <p>Ijazah SLTA / Sederajat*</p>
                                    <input type="file" name="agambar_ijazah" id="agambar" onchange="previewImage();" />
                                </div>
                                <div class="col mt-3">
                                    <p> Pas Foto Berwarna*</p>
                                    <input type="file" name="agambar_pasfoto" id="agambar" onchange="previewImage();" />
                                </div>
                            </div>
                            <hr>
                            <div class="row ml-3">
                                <div class="col mt-3">
                                    <p>KTP / KK / Paspor*</p>
                                    <input type="file" name="agambar_ktpkk" id="agambar" onchange="previewImage();" />
                                </div>
                                <div class="col mt-3">
                                    <p> Surat Keterangan / Pengalaman Kerja*</p>
                                    <input type="file" name="agambar_pengalaman" id="agambar" onchange="previewImage();" />
                                </div>
                            </div>
                            <hr>
                            <div class="row ml-3">
                                <div class="col mt-3">
                                    <p> Portofolio / Bukti hasil kerja*</p>
                                    <input type="file" name="agambar_porto" id="agambar" onchange="previewImage();" />
                                </div>
                                <div class="col mt-3">
                                    <p> Bukti Pembayaran*</p>
                                    <input type="file" name="agambar_bktibayar" id="agambar" onchange="previewImage();" />
                                </div>
                            </div>
                            <hr>
                            <div class="row ml-3">
                                <div class="col mt-3">
                                    <p> Tanda Tangan Pendaftar*</p>
                                    <input type="file" name="agambar_ttd" id="agambar" onchange="previewImage();" />
                                </div>
                            </div>
                            <hr>
                            <div class="row ml-3 mt-3">
                                <div class="col mt-3">
                                    <button type="submit" name="asubmit" class="btn btn-success">Submit</button>
                                </div>
                            </div>
                        </div>
                        <?php echo "</form>"; ?>
                    </div>
                </div>
            </div>
</section>