<!-- start blog-with-sidebar-section -->
<section class="" style="background: url('https://bri-institute.ac.id/wp-content/uploads/2020/04/Focus-group-Discussion-BRI-Institute-dan-Anggota-Aftech-2.jpeg')no-repeat center center / cover">
            <div class="section-lg bg-gradient-primary text-white section-header">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-8 col-lg-7">
                            <div class="page-header-content text-center">
                                <h1>Video Detail</h1>
                                <nav aria-label="breadcrumb" class="d-flex justify-content-center">
                                    <ol class="breadcrumb breadcrumb-transparent breadcrumb-text-light">
                                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                                        <li class="breadcrumb-item"><a href="#">Pages</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Video</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
<section class="blog-with-sidebar-section blog-single-content section-padding">
    <div class="container">
        <div class="row">
            <div class="news-grids col col-lg-12 col-lg-offset-1 col-lg-push-3 col-md-8 col-md-push-4">
               <br>
                <div class="post">
                    <div class="post-title-meta">
                        <h2><?php echo @$detail['lvstTitle'] ?></h2>
                        <ul class="meta-info">
                            <li><a href="javascript:void(0)"><i class="fa fa-clock-o"></i> <?php echo @$detail['publish_format']; ?></a></li>
                        </ul>
                    </div>
                    <div class="post-image">
                        <?php
                        $embed_code = '';
                        if(!empty($detail['lvstEmbed'])) {
                            $ex = explode('v=', $detail['lvstEmbed']);
                            if(!empty($ex)) {
                                if(!empty($ex[count($ex) - 1])) {
                                    $embed_code = $ex[count($ex) - 1];
                                }
                            }
                        }
                        ?>
                        <iframe width="100%" height="453" src="https://www.youtube.com/embed/<?php echo $embed_code; ?>?rel=0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                </div> <!-- end post -->
            </div> <!-- end blog-content -->

                             
        </div>
    </div> <!-- end container -->
</section>
<!-- end blog-with-sidebar-section -->   