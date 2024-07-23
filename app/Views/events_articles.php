<!-- start blog-with-sidebar-section -->
<section class="" style="background: url('https://bri-institute.ac.id/wp-content/uploads/2020/04/Focus-group-Discussion-BRI-Institute-dan-Anggota-Aftech-2.jpeg')no-repeat center center / cover">
    <div class="section-sm text-white section-header" style="background-color: #111d50;">
        <div class="row justify-content-left px-5 pt-5">
            <div class="col-md-8 col-lg-7">
                <div class="page-header-content text-start">
                    <h1>News Article</h1>
                    <nav aria-label="breadcrumb" class="d-flex justify-content-left">
                        <ol class="breadcrumb breadcrumb-transparent breadcrumb-text-light mb-0">
                            <li class="breadcrumb-item"><a href="<?= base_url() ?>/home">Home</a></li>
                            <li class="breadcrumb-item"><a href="#">Pages</a></li>
                            <li class="breadcrumb-item active" aria-current="page">News Article</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <hr style="border-color: #c3212b; border-width: 5px;margin: 0 0 0 0">
    </div>
</section>
<section class="our-blog-section ptb-100 ">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="section-heading mb-5">
                    <h2>Our Latest News</h2>
                    <p class="lead">

                    </p>
                </div>
            </div>
        </div>
        <div class="row">
            <?php
            if (!empty($all)) {
                foreach ($all as $v_all) {
            ?>
                    <div class="col-md-6 col-lg-4" data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="300" data-aos-offset="0">
                        <div class="single-blog-card card border-0 shadow-sm">
                            <div class="blog-img">
                                <a href="#"><span class="category position-absolute">News Article</span></a>
                                <a href="#"><img src="<?php echo $v_all['images'][0]['path'] ?>" class="card-img-top position-relative img-fluid" alt="blog"></a>
                            </div>
                            <div class="card-body">
                                <h3 class="h5 mb-2 card-title"><a href="#"><?php echo $v_all['newsTitle'] ?></a></h3>
                                <!-- <p class="card-text">Some quick example text to build on the card title and make up the bulk.</p> -->
                            </div>
                            <div class="card-footer border-0 d-flex">
                                <a href="<?= base_url() ?>/events/article/detail/<?php echo $v_all['newsId'] ?>/<?php echo strtolower(url_title($v_all['newsTitle'])) ?>" class="">Read more <span class="ti-arrow-right"></span></a>
                            </div>
                        </div>
                    </div>
            <?php }
            } ?>
        </div>
    </div>
</section>