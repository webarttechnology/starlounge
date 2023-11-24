<?php /* Template Name: Contact */

get_header();
 ?>
    
        <!-- Header Section End -->
        <!--Header Section Start -->
        <section id="menupage-1-section">
            <div class="contact-us-img">
                <div class="menupage-1-overlay"></div>
                <div class="menupage-1-conten">
                    <h1 class="menupage-1-hero-txt1 wow fadeInDown" data-wow-duration="1s" data-wow-delay="2.5s">Contact Us</h1>
                </div>
            </div>
            <div class="breadcrumb-section">
                <div class="container">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="index.php">
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
                        <li class="breadcrumb-item active" aria-current="page">Contact Us</li>
                    </ol>
                </div>
            </div>
            <div class="menupage1-boder"></div>
        </section>
        <!-- Header Section Start -->
        <!-- Contact  Section Start -->
        <section id="contact-us-page">
            <div class="container ptb-100 line ">
                <span class="line-3"></span>
                <span class="line-4"></span>
                <span class="line-5"> </span>
                <div class="about-us-page-full">
                    <div class="about-us-left">
                        <div class="about-us-form">
                            <div class="about-us-form-top">
                                <h2 class="about-us-txt1">Got Any Questions?</h2>
                                <p class="about-us-txt2">Use the form below to get in touch with the support team</p>
                            </div>
                            <?php echo do_shortcode('[contact-form-7 id="2276c02" title="Contact Page Form"]'); ?>
                            <!-- <div class="about-us-form-bottom">
                                <div class="single-input-form-about-us">
                                    <input type="text" name="name" placeholder="Name" class="about-us-input-custom name-icon">
                                </div>
                                <div class="single-input-form-about-us">
                                    <input type="email" name="email" placeholder="Email Address" class="about-us-input-custom email-icon">
                                </div>
                                <div class="single-input-form-about-us">
                                    <input type="tel" name="number" placeholder="Phone Number" class="about-us-input-custom mobile-icon">
                                </div>
                                <div class="single-input-form-about-us">
                                    <textarea  name="comment"  placeholder="Message" class="about-us-message message-icon"></textarea>
                                </div>
                                <div class="send-message-btn">
                                    <a href="#">Send Your Message</a>
                                </div>
                            </div> -->
                        </div>
                    </div>
                    <div class="about-us-right">
                        <div class="about-us-right-full">
                            <div class="about-first-img">
                                <img src="<?php echo get_field('contact_page_right_side_image_1'); ?>" alt="item-img" class="img-fluid">
                            </div>
                            <div class="about-second-img">
                                <img src="<?php echo get_field('contact_page_right_side_image_2'); ?>" alt="item-img" class="img-fluid">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Contact  Section End -->
        <!-- Map Section Start -->
        <div class="map-section-about-us">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3022.832395929507!2d-73.99053220947113!3d40.743713361911816!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c259a7adf1fcf3%3A0xb9fa8d899b755215!2s71%20Madison%20Ave%2C%20New%20York%2C%20NY%2010016%2C%20USA!5e0!3m2!1sen!2sin!4v1688107889372!5m2!1sen!2sin" width="1920" height="690" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
        <!-- Map Section End -->
       

 <?php get_footer(); ?>