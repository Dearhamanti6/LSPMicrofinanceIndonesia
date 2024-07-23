<section class="" style="background: url('https://bri-institute.ac.id/wp-content/uploads/2020/04/Focus-group-Discussion-BRI-Institute-dan-Anggota-Aftech-2.jpeg')no-repeat center center / cover">
    <div class="section-sm text-white section-header" style="background-color: #111d50;">
        <div class="row justify-content-left px-5 pt-5">
            <div class="col-md-8 col-lg-7">
                <div class="page-header-content text-start">
                    <h1>Pemegang Sertifikat</h1>
                    <nav aria-label="breadcrumb" class="d-flex justify-content-left">
                        <ol class="breadcrumb breadcrumb-transparent breadcrumb-text-light mb-0">
                            <li class="breadcrumb-item"><a href="<?= base_url() ?>/home">Home</a></li>
                            <li class="breadcrumb-item"><a href="#">Pages</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Pemegang Sertifikat</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <hr style="border-color: #c3212b; border-width: 5px;margin: 0 0 0 0">
    </div>
</section>
<br>
<section class="services-section  ">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="p-5 my-md-3 my-lg-3 my-sm-0 shadow-sm white-bg rounded">
                    <table id="ps-table" class="table table-striped table-bordered table-hover">
                        <thead>
                            <tr>
                                <th class="bg-primary text-white"><strong>No</strong></th>
                                <th class="bg-primary text-white"><strong>Nama Pemegang Sertifikat</strong></th>
                                <th class="bg-primary text-white"><strong>Instansi</strong></th>
                                <th class="bg-primary text-white"><strong>Skema</strong></th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

<?= $this->section('javascript') ?>
<script type="text/javascript">
    $(document).ready(function() {
        var table = $('#ps-table').DataTable({
            "processing": true,
            "serverSide": true,
            "order": [],
            "ajax": {
                "url": "<?php echo site_url('PemegangSertifikatController/ajaxList') ?>",
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