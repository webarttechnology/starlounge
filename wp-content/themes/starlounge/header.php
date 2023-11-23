<?php
/**
 * The header.
 *
 * This is the template that displays all of the <head> section and everything up until main.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Twenty_One
 * @since Twenty Twenty-One 1.0
 */

?>
<!doctype html>
<html <?php language_attributes(); ?> <?php twentytwentyone_the_html_classes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="icon" href="<?php echo get_template_directory_uri(); ?>/assets/images/favicon/icon.png">
    <link href="https://fonts.googleapis.com/css2?family=Elsie&amp;display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Elsie&amp;family=Lexend:wght@400;500&amp;display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/all.min.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/slick.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/aos.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/animate.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/photoswipe.min.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/default-skin.min.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/style.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/media-query.css">
	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div class="site_content">
        <!-- Preloader Start -->
        <div id="overlayer">
            <div id="spinner">
                <svg class="spinner-webkit" xmlns="http://www.w3.org/2000/svg" viewBox="-1 -1 54 54">
                    <path  d="M28.14,44a3.26,3.26,0,0,1,.53,1.63l.3,4.93a1.42,1.42,0,0,0,1.66,1.31A25.85,25.85,0,0,0,52.18,26.38v0A25.84,25.84,0,1,0,22.05,51.83a1.43,1.43,0,0,0,1.66-1.31L24,45.6a3.74,3.74,0,0,1,1.7-2.84l6.52-5.18a7.06,7.06,0,0,0,2.61-5.71L33.43,9.11A.16.16,0,0,0,33.26,9L32.18,9A1.4,1.4,0,0,0,30.9,10.4v15a1.46,1.46,0,0,1-1.46,1.46h0A1.46,1.46,0,0,1,28,25.45V10.79a1.65,1.65,0,0,0-1.65-1.65h0a1.65,1.65,0,0,0-1.65,1.65V25.45a1.46,1.46,0,0,1-1.46,1.46h0a1.46,1.46,0,0,1-1.46-1.46v-15A1.4,1.4,0,0,0,20.5,9L19.42,9a.16.16,0,0,0-.17.15L17.84,31.87a7.06,7.06,0,0,0,2.61,5.71l5.89,4.68"></path>
                </svg>
                <div class="spinner-ie"></div>
            </div>
        </div>   
        <!-- Preloader End -->
        <!-- Header Section Start -->
        <header id="header-homepage1">
            <div class="header-full-section">
                <div class="header-logo">
                    <a href="<?php echo get_site_url(); ?>">
                        <!-- <img src="assets/images/Homepage1/logo.png" alt="header-logo" class="homepage1-logo"> -->
                        Logo Here
                    </a>
                </div>
                <div class="header-menu-wrap">
                    <div class="header-nav-wrap">
                        <nav class="navbar navbar-expand-xl p-0">
                            <div class="navbar-collapse" id="navbarSupportedContent">
                                <div class="navbar-nav mx-auto align-items-center">
                                    <?php wp_nav_menu( array('menu' => 'Header Menu', 'container' => '', 'items_wrap' => '<ul class="nav-left p-0">%3$s</ul>' )); ?>
                                    <!-- <ul class="nav-left p-0">
                                        <li class="nav-item ">
                                            <a class="nav-link active" aria-current="page" href="index.php">Home</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="about-us.php">
                                                About us
                                            </a>
                                        </li>
                                        <li class="nav-item ">
                                            <a class="nav-link" href="menupage-1.php">
                                            Our Menu
                                            </a>
                                        </li>
                                        <li class="nav-item ">
                                            <a class="nav-link" href="event.php">
                                                Events
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="recipe.php">Recipe</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="reservation-1.php">Reservation</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="news.php">News</a>
                                        </li>
                                        
                                        <li class="nav-item">
                                            <a class="nav-link" href="contact-us.php">Contact Us</a>
                                        </li>
                                    </ul> -->
                                </div>
                            </div>
                        </nav>
                    </div>
                </div>
                <div class="mobile-menu-wrap d-lg-none d-block">
                    <div class="mb-header-left">
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedmobile" aria-controls="navbarSupportedmobile" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"><i class="fa-solid fa-bars"></i></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedmobile">
                            <span class="close-menu"><i class="fa-regular fa-xmark"></i></span>
                            <nav id='cssmenu'>                                      
                                <ul class="open-detail-menu">
                                    <li><a href='index.php'>Home</a>
                                    </li>
                                    <li><a href='#'>About us</a>
                                    </li>
                                    <li><a href='#'>Services</a>
                                    </li>
                                    <li><a href='#'>Blog</a>
                                    </li>
                                    <li><a href='#'>Contact us</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
                <div class="header-cart-sec">
                    <div class="mobile-menu-icon">
                        <a data-bs-toggle="collapse" href="#navbarSupportedmobile" role="button">
                            <i class="fa-solid fa-bars"></i>
                        </a>    
                    </div>
                    <div class="header-cart-sec-first d-none">
                        <a href="#" class="cart-badge">
                            <img src="assets/images/Homepage1/cart-icon.svg" alt="cart-icon">
                            <div class="cart-no">0</div>
                        </a>
                    </div>
                </div>
            </div>
            <div class="header-boder"></div>
        </header>
        <!-- Header Section End -->
