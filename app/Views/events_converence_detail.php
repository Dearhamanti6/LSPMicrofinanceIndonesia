<!-- start blog-with-sidebar-section -->
<section class="blog-with-sidebar-section blog-single-content section-padding">
    <div class="container">
        <div class="row">
            <div class="news-grids col col-lg-8 col-lg-offset-1 col-lg-push-3 col-md-8 col-md-push-4">
                <div class="post">
                    <div class="post-title-meta">
                        <h2><?php echo @$detail['convTitle'] ?></h2>
                        <ul class="meta-info">
                            <li><a href="javascript:void(0)"><i class="fa fa-clock-o"></i> <?php echo @$detail['publish_format']; ?></a></li>
                        </ul>
                    </div>
                    <div class="post-image">
                        <img style="width: 100%; margin-bottom: 40px" src="<?php echo @$detail['images'][0]['path']; ?>" />
                    </div>
                    <div class="post-body">
                        <?php echo @$detail['convDetail']; ?>
                    </div>
                </div> <!-- end post -->
            </div> <!-- end blog-content -->

            <div class="blog-sidebar col col-lg-3 col-lg-pull-9 col-md-4 col-md-pull-8 col-sm-5">
                <div class="widget category-widget">
                    <h3>Study Visit</h3>
                    <ul>
                        <li><a href="/study/regular">Regular Study Visit</a></li>
                        <li><a href="/study/customized">Customized Study Visit</a></li>
                        <li><a href="/study/overseas">Overseas Training</a></li>
                    </ul>
                </div>
                <div class="widget category-widget">
                    <h3>Product And Services</h3>
                    <ul>
                        <li><a href="/product/research">Research</a></li>
                        <li><a href="/product/technical">Technical Assistance</a></li>
                        <li><a href="/product/consultancy">Consultancy / Advocacy</a></li>
                    </ul>
                </div>
                <div class="widget category-widget">
                    <h3>Empowerment</h3>
                    <ul>
                        <li><a href="/empowerment">Empowerment</a></li>
                    </ul>
                </div>
                <div class="widget category-widget">
                    <h3>Network</h3>
                    <ul>
                        <li><a href="/network/clients">Clients</a></li>
                        <li><a href="/network/community">Extended Community</a></li>
                    </ul>
                </div>
                <div class="widget category-widget">
                    <h3>Events</h3>
                    <ul>
                        <li><a href="/events/converence">Converence</a></li>
                        <li><a href="/events/article">Article</a></li>
                        <li><a href="/events/video">Video</a></li>
                    </ul>
                </div>
            </div>                    
        </div>
    </div> <!-- end container -->
</section>
<!-- end blog-with-sidebar-section -->   