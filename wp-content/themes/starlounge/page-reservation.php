<?php /* Template Name: Reservation */

get_header();
 ?>


        <!-- Hero Section Start -->
        <section id="reservation1-section">
            <div class="reservation1-section-img">
                <div class="menupage-1-overlay"></div>
                <div class="menupage-1-conten">
                    <h1 class="menupage-1-hero-txt1 wow fadeInDown" data-wow-duration="1s" data-wow-delay="1s">Reservation</h1>
                </div>
            </div>
            <div class="breadcrumb-section">
                <div class="container">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="<?php echo get_site_url(); ?>">
                                <span class="home-icon">
                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <mask id="mask0_564_5237" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="24" height="24">
                                            <rect width="24" height="24" fill="white"/>
                                        </mask>
                                        <g mask="url(#mask0_564_5237)">
                                            <path d="M9.15722 20.7714V17.7047C9.1572 16.9246 9.79312 16.2908 10.581 16.2856H13.4671C14.2587 16.2856 14.9005 16.9209 14.9005 17.7047V17.7047V20.7809C14.9003 21.4432 15.4343 21.9845 16.103 22H18.0271C19.9451 22 21.5 20.4607 21.5 18.5618V18.5618V9.83784C21.4898 9.09083 21.1355 8.38935 20.538 7.93303L13.9577 2.6853C12.8049 1.77157 11.1662 1.77157 10.0134 2.6853L3.46203 7.94256C2.86226 8.39702 2.50739 9.09967 2.5 9.84736V18.5618C2.5 20.4607 4.05488 22 5.97291 22H7.89696C8.58235 22 9.13797 21.4499 9.13797 20.7714V20.7714" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                        </g>
                                    </svg>
                                </span>Home
                            </a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">Reservation</li>
                    </ol>
                </div>
            </div>
            <div class="menupage1-boder"></div>
        </section>
        <!-- Hero Section End -->
        <!-- Reservation Content Section Start -->
        <section id="reservation1-sec-deatils">
            <div class="container ptb-100 line">
                <span class="line-3"></span>
                <span class="line-4"></span>
                <span class="line-5"> </span>
                <div class="reservation1-sec-deatils-full wow fadeInUp" data-wow-duration="1s" data-wow-delay="1s">
                    <div class="reservation1-left">
                        <div class="reservation1-left-content">
                            <h2 class="res-txt1"><?php echo get_field('reservation_1st_section_heading'); ?></h2>
                            <p class="res-txt2"><?php echo get_field('reservation_1st_section_subheading'); ?></p>
                        </div>
                    </div>
                    <div class="reservation2-right">
                        <div class="reservation2-right-content">
                            <div class="homepage3-form">
                                <div class="home3-form-top">
                                    <p class="home3-form-txt1"><span class="pr-10"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/Homepage1/yellow-star.png" alt="yellow-star"></span>RESERVE<span class="pf-10"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/Homepage1/yellow-star.png" alt="yellow-star"></span></p>
                                    <h2 class="home3-form-txt2">Book Your Table</h2>
                                    <p class="home3-form-txt3">Booking request <a href="tel:<?php echo get_field('phone_number', 49); ?>"><span class="home3-form-no"><?php echo get_field('phone_number', 49); ?></span></a> or fill out the order form</p>
                                </div>
                                <?php echo do_shortcode('[contact-form-7 id="9276adc" title="Reservation Page Form"]'); ?>
                                <!-- <div class="home3-form-bottom">
                                    <div class="single-input-form-home3">
                                        <select name="persons" class="custom-select">
                                            <option>1 Person</option>
                                            <option>2 Persons</option>
                                            <option>3 Persons</option>
                                            <option>4 Persons</option>
                                            <option>5 Persons</option>
                                            <option>6 Persons</option>
                                            <option>7 Persons</option>
                                        </select>
                                    </div>
                                    <div class="single-input-form-home3 ">
                                        <input type="text" id="datepicker" autocomplete="off" placeholder="dd/mm/yy" class="custom-input-home3-form">
                                    </div>
                                    <div class="single-input-form-home3 ">
                                        <select name="persons" class="custom-select">
                                            <option>08:00 am</option>
                                            <option>09:00 am</option>
                                            <option>10:00 am</option>
                                            <option>11:00 am</option>
                                            <option>12:00 pm</option>
                                            <option>01:00 pm</option>
                                            <option>02:00 pm</option>
                                            <option>03:00 pm</option>
                                            <option>04:00 pm</option>
                                            <option>05:00 pm</option>
                                            <option>06:00 pm</option>
                                            <option>07:00 pm</option>
                                            <option>08:00 pm</option>
                                            <option>09:00 pm</option>
                                            <option>10:00 pm</option>
                                        </select>   
                                    </div>                      
                                    <div class="home3-form-btn">
                                        <a href="javascript:void(0)">Book A Table</a>
                                    </div>
                                    <div class="open-table d-none">
                                        <p class="powered-txt">*Powered by
                                            <span>
                                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/Homepage3/open-table-img.png" alt="open-table-icon">
                                            </span>
                                        </p>
                                    </div>
                                </div> -->
                            </div>
                        </div>
                    </div>
                </div>  
            </div>
        </section>
        <!-- Reservation Content Section End -->
        <!-- Mobile App Section Start -->
        <section id="reservarion1-fast-ordering-sec" class="d-none">
            <div class="container line reservarion1-fast-ordering-sec">
                <span class="line-3"></span>
                <span class="line-4"></span>
                <span class="line-5"> </span>
                <div class="fast-ordering-sec-full">
                    <div class="fast-ordering-left" data-aos="fade-right">
                        <div class="fast-top-sec">
                            <p class="fast-order-txt1"><span class="pr-10"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/Homepage1/yellow-star.png" alt="yellow-star"></span>Fast ORDERING<span class="pf-10"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/Homepage1/yellow-star.png" alt="yellow-star"></span></p>
                        </div>
                        <h2 class="fast-order-txt2">Download Our Mobile App</h2>
                        <p class="fast-order-txt3">Vitae neque libero ullamcorper gravida fusce donec feugiat massa dui. Turpis massa et ipsum orci, sem commodo. Sapien hendrerit cursus eros, netus lacus, risus in quis vitae.</p>
                        <div class="fast-otder-media-sec">
                            <div>
                                <a href="#"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/Homepage1/google.png" alt="google-img" class="img-fluid"></a>
                            </div>
                            <div>
                                <a href="#"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/Homepage1/appstrore.png" alt="appstore-img" class="img-fluid"></a>
                            </div>
                        </div>
                    </div>
                    <div class="fast-ordering-right" data-aos="fade-left">
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/Homepage1/mobile-img.png" alt="mobile-img" class="img-fluid">
                    </div>
                </div>
            </div>
        </section>
        <!-- Mobile App Section End -->
        <!-- Gallery Section Start -->
        <section id="homepage1-gallery-sec" class="reservation-1-bottom">
            <div class="custom-lines-bg">
                <div class="line container">
                    <span class="line-3"></span>
                    <span class="line-4"></span>
                    <span class="line-5"> </span>
                </div>
            </div>
            <div class="container reservation-1-bottom1 line">
                <span class="line-3"></span>
                <span class="line-4"></span>
                <span class="line-5"> </span>
                <div class="gallery-top-sec">
                    <p class="gallery-txt1"><span class="pr-10"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/Homepage1/yellow-star.png" alt="yellow-star"></span>OUR GALLERY<span class="pf-10"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/Homepage1/yellow-star.png" alt="yellow-star"></span></p>
                   
                </div>
            </div>
            <div class="gallery-food-slider wow fadeInUp" id="gallery" data-wow-duration="1s">
                <div class="swiper-wrapper gallery-item-sec">
                    <?php 

                    $galleryloop = CFS()->get('gallery_loop');

                    if(is_array($galleryloop) || is_object($galleryloop)){

                        foreach($galleryloop as $galleryitem){

                         ?>

                    <div class="swiper-slide gallery-slide">
                        <div class="gallery-item">
                            <a class="example-image-link" href="<?php echo $galleryitem['gallery_image']; ?>" data-lightbox="example-set"><img class="example-image" src="<?php echo $galleryitem['gallery_image']; ?>" alt=""/></a>        
                        </div>
                        <div class="home2-gallery-overlay fadeIn-bottom fadeIn-right">
                            <a class="example-image-link" href="<?php echo $galleryitem['gallery_image']; ?>" data-lightbox="example-set"></a>
                        </div>
                    </div>
                <?php } } ?>
                  <!--   <div class="swiper-slide gallery-slide">
                        <div class="gallery-item">
                            <a class="gallery-popup" href="<?php //echo get_template_directory_uri(); ?>/assets/images/Homepage1/gallery-2.png" data-caption="Finger Roll" data-width="600" data-height="800">
                                <img src="<?php //echo get_template_directory_uri(); ?>/assets/images/Homepage1/gallery-2.png" class="img-fluid" alt="gallery item">
                                <div class="content-overlay-home2"></div>
                            </a>        
                        </div>
                        <div class="home2-gallery-overlay fadeIn-bottom fadeIn-right">
                            <a class="gallery-popup" href="<?php //echo get_template_directory_uri(); ?>/assets/images/Homepage1/gallery-2.png" data-caption="Finger Roll" data-width="600" data-height="800">
                                <p class="gallery-overlay-txt1">Finger Roll</p>
                                <div  class="home2-search-icon">
                                    <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <mask style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="40" height="40">
                                            <rect width="40" height="40" fill="white"></rect>
                                        </mask>
                                        <g mask="url(#mask0_540_5055)">
                                            <circle cx="19.6111" cy="19.6108" r="14.9809" stroke="#0B1315" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></circle>
                                            <path d="M30.0305 30.8086L35.9039 36.6667" stroke="#0B1315" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                        </g>
                                    </svg>
                                </div>
                            </a>
                        </div>  
                    </div>
                    <div class="swiper-slide gallery-slide">
                        <div class="gallery-item">
                            <a class="gallery-popup" href="<?php //echo get_template_directory_uri(); ?>/assets/images/Homepage1/gallery-3.png" data-caption="Chicken" data-width="600" data-height="800">
                                <img src="<?php //echo get_template_directory_uri(); ?>/assets/images/Homepage1/gallery-3.png" class="img-fluid" alt="gallery item">
                                <div class="content-overlay-home2"></div>
                            </a>        
                        </div>
                        <div class="home2-gallery-overlay fadeIn-bottom fadeIn-right">
                            <a class="gallery-popup" href="<?php //echo get_template_directory_uri(); ?>/assets/images/Homepage1/gallery-3.png" data-caption="Chicken" data-width="600" data-height="800">
                                <p class="gallery-overlay-txt1">Chicken</p>
                                <div  class="home2-search-icon">
                                    <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <mask style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="40" height="40">
                                            <rect width="40" height="40" fill="white"></rect>
                                        </mask>
                                        <g mask="url(#mask0_540_5055)">
                                            <circle cx="19.6111" cy="19.6108" r="14.9809" stroke="#0B1315" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></circle>
                                            <path d="M30.0305 30.8086L35.9039 36.6667" stroke="#0B1315" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                        </g>
                                    </svg>
                                </div>
                            </a>
                        </div>  
                    </div>
                    <div class="swiper-slide gallery-slide">
                        <div class="gallery-item">
                            <a class="gallery-popup" href="<?php //echo get_template_directory_uri(); ?>/assets/images/Homepage1/gallery-4.png" data-caption="Pasta" data-width="600" data-height="800">
                                <img src="<?php //echo get_template_directory_uri(); ?>/assets/images/Homepage1/gallery-4.png" class="img-fluid" alt="gallery item">
                                <div class="content-overlay-home2"></div>
                            </a>        
                        </div>
                        <div class="home2-gallery-overlay fadeIn-bottom fadeIn-right">
                            <a class="gallery-popup" href="<?php //echo get_template_directory_uri(); ?>/assets/images/Homepage1/gallery-4.png" data-caption="Pasta" data-width="600" data-height="800">
                                <p class="gallery-overlay-txt1">Pasta</p>
                                <div  class="home2-search-icon">
                                    <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <mask style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="40" height="40">
                                            <rect width="40" height="40" fill="white"></rect>
                                        </mask>
                                        <g mask="url(#mask0_540_5055)">
                                            <circle cx="19.6111" cy="19.6108" r="14.9809" stroke="#0B1315" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></circle>
                                            <path d="M30.0305 30.8086L35.9039 36.6667" stroke="#0B1315" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                        </g>
                                    </svg>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="swiper-slide gallery-slide">
                        <div class="gallery-item">
                            <a class="gallery-popup" href="<?php //echo get_template_directory_uri(); ?>/assets/images/Homepage1/gallery-5.png" data-caption="Roll" data-width="600" data-height="800">
                                <img src="<?php //echo get_template_directory_uri(); ?>/assets/images/Homepage1/gallery-5.png" class="img-fluid" alt="gallery item">
                                <div class="content-overlay-home2"></div>
                            </a>        
                        </div>
                        <div class="home2-gallery-overlay fadeIn-bottom fadeIn-right">
                            <a class="gallery-popup" href="<?php //echo get_template_directory_uri(); ?>/assets/images/Homepage1/gallery-5.png" data-caption="Roll" data-width="600" data-height="800">
                                <p class="gallery-overlay-txt1">Roll</p>
                                <div  class="home2-search-icon">
                                    <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <mask style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="40" height="40">
                                            <rect width="40" height="40" fill="white"></rect>
                                        </mask>
                                        <g mask="url(#mask0_540_5055)">
                                            <circle cx="19.6111" cy="19.6108" r="14.9809" stroke="#0B1315" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></circle>
                                            <path d="M30.0305 30.8086L35.9039 36.6667" stroke="#0B1315" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                        </g>
                                    </svg>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="swiper-slide gallery-slide">
                        <div class="gallery-item">
                            <a class="gallery-popup" href="<?php //echo get_template_directory_uri(); ?>/assets/images/Homepage1/gallery-1.png" data-caption="Kebab" data-width="600" data-height="800">
                                <img src="<?php //echo get_template_directory_uri(); ?>/assets/images/Homepage1/gallery-1.png" class="img-fluid" alt="gallery item">
                                <div class="content-overlay-home2"></div>
                            </a>        
                        </div>
                        <div class="home2-gallery-overlay fadeIn-bottom fadeIn-right">
                            <a class="gallery-popup" href="<?php //echo get_template_directory_uri(); ?>/assets/images/Homepage1/gallery-1.png" data-caption="Kebab" data-width="600" data-height="800">
                                <p class="gallery-overlay-txt1">Kebab</p>
                                <div  class="home2-search-icon">
                                    <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <mask style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="40" height="40">
                                            <rect width="40" height="40" fill="white"></rect>
                                        </mask>
                                        <g mask="url(#mask0_540_5055)">
                                            <circle cx="19.6111" cy="19.6108" r="14.9809" stroke="#0B1315" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></circle>
                                            <path d="M30.0305 30.8086L35.9039 36.6667" stroke="#0B1315" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                        </g>
                                    </svg>
                                </div>
                            </a>
                        </div>
                    </div> -->
                </div>
            </div>
            <div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="pswp__bg"></div>
                <div class="pswp__scroll-wrap">
                    <div class="pswp__container">
                        <div class="pswp__item"></div>
                        <div class="pswp__item"></div>
                        <div class="pswp__item"></div>
                    </div>
                    <div class="pswp__ui pswp__ui--hidden">
                        <div class="pswp__top-bar">
                            <!--  Controls are self-explanatory. Order can be changed. -->
                            <div class="pswp__counter"></div>
                            <button class="pswp__button pswp__button--close" title="Close (Esc)"></button>
                            <button class="pswp__button pswp__button--share" title="Share"></button>
                            <button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>
                            <button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button>
                            <div class="pswp__preloader">
                                <div class="pswp__preloader__icn">
                                    <div class="pswp__preloader__cut">
                                        <div class="pswp__preloader__donut"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
                            <div class="pswp__share-tooltip"></div>
                        </div>
                        <button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)">
                        </button>
                        <button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)">
                        </button>
                        <div class="pswp__caption">
                            <div class="pswp__caption__center"></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Gallery Section End -->
        <!-- Testimonial Section Start -->
        <section id="menupage-1-testimonials-sec" class="res1-testimonial-sec d-none">
            <div class="menupage-1-testimo-overlay"></div>
            <div class="container line">
                <span class="line-3"></span>
                <span class="line-4"></span>
                <span class="line-5"> </span>
                <div class="home2-testimonials-sec-full">
                    <div class="home2-test-top">
                        <p class="homemenu-txt1 wow fadeInUp  " data-wow-duration="1s"><span class="pr-10"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/Homepage1/yellow-star.png" alt="yellow-star"></span>TESTIMONIALS<span class="pf-10"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/Homepage1/yellow-star.png" alt="yellow-star"></span></p>
                        <h2 class="homemenu-txt2 homemenu-txt22 wow fadeInUp " data-wow-duration="1.4s">The Reviews Of Customers When Coming To Our Restaurant!</h2>
                    </div>
                    <div class="home2-test-bottom wow fadeInUp" data-wow-duration="1.6s">
                        <div class="home2-test-bottom-full">
                            <div class="home2-test-slider">
                                <p class="home2-test-txt1">“ This bermiz restaurant has left the best impressions! Hospitable hosts, delicious dishes, beautiful presentation, wide wine
                                list and wonderful dessert. I recommend to everyone! I would like to come back here again and again.”</p>
                                <p class="home2-test-txt2">PAUL SERGEO</p>
                            </div>
                            <div class="home2-test-slider">
                                <p class="home2-test-txt1">“ This bermiz restaurant has left the best impressions! Hospitable hosts, delicious dishes, beautiful presentation, wide wine
                                list and wonderful dessert. I recommend to everyone! I would like to come back here again and again.”</p>
                                <p class="home2-test-txt2">PAUL SERGEO</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section> 
        <!-- Testimonial Section End -->
        

 <?php get_footer(); ?>