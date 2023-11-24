<?php /* Template Name: Our Menu */

get_header();
 ?>


        <!-- Hero Section Start -->
        <section id="menupage-1-section">
            <div class="menupage-1-section-img">
                <div class="menupage-1-overlay"></div>
                <div class="menupage-1-conten">
                    <h1 class="menupage-1-hero-txt1 wow fadeInDown" data-wow-duration="1s" data-wow-delay="2.5s">Menu</h1>
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
                        <li class="breadcrumb-item active" aria-current="page">Menu</li>
                    </ol>
                </div>
            </div>
            <div class="menupage1-boder"></div>
        </section>
        <!-- Hero Section End -->
        <!--Breakfast Section Start -->

        <?php
      $args = array(
        'post_type' => 'menu',
        'post_status' => 'publish',
        'posts_per_page' => -1,
        'orderby' => 'id',
        'order' => 'ASC',
      );

      $loop = new WP_Query($args);
while ($loop->have_posts()) : $loop->the_post();
        $image = wp_get_attachment_url(get_post_thumbnail_id($post->ID) );
      ?>

        <section id="menupage-1-breakfast" class="pb-5">
            <div class="container line menupage-1-breakfast-mt-100">
                <span class="line-3"></span>
                <span class="line-4"></span>
                <span class="line-5"> </span>
                <div class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="3s">
                    <div class="menupage-1-breakfast-top">
                        <p class="menupage1-break-txt1"><span class="pr-10"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/Homepage1/yellow-star.png" alt="yellow-star"></span><?php echo get_field('menu_type'); ?><span class="pf-10"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/Homepage1/yellow-star.png" alt="yellow-star"></span></p>
                        <h2 class="menupage1-break-txt2"><?php the_title(); ?></h2>
                        <p class="menupage1-break-txt3">Available: <?php echo get_field('available_menu_time'); ?></p>
                    </div>
                    <div class="menupage-1-breakfast-bottom">
                        
                        <div class="tab-description">
                            <?php 
                            $menusec = CFS()->get('menu_item_loop');
                            if(is_array($menusec) || is_object($menusec)){

                                foreach($menusec as $menusecitem){

                             ?>
                           
                                <div class="homepage1-menu-content">
                                    <div class="homepage1-menu-left">
                                        <img src="<?php echo $menusecitem['menu_item_image']; ?>" alt="menu-item-img">
                                    </div>
                                    <div class="homepage1-menu-right">
                                        <h4 class="tab-menu-txt1"><?php echo $menusecitem['menu_item_title']; ?></h4>
                                        <p class="tab-menu-txt2"><?php echo $menusecitem['menu_item_content']; ?></p>
                                        <h5 class="tab-menu-txt3"><?php echo $menusecitem['menu_item_price']; ?></h5>
                                    </div>
                                </div>
                            
                        <?php } } ?>

                            <!-- <a href="single-shop.html">
                                <div class="homepage1-menu-content">
                                    <div class="homepage1-menu-left">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/menupage-1/menu-2.png" alt="menu-item-img">
                                    </div>
                                    <div class="homepage1-menu-right">
                                        <h4 class="tab-menu-txt1">Chicken Biryani</h4>
                                        <p class="tab-menu-txt2">Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato,  and Italian herbs.</p>
                                        <h5 class="tab-menu-txt3">$35</h5>
                                    </div>
                                </div>
                            </a>
                            <a href="single-shop.html">
                                <div class="homepage1-menu-content">
                                    <div class="homepage1-menu-left">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/menupage-1/menu-3.png" alt="menu-item-img">
                                    </div>
                                    <div class="homepage1-menu-right">
                                        <h4 class="tab-menu-txt1">Finger Chicken</h4>
                                        <p class="tab-menu-txt2">Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato,  and Italian herbs.</p>
                                        <h5 class="tab-menu-txt3">$12</h5>
                                    </div>
                                </div>
                            </a>
                            <a href="single-shop.html">
                                <div class="homepage1-menu-content">
                                    <div class="homepage1-menu-left">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/menupage-1/menu-4.png" alt="menu-item-img">
                                    </div>
                                    <div class="homepage1-menu-right">
                                        <h4 class="tab-menu-txt1">Orange Juice</h4>
                                        <p class="tab-menu-txt2">Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato,  and Italian herbs.</p>
                                        <h5 class="tab-menu-txt3">$10</h5>
                                    </div>
                                </div>
                            </a>
                            <a href="single-shop.html">
                                <div class="homepage1-menu-content">
                                    <div class="homepage1-menu-left">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/menupage-1/menu-5.png" alt="menu-item-img">
                                    </div>
                                    <div class="homepage1-menu-right">
                                        <h4 class="tab-menu-txt1">Le Pigeon Burger</h4>
                                        <p class="tab-menu-txt2">Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato,  and Italian herbs.</p>
                                        <h5 class="tab-menu-txt3">$15</h5>
                                    </div>
                                </div>
                            </a>
                            <a href="single-shop.html">
                                <div class="homepage1-menu-content">
                                    <div class="homepage1-menu-left">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/menupage-1/menu-6.png" alt="menu-item-img">
                                    </div>
                                    <div class="homepage1-menu-right">
                                        <h4 class="tab-menu-txt1">Broccoli Rabe</h4>
                                        <p class="tab-menu-txt2">Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato,  and Italian herbs.</p>
                                        <h5 class="tab-menu-txt3">$20</h5>
                                    </div>
                                </div>
                            </a>
                            <a href="single-shop.html">
                                <div class="homepage1-menu-content">
                                    <div class="homepage1-menu-left">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/menupage-1/menu-7.png" alt="menu-item-img">
                                    </div>
                                    <div class="homepage1-menu-right">
                                        <h4 class="tab-menu-txt1">Pineapple Cake</h4>
                                        <p class="tab-menu-txt2">Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato,  and Italian herbs.</p>
                                        <h5 class="tab-menu-txt3">$30</h5>
                                    </div>
                                </div>
                            </a>
                            <a href="single-shop.html">
                                <div class="homepage1-menu-content">
                                    <div class="homepage1-menu-left">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/menupage-1/menu-8.png" alt="menu-item-img">
                                    </div>
                                    <div class="homepage1-menu-right">
                                        <h4 class="tab-menu-txt1">Beef Grilled</h4>
                                        <p class="tab-menu-txt2">Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato,  and Italian herbs.</p>
                                        <h5 class="tab-menu-txt3">$25</h5>
                                    </div>
                                </div>
                            </a> -->
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <?php endwhile;

        wp_reset_postdata();
 ?>
        <!--Breakfast Section End -->
        <!--Lunch Section Start -->
        <!-- <section id="menupage-1-lunch">
            <div class="container menupage-1-lunch-mt-100 line">
                <span class="line-3"></span>
                <span class="line-4"></span>
                <span class="line-5"> </span>
                <div data-aos="fade-right">
                    <div class="menupage-1-breakfast-top">
                        <p class="menupage1-break-txt1"><span class="pr-10"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/Homepage1/yellow-star.png" alt="yellow-star"></span>LUNCH<span class="pf-10"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/Homepage1/yellow-star.png" alt="yellow-star"></span></p>
                        <h2 class="menupage1-break-txt2">Take Your Real Lunch Break</h2>
                        <p class="menupage1-break-txt3">Available: Monday to Sunday 12pm to 3.30pm</p>
                    </div>
                    <div class="menupage-1-breakfast-bottom">
                        <h3 class="d-none">Lunch</h3>
                        <div class="tab-description">
                            <a href="single-shop.html">
                                <div class="homepage1-menu-content">
                                    <div class="homepage1-menu-left">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/menupage-1/menu-1.png" alt="menu-item-img">
                                    </div>
                                    <div class="homepage1-menu-right">
                                        <h4 class="tab-menu-txt1">Antipasto Salad</h4>
                                        <p class="tab-menu-txt2">Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato,  and Italian herbs.</p>
                                        <h5 class="tab-menu-txt3">$20</h5>
                                    </div>
                                </div>
                            </a>
                            <a href="single-shop.html">
                                <div class="homepage1-menu-content">
                                    <div class="homepage1-menu-left">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/menupage-1/menu-2.png" alt="menu-item-img">
                                    </div>
                                    <div class="homepage1-menu-right">
                                        <h4 class="tab-menu-txt1">Chicken Biryani</h4>
                                        <p class="tab-menu-txt2">Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato,  and Italian herbs.</p>
                                        <h5 class="tab-menu-txt3">$35</h5>
                                    </div>
                                </div>
                            </a>
                            <a href="single-shop.html">
                                <div class="homepage1-menu-content">
                                    <div class="homepage1-menu-left">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/menupage-1/menu-3.png" alt="menu-item-img">
                                    </div>
                                    <div class="homepage1-menu-right">
                                        <h4 class="tab-menu-txt1">Finger Chicken</h4>
                                        <p class="tab-menu-txt2">Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato,  and Italian herbs.</p>
                                        <h5 class="tab-menu-txt3">$12</h5>
                                    </div>
                                </div>
                            </a>
                            <a href="single-shop.html">
                                <div class="homepage1-menu-content">
                                    <div class="homepage1-menu-left">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/menupage-1/menu-4.png" alt="menu-item-img">
                                    </div>
                                    <div class="homepage1-menu-right">
                                        <h4 class="tab-menu-txt1">Orange Juice</h4>
                                        <p class="tab-menu-txt2">Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato,  and Italian herbs.</p>
                                        <h5 class="tab-menu-txt3">$10</h5>
                                    </div>
                                </div>
                            </a>
                            <a href="single-shop.html">
                                <div class="homepage1-menu-content">
                                    <div class="homepage1-menu-left">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/menupage-1/menu-5.png" alt="menu-item-img">
                                    </div>
                                    <div class="homepage1-menu-right">
                                        <h4 class="tab-menu-txt1">Le Pigeon Burger</h4>
                                        <p class="tab-menu-txt2">Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato,  and Italian herbs.</p>
                                        <h5 class="tab-menu-txt3">$15</h5>
                                    </div>
                                </div>
                            </a>
                            <a href="single-shop.html">
                                <div class="homepage1-menu-content">
                                    <div class="homepage1-menu-left">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/menupage-1/menu-6.png" alt="menu-item-img">
                                    </div>
                                    <div class="homepage1-menu-right">
                                        <h4 class="tab-menu-txt1">Broccoli Rabe</h4>
                                        <p class="tab-menu-txt2">Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato,  and Italian herbs.</p>
                                        <h5 class="tab-menu-txt3">$20</h5>
                                    </div>
                                </div>
                            </a>
                            <a href="single-shop.html">
                                <div class="homepage1-menu-content">
                                    <div class="homepage1-menu-left">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/menupage-1/menu-7.png" alt="menu-item-img">
                                    </div>
                                    <div class="homepage1-menu-right">
                                        <h4 class="tab-menu-txt1">Pineapple Cake</h4>
                                        <p class="tab-menu-txt2">Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato,  and Italian herbs.</p>
                                        <h5 class="tab-menu-txt3">$30</h5>
                                    </div>
                                </div>
                            </a>
                            <a href="single-shop.html">
                                <div class="homepage1-menu-content">
                                    <div class="homepage1-menu-left">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/menupage-1/menu-8.png" alt="menu-item-img">
                                    </div>
                                    <div class="homepage1-menu-right">
                                        <h4 class="tab-menu-txt1">Beef Grilled</h4>
                                        <p class="tab-menu-txt2">Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato,  and Italian herbs.</p>
                                        <h5 class="tab-menu-txt3">$25</h5>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <section id="menupage-1-dinner">
            <div class="container menupage-1-dinner-mt-100 line">
                <span class="line-3"></span>
                <span class="line-4"></span>
                <span class="line-5"> </span>
                <div data-aos="fade-left">
                    <div class="menupage-1-breakfast-top">
                        <p class="menupage1-break-txt1"><span class="pr-10"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/Homepage1/yellow-star.png" alt="yellow-star"></span>DINNER<span class="pf-10"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/Homepage1/yellow-star.png" alt="yellow-star"></span></p>
                        <h2 class="menupage1-break-txt2">Just Relax With Your Family</h2>
                        <p class="menupage1-break-txt3">Available: Monday to Sunday 8pm to 11.30pm</p>
                    </div>
                    <div class="menupage-1-breakfast-bottom">
                        <h3 class="d-none">Dinner</h3>
                        <div class="tab-description">
                            <a href="single-shop.html">
                                <div class="homepage1-menu-content">
                                    <div class="homepage1-menu-left">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/menupage-1/menu-1.png" alt="menu-item-img">
                                    </div>
                                    <div class="homepage1-menu-right">
                                        <h4 class="tab-menu-txt1">Antipasto Salad</h4>
                                        <p class="tab-menu-txt2">Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato,  and Italian herbs.</p>
                                        <h5 class="tab-menu-txt3">$20</h5>
                                    </div>
                                </div>
                            </a>
                            <a href="single-shop.html">
                                <div class="homepage1-menu-content">
                                    <div class="homepage1-menu-left">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/menupage-1/menu-2.png" alt="menu-item-img">
                                    </div>
                                    <div class="homepage1-menu-right">
                                        <h4 class="tab-menu-txt1">Chicken Biryani</h4>
                                        <p class="tab-menu-txt2">Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato,  and Italian herbs.</p>
                                        <h5 class="tab-menu-txt3">$35</h5>
                                    </div>
                                </div>
                            </a>
                            <a href="single-shop.html">
                                <div class="homepage1-menu-content">
                                    <div class="homepage1-menu-left">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/menupage-1/menu-3.png" alt="menu-item-img">
                                    </div>
                                    <div class="homepage1-menu-right">
                                        <h4 class="tab-menu-txt1">Finger Chicken</h4>
                                        <p class="tab-menu-txt2">Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato,  and Italian herbs.</p>
                                        <h5 class="tab-menu-txt3">$12</h5>
                                    </div>
                                </div>
                            </a>
                            <a href="single-shop.html">
                                <div class="homepage1-menu-content">
                                    <div class="homepage1-menu-left">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/menupage-1/menu-4.png" alt="menu-item-img">
                                    </div>
                                    <div class="homepage1-menu-right">
                                        <h4 class="tab-menu-txt1">Orange Juice</h4>
                                        <p class="tab-menu-txt2">Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato,  and Italian herbs.</p>
                                        <h5 class="tab-menu-txt3">$10</h5>
                                    </div>
                                </div>
                            </a>
                            <a href="single-shop.html">
                                <div class="homepage1-menu-content">
                                    <div class="homepage1-menu-left">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/menupage-1/menu-5.png" alt="menu-item-img">
                                    </div>
                                    <div class="homepage1-menu-right">
                                        <h4 class="tab-menu-txt1">Le Pigeon Burger</h4>
                                        <p class="tab-menu-txt2">Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato,  and Italian herbs.</p>
                                        <h5 class="tab-menu-txt3">$15</h5>
                                    </div>
                                </div>
                            </a>
                            <a href="single-shop.html">
                                <div class="homepage1-menu-content">
                                    <div class="homepage1-menu-left">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/menupage-1/menu-6.png" alt="menu-item-img">
                                    </div>
                                    <div class="homepage1-menu-right">
                                        <h4 class="tab-menu-txt1">Broccoli Rabe</h4>
                                        <p class="tab-menu-txt2">Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato,  and Italian herbs.</p>
                                        <h5 class="tab-menu-txt3">$20</h5>
                                    </div>
                                </div>
                            </a>
                            <a href="single-shop.html">
                                <div class="homepage1-menu-content">
                                    <div class="homepage1-menu-left">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/menupage-1/menu-7.png" alt="menu-item-img">
                                    </div>
                                    <div class="homepage1-menu-right">
                                        <h4 class="tab-menu-txt1">Pineapple Cake</h4>
                                        <p class="tab-menu-txt2">Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato,  and Italian herbs.</p>
                                        <h5 class="tab-menu-txt3">$30</h5>
                                    </div>
                                </div>
                            </a>
                            <a href="single-shop.html">
                                <div class="homepage1-menu-content">
                                    <div class="homepage1-menu-left">
                                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/menupage-1/menu-8.png" alt="menu-item-img">
                                    </div>
                                    <div class="homepage1-menu-right">
                                        <h4 class="tab-menu-txt1">Beef Grilled</h4>
                                        <p class="tab-menu-txt2">Virgin olive oil, touch of garlic, prawns, green peas, sun dried tomato,  and Italian herbs.</p>
                                        <h5 class="tab-menu-txt3">$25</h5>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <section id="reservation-sec" >
            <div class="menupage-1-reser-overlay"></div>
            <div class="container">
                <div class="reservation-sec-full" data-aos="fade-down">
                    <div class="reser-top">
                        <p class="reser-txt1-menu1"><span class="pr-10"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/Homepage1/yellow-star.png" alt="yellow-star"></span>RESERVATION<span class="pf-10"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/Homepage1/yellow-star.png" alt="yellow-star"></span></p>
                        <h2 class="reser-txt2-menu1">Book A Table</h2>
                        <p class="reser-txt3-menu1">You can Call Us directly at <a href="tel:+01(234)5678899"><span class="menupage1-no">+01 (234) 567 8899</span></a></p>
                    </div>
                    <div class="reser-bottom-sec">
                        <form class="menupage1-form">
                            <div class="form-menupage1">
                                <div  class="single-input-form-menupage1">
                                    <input type="text" name="name" placeholder="Name" class="menupage1-form-custom name-icon">
                                </div>
                                <div class="single-input-form-menupage1">
                                    <input type="email" name="email" placeholder="Email Address" class="menupage1-form-custom email-icon">
                                </div>
                                <div class="single-input-form-menupage1">
                                    <input type="tel" name="number" placeholder="Phone Number" class="menupage1-form-custom mobile-icon">
                                </div>
                                <div class="single-input-form-menupage1">
                                    <select name="persons" class="menupage1-form-custom arrow-icon">
                                        <option>1 Person</option>
                                        <option>2 Persons</option>
                                        <option>3 Persons</option>
                                        <option>4 Persons</option>
                                        <option>5 Persons</option>
                                        <option>6 Persons</option>
                                        <option>7 Persons</option>
                                    </select>
                                </div>
                                <div class="single-input-form-menupage1 ">
                                    <input type="text" id="datepicker" autocomplete="off" placeholder="dd/mm/yy" class="menupage1-form-custom arrow-icon">
                                </div>
                                <div class="single-input-form-menupage1">
                                    <select name="persons" class="menupage1-form-custom arrow-icon">
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
                            </div>
                            <div class="menupage-1-book-now-btn">
                                <a href="javascript:void(0)">Book Now</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section> -->
        
        <section id="app-section-menupage1 d" class="d-none">
            <div class="container line app-section-menupage1">
                <span class="line-3"></span>
                <span class="line-4"></span>
                <span class="line-5"> </span>
                <div class="fast-ordering-sec-full">
                    <div class="fast-ordering-left" data-aos="fade-right">
                        <div class="fast-top-sec">
                            <p class="fast-order-txt1"><span class="pr-10"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/Homepage1/yellow-star.png" alt="yellow-star"></span>MOBILE APP<span class="pf-10"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/Homepage1/yellow-star.png" alt="yellow-star"></span></p>
                        </div>
                        <h2 class="fast-order-txt2 ">Get Our Delicious
                        Dish Delivered at Your Doorstep!</h2>
                        <p class="fast-order-txt3">Vitae neque libero ullamcorper gravida fusce donec feugiat massa dui. Turpis massa et ipsum orci, sem commodo. Sapien hendrerit cursus eros, netus lacus, risus in quis vitae.</p>
                        <div class="fast-otder-media-sec">
                            <div>
                                <a href="javascript:void(0)"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/Homepage1/google.png" alt="google-img" class="img-fluid"></a>
                            </div>
                            <div>
                                <a href="javascript:void(0)"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/Homepage1/appstrore.png" alt="appstore-img" class="img-fluid"></a>
                            </div>
                        </div>
                    </div>
                    <div class="fast-ordering-right" data-aos="fade-left">
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/Homepage2/mobile-img.png" alt="mobile-img">
                    </div>
                </div>
            </div>
        </section> 
        <!-- Mobile Section End -->
        <!-- Testimonial Section Start -->
        <section id="menupage-1-testimonials-sec" class="d-none">
            <div class="menupage-1-testimo-overlay"></div>
            <div class="container">
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