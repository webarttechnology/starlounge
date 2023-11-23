<?php /* Template Name: Recipe */

get_header();
 ?>

<!-- Header Section End -->
<!-- Hero Section Start -->
<section id="blogpage-1-section">
    <div class="blog1-section-img">
        <div class="menupage-1-overlay"></div>
        <div class="menupage-1-conten">
            <h1 class="blog1-hero-txt1 wow fadeInDown" data-wow-duration="1s" data-wow-delay="2.5s">Recipe</h1>
        </div>
    </div>
    <div class="breadcrumb-section">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="<?php echo get_site_url(); ?>">
                        <span class="home-icon">
                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                xmlns="http://www.w3.org/2000/svg">
                                <mask id="mask0_564_5237" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0"
                                    width="24" height="24">
                                    <rect width="24" height="24" fill="white" />
                                </mask>
                                <g mask="url(#mask0_564_5237)">
                                    <path
                                        d="M9.15722 20.7714V17.7047C9.1572 16.9246 9.79312 16.2908 10.581 16.2856H13.4671C14.2587 16.2856 14.9005 16.9209 14.9005 17.7047V17.7047V20.7809C14.9003 21.4432 15.4343 21.9845 16.103 22H18.0271C19.9451 22 21.5 20.4607 21.5 18.5618V18.5618V9.83784C21.4898 9.09083 21.1355 8.38935 20.538 7.93303L13.9577 2.6853C12.8049 1.77157 11.1662 1.77157 10.0134 2.6853L3.46203 7.94256C2.86226 8.39702 2.50739 9.09967 2.5 9.84736V18.5618C2.5 20.4607 4.05488 22 5.97291 22H7.89696C8.58235 22 9.13797 21.4499 9.13797 20.7714V20.7714"
                                        stroke="white" stroke-width="2" stroke-linecap="round"
                                        stroke-linejoin="round" />
                                </g>
                            </svg>
                        </span>Home
                    </a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">Recipe</li>
            </ol>
        </div>
    </div>
    <div class="menupage1-boder"></div>
</section>
<!-- Hero Section End -->
<!-- Blog Content Section Start -->
<section id="blogpage1-section" class="">
    <div class="container line ptb-100">
        <span class="line-3"></span>
        <span class="line-4"></span>
        <span class="line-5"> </span>
        <div class="blogpage1-section-full">
            <?php
      $args = array(
        'post_type' => 'ourrecipe',
        'post_status' => 'publish',
        'posts_per_page' => -1,
        'orderby' => 'id',
        'order' => 'ASC',
      );

      $loop = new WP_Query($args);
while ($loop->have_posts()) : $loop->the_post();
        $image = wp_get_attachment_url(get_post_thumbnail_id($post->ID) );
      ?>

            <div class="blog-1-wrapper">
                <div class="blog1-img-sec">
                    <img src="<?php echo $image; ?>" alt="blog-img" class="img-fluid w-100">
                </div>
                <div class="blogpage1-content-sec">
                    <p class="blog1-txt1"><?php echo get_field('reservation_extra_field_add_content'); ?></p>
                    <h2 class="blog1-txt2"><?php the_title(); ?></h2>
                    <!-- <p class="blog1-txt3 ">Turpis nisi, volutpat scelerisque est aenean. Eu ridiculus imperdiet egestas
                        malesuada. Semper dignissim posuere non hendrerit. Lacus vestibulum,
                        quam est id in aliquet pharetra. Orci sit gravida sapien quis ac eget
                        parturient phasellus mauris. Diam ultrices sed sed ornare. Risus sit
                        felis mattis diam adipiscing. Elit maecenas laoreet arcu felis iaculis
                        id amet cursus tellus. Tellus dolor consectetur viverra sit neque.</p> -->
                    <div>
                        <a href="<?php the_permalink(); ?>" class="blog-1-read-more">READ MORE
                            <svg class="blog1-icon" width="24" height="24" viewBox="0 0 24 24" fill="none"
                                xmlns="http://www.w3.org/2000/svg">
                                <mask style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="24"
                                    height="24">
                                    <rect width="24" height="24" fill="white" />
                                </mask>
                                <g mask="url(#mask0_585_5342)">
                                    <path d="M19.75 11.7256L4.75 11.7256" stroke="#FFDE9F" stroke-width="2"
                                        stroke-linecap="round" stroke-linejoin="round" />
                                    <path d="M13.7012 5.70124L19.7512 11.7252L13.7012 17.7502" stroke="#FFDE9F"
                                        stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                </g>
                            </svg>
                        </a>
                    </div>
                </div>
            </div>
            <?php 

            endwhile;

            wp_reset_postdata();


             ?>



            <!-- <div class="blog-1-wrapper mt-60">
                <div class="blog1-img-sec">
                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blogpage2/blog-5.png" alt="blog-img" class="img-fluid w-100">
                </div>
                <div class="blogpage1-content-sec">
                    <p class="blog1-txt1">IN DINNER ON SEPTEMBER 20, 2022</p>
                    <h2 class="blog1-txt2">Recipe 2</h2>
                    
                    <div>
                        <a href="single-blogpage7.php" class="blog-1-read-more">READ MORE
                            <svg class="blog1-icon" width="24" height="24" viewBox="0 0 24 24" fill="none"
                                xmlns="http://www.w3.org/2000/svg">
                                <mask style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="24"
                                    height="24">
                                    <rect width="24" height="24" fill="white" />
                                </mask>
                                <g mask="url(#mask0_585_5342)">
                                    <path d="M19.75 11.7256L4.75 11.7256" stroke="#FFDE9F" stroke-width="2"
                                        stroke-linecap="round" stroke-linejoin="round" />
                                    <path d="M13.7012 5.70124L19.7512 11.7252L13.7012 17.7502" stroke="#FFDE9F"
                                        stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                </g>
                            </svg>
                        </a>
                    
                    </div>
                </div>
            </div>
            <div class="blog-1-wrapper mt-60">
                <div class="blog1-img-sec">
                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blogpage1/blog-3.png" alt="blog-img" class="img-fluid w-100">
                </div>
                <div class="blogpage1-content-sec">
                    <p class="blog1-txt1">IN DINNER ON SEPTEMBER 20, 2022</p>
                    <h2 class="blog1-txt2">Recipe 3</h2>
                    
                    <div>
                        <a href="single-blogpage7.php" class="blog-1-read-more">READ MORE
                            <svg class="blog1-icon" width="24" height="24" viewBox="0 0 24 24" fill="none"
                                xmlns="http://www.w3.org/2000/svg">
                                <mask style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="24"
                                    height="24">
                                    <rect width="24" height="24" fill="white" />
                                </mask>
                                <g mask="url(#mask0_585_5342)">
                                    <path d="M19.75 11.7256L4.75 11.7256" stroke="#FFDE9F" stroke-width="2"
                                        stroke-linecap="round" stroke-linejoin="round" />
                                    <path d="M13.7012 5.70124L19.7512 11.7252L13.7012 17.7502" stroke="#FFDE9F"
                                        stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                </g>
                            </svg>
                        </a>
                    </div>
                </div>
            </div>
            <div class="blog-1-wrapper mt-60">
                <div class="blog1-img-sec">
                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blogpage1/blog-4.png" alt="blog-img" class="img-fluid w-100">
                </div>
                <div class="blogpage1-content-sec">
                    <p class="blog1-txt1">IN DINNER ON SEPTEMBER 20, 2022</p>
                    <h2 class="blog1-txt2">Recipe 4</h2>
                    
                    <div>
                        <a href="single-blogpage7.php" class="blog-1-read-more">READ MORE
                            <svg class="blog1-icon" width="24" height="24" viewBox="0 0 24 24" fill="none"
                                xmlns="http://www.w3.org/2000/svg">
                                <mask style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="24"
                                    height="24">
                                    <rect width="24" height="24" fill="white" />
                                </mask>
                                <g mask="url(#mask0_585_5342)">
                                    <path d="M19.75 11.7256L4.75 11.7256" stroke="#FFDE9F" stroke-width="2"
                                        stroke-linecap="round" stroke-linejoin="round" />
                                    <path d="M13.7012 5.70124L19.7512 11.7252L13.7012 17.7502" stroke="#FFDE9F"
                                        stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                </g>
                            </svg>
                        </a>
                    </div>
                </div>
            </div> -->
        </div>
       <!--  <div class="blogpage1-pagination">
            <div>
                <ul class="pagination">
                    <li class="page-item page-item-custom">
                        <a class="page-link" href="javascript:void(0)" tabindex="-1">1</a>
                    </li>
                    <li class="page-item page-item-custom"><a class="page-link" href="javascript:void(0)">2</a></li>
                    <li class="page-item page-item-custom"><a class="page-link" href="javascript:void(0)">3</a></li>
                    <li class="page-item page-item-custom"><a class="page-link" href="javascript:void(0)"><i
                                class="fa-solid fa-angle-right"></i></a></li>
                </ul>
            </div>
        </div> -->
    </div>
</section>
<!-- Blog Content Section End -->
<!-- Testimonial Section Start -->
<section id="menupage-1-testimonials-sec">
    <div class="menupage-1-testimo-overlay"></div>
    <div class="container">
        <div class="home2-testimonials-sec-full">
            <div class="home2-test-top">
                <p class="homemenu-txt1 wow fadeInUp  " data-wow-duration="1s"><span class="pr-10"><img
                            src="<?php echo get_template_directory_uri(); ?>/assets/images/Homepage1/yellow-star.png" alt="yellow-star"></span>TESTIMONIALS<span
                        class="pf-10"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/Homepage1/yellow-star.png" alt="yellow-star"></span></p>
                <h2 class="homemenu-txt2 homemenu-txt22 wow fadeInUp " data-wow-duration="1.4s">The Reviews Of Customers
                    When Coming To Our Restaurant!</h2>
            </div>
            <div class="home2-test-bottom wow fadeInUp" data-wow-duration="1.6s">
                <div class="home2-test-bottom-full">
                    <div class="home2-test-slider">
                        <p class="home2-test-txt1">“ This bermiz restaurant has left the best impressions! Hospitable
                            hosts, delicious dishes, beautiful presentation, wide wine
                            list and wonderful dessert. I recommend to everyone! I would like to come back here again
                            and again.”</p>
                        <p class="home2-test-txt2">PAUL SERGEO</p>
                    </div>
                    <div class="home2-test-slider">
                        <p class="home2-test-txt1">“ This bermiz restaurant has left the best impressions! Hospitable
                            hosts, delicious dishes, beautiful presentation, wide wine
                            list and wonderful dessert. I recommend to everyone! I would like to come back here again
                            and again.”</p>
                        <p class="home2-test-txt2">PAUL SERGEO</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Testimonial Section End -->



 <?php get_footer(); ?>