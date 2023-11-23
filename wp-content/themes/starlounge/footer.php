<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Twenty_One
 * @since Twenty Twenty-One 1.0
 */

?>
			   <!-- Footer Section Start -->
<footer id="footer-section" class="mt-100">
            <div class="container">
                <div class="footer-full-section">
                    <div class="footer-first">
                        <h3>Logo Here</h3>
                        <!-- <img src="assets/images/Homepage1/footer-logo.png" alt="footer-logo"> -->
                        <p class="homepage1-footer-txt1 mt-40"><?php echo get_field('footer_shortcontent', 49); ?></p>
                        <div class="footer-social-medial">
                            <div class="social-media">
                                <a href="https://www.facebook.com/" target="_blank">
                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <mask id="mask0_502_2975" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="24" height="24">
                                            <path d="M0 0H24V24H0V0Z" fill="white"></path>
                                        </mask>
                                        <g mask="url(#mask0_502_2975)">
                                            <path d="M14 13.5H16.5L17.5 9.5H14V7.5C14 6.47 14 5.5 16 5.5H17.5V2.14C17.174 2.097 15.943 2 14.643 2C11.928 2 10 3.657 10 6.7V9.5H7V13.5H10V22H14V13.5Z" fill="#99A9AD"></path>
                                        </g>
                                    </svg>
                                </a>
                            </div>
                            <div class="social-media">
                                <a href="https://twitter.com/" target="_blank">
                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <mask id="mask0_502_2978" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="24" height="24">
                                            <path d="M0 0H24V24H0V0Z" fill="white"></path>
                                        </mask>
                                        <g mask="url(#mask0_502_2978)">
                                            <path d="M22.162 5.65593C21.3986 5.99362 20.589 6.2154 19.76 6.31393C20.6338 5.79136 21.2877 4.96894 21.6 3.99993C20.78 4.48793 19.881 4.82993 18.944 5.01493C18.3146 4.34151 17.4804 3.89489 16.571 3.74451C15.6616 3.59413 14.7279 3.74842 13.9153 4.18338C13.1026 4.61834 12.4564 5.30961 12.0771 6.14972C11.6978 6.98983 11.6068 7.93171 11.818 8.82893C10.1551 8.74558 8.52834 8.31345 7.04329 7.56059C5.55825 6.80773 4.24813 5.75097 3.19801 4.45893C2.8263 5.09738 2.63096 5.82315 2.63201 6.56193C2.63201 8.01193 3.37001 9.29293 4.49201 10.0429C3.82802 10.022 3.17864 9.84271 2.59801 9.51993V9.57193C2.59821 10.5376 2.93238 11.4735 3.54385 12.221C4.15533 12.9684 5.00649 13.4814 5.95301 13.6729C5.33662 13.84 4.69031 13.8646 4.06301 13.7449C4.32987 14.5762 4.85001 15.3031 5.5506 15.824C6.25118 16.3449 7.09714 16.6337 7.97001 16.6499C7.10249 17.3313 6.10918 17.8349 5.04689 18.1321C3.98459 18.4293 2.87413 18.5142 1.77901 18.3819C3.6907 19.6114 5.9161 20.264 8.18901 20.2619C15.882 20.2619 20.089 13.8889 20.089 8.36193C20.089 8.18193 20.084 7.99993 20.076 7.82193C20.8949 7.23009 21.6016 6.49695 22.163 5.65693L22.162 5.65593Z" fill="#99A9AD"></path>
                                        </g>
                                    </svg>
                                </a>
                            </div>
                            <div class="social-media">
                                <a href="https://www.instagram.com/" target="_blank">
                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <mask id="mask0_569_5758" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="24" height="24">
                                            <path d="M0 0H24V24H0V0Z" fill="white"/>
                                        </mask>
                                        <g mask="url(#mask0_569_5758)">
                                            <path d="M12 2C14.717 2 15.056 2.01 16.122 2.06C17.187 2.11 17.912 2.277 18.55 2.525C19.21 2.779 19.766 3.123 20.322 3.678C20.8305 4.1779 21.224 4.78259 21.475 5.45C21.722 6.087 21.89 6.813 21.94 7.878C21.987 8.944 22 9.283 22 12C22 14.717 21.99 15.056 21.94 16.122C21.89 17.187 21.722 17.912 21.475 18.55C21.2247 19.2178 20.8311 19.8226 20.322 20.322C19.822 20.8303 19.2173 21.2238 18.55 21.475C17.913 21.722 17.187 21.89 16.122 21.94C15.056 21.987 14.717 22 12 22C9.283 22 8.944 21.99 7.878 21.94C6.813 21.89 6.088 21.722 5.45 21.475C4.78233 21.2245 4.17753 20.8309 3.678 20.322C3.16941 19.8222 2.77593 19.2175 2.525 18.55C2.277 17.913 2.11 17.187 2.06 16.122C2.013 15.056 2 14.717 2 12C2 9.283 2.01 8.944 2.06 7.878C2.11 6.812 2.277 6.088 2.525 5.45C2.77524 4.78218 3.1688 4.17732 3.678 3.678C4.17767 3.16923 4.78243 2.77573 5.45 2.525C6.088 2.277 6.812 2.11 7.878 2.06C8.944 2.013 9.283 2 12 2ZM12 7C10.6739 7 9.40215 7.52678 8.46447 8.46447C7.52678 9.40215 7 10.6739 7 12C7 13.3261 7.52678 14.5979 8.46447 15.5355C9.40215 16.4732 10.6739 17 12 17C13.3261 17 14.5979 16.4732 15.5355 15.5355C16.4732 14.5979 17 13.3261 17 12C17 10.6739 16.4732 9.40215 15.5355 8.46447C14.5979 7.52678 13.3261 7 12 7V7ZM18.5 6.75C18.5 6.41848 18.3683 6.10054 18.1339 5.86612C17.8995 5.6317 17.5815 5.5 17.25 5.5C16.9185 5.5 16.6005 5.6317 16.3661 5.86612C16.1317 6.10054 16 6.41848 16 6.75C16 7.08152 16.1317 7.39946 16.3661 7.63388C16.6005 7.8683 16.9185 8 17.25 8C17.5815 8 17.8995 7.8683 18.1339 7.63388C18.3683 7.39946 18.5 7.08152 18.5 6.75ZM12 9C12.7956 9 13.5587 9.31607 14.1213 9.87868C14.6839 10.4413 15 11.2044 15 12C15 12.7956 14.6839 13.5587 14.1213 14.1213C13.5587 14.6839 12.7956 15 12 15C11.2044 15 10.4413 14.6839 9.87868 14.1213C9.31607 13.5587 9 12.7956 9 12C9 11.2044 9.31607 10.4413 9.87868 9.87868C10.4413 9.31607 11.2044 9 12 9V9Z" fill="#99A9AD"/>
                                        </g>
                                    </svg>
                                </a>
                            </div>
                            <div class="social-media">
                                <a href="https://in.pinterest.com/" target="_blank">
                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <mask id="mask0_569_5755" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="24" height="24">
                                            <path d="M0 0H24V24H0V0Z" fill="white"/>
                                        </mask>
                                        <g mask="url(#mask0_569_5755)">
                                            <path d="M13.3701 2.09432C10.9774 1.76518 8.54634 2.31287 6.52592 3.63628C4.5055 4.95969 3.03214 6.96942 2.3779 9.29439C1.72365 11.6194 1.9327 14.1025 2.96646 16.2854C4.00021 18.4682 5.78885 20.2033 8.0021 21.1703C7.94224 20.4021 7.99718 19.6293 8.1651 18.8773C8.3501 18.0383 9.4611 13.4143 9.4611 13.4143C9.23986 12.9184 9.1293 12.3803 9.1371 11.8373C9.1371 10.3523 9.9941 9.24432 11.0601 9.24432C11.2516 9.24153 11.4415 9.28002 11.6168 9.35715C11.7921 9.43429 11.9487 9.54827 12.076 9.69134C12.2034 9.83442 12.2984 10.0032 12.3547 10.1863C12.4109 10.3694 12.4271 10.5624 12.4021 10.7523C12.4021 11.6523 11.8241 13.0143 11.5221 14.2923C11.4624 14.5267 11.4586 14.7718 11.511 15.0079C11.5635 15.2441 11.6706 15.4645 11.8239 15.6517C11.9771 15.8388 12.1722 15.9873 12.3933 16.0852C12.6145 16.1831 12.8556 16.2277 13.0971 16.2153C14.9951 16.2153 16.2671 13.7843 16.2671 10.9143C16.2671 8.71432 14.8101 7.06632 12.1241 7.06632C11.4815 7.04135 10.8405 7.14724 10.24 7.37757C9.63958 7.60791 9.09221 7.95787 8.63115 8.40621C8.17008 8.85455 7.80495 9.39192 7.55792 9.9857C7.31089 10.5795 7.18711 11.2172 7.1941 11.8603C7.16546 12.5736 7.3956 13.2733 7.8421 13.8303C7.92553 13.8926 7.98645 13.9803 8.01567 14.0803C8.04489 14.1802 8.04083 14.2869 8.0041 14.3843C7.9581 14.5683 7.8421 15.0073 7.7961 15.1683C7.78653 15.2229 7.76427 15.2745 7.73112 15.3189C7.69797 15.3634 7.65484 15.3994 7.60523 15.4241C7.55561 15.4488 7.50088 15.4615 7.44545 15.4612C7.39002 15.4609 7.33544 15.4476 7.2861 15.4223C5.9021 14.8683 5.2501 13.3453 5.2501 11.6063C5.2501 8.75932 7.6341 5.35132 12.4041 5.35132C16.2001 5.35132 18.7241 8.12832 18.7241 11.0983C18.7241 15.0073 16.5471 17.9463 13.3301 17.9463C12.8493 17.9617 12.3724 17.8556 11.9434 17.6378C11.5145 17.42 11.1474 17.0976 10.8761 16.7003C10.8761 16.7003 10.2981 19.0163 10.1841 19.4543C9.95139 20.211 9.608 20.9291 9.1651 21.5853C10.0881 21.8653 11.0471 22.0053 12.0111 22.0013C13.3247 22.0024 14.6256 21.7443 15.8393 21.2419C17.053 20.7395 18.1556 20.0026 19.0842 19.0734C20.0127 18.1443 20.7488 17.0411 21.2504 15.827C21.7519 14.613 22.0091 13.3119 22.0071 11.9983C22.0059 9.58332 21.1309 7.25032 19.5437 5.4301C17.9566 3.60988 15.7644 2.42539 13.3721 2.09532L13.3701 2.09432Z" fill="#99A9AD"/>
                                        </g>
                                    </svg>
                                </a>
                            </div>
                            <div class="social-media">
                                <a href="https://www.youtube.com/" target="_blank">
                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <mask id="mask0_569_5752" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="24" height="24">
                                            <path d="M0 0H24V24H0V0Z" fill="white"/>
                                        </mask>
                                        <g mask="url(#mask0_569_5752)">
                                            <path d="M21.543 6.498C22 8.28 22 12 22 12C22 12 22 15.72 21.543 17.502C21.289 18.487 20.546 19.262 19.605 19.524C17.896 20 12 20 12 20C12 20 6.107 20 4.395 19.524C3.45 19.258 2.708 18.484 2.457 17.502C2 15.72 2 12 2 12C2 12 2 8.28 2.457 6.498C2.711 5.513 3.454 4.738 4.395 4.476C6.107 4 12 4 12 4C12 4 17.896 4 19.605 4.476C20.55 4.742 21.292 5.516 21.543 6.498V6.498ZM10 15.5L16 12L10 8.5V15.5Z" fill="#99A9AD"/>
                                        </g>
                                    </svg>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="footer-second ">
                        <h4 class="homepage1-footer-txt2">WORKING HOURS</h4>
                        <div class="working-hour-sec mt-40">
                            <?php echo get_field('working_hours', 49); ?>
                            <!-- <div class="working-day">
                                <p class="homepage1-footer-txt1">Monday - Friday</p>
                                <p class="homepage1-footer-txt1">Saturday</p>
                                <p class="homepage1-footer-txt1">Sunday</p>
                            </div>
                            <div class="working-time">
                                <p class="homepage1-footer-txt1">09:00 - 22:00</p>
                                <p class="homepage1-footer-txt1">11:00 - 23:30</p>
                                <p class="homepage1-footer-txt1">11:00 - 23:00</p>
                            </div> -->
                        </div>
                    </div>
                    <div class="footer-third">
                        <h4 class="homepage1-footer-txt2">NEWSLETTER</h4>
                        <p class="homepage1-footer-txt1 mt-40 height-txt">Receive the latest news from us.</p>
                        <div>
                            <form class="subscribe_form">
                                <div class="position-relative">
                                    <input class="subscribe_form_field" placeholder="Your Email Address" type="email">
                                    <svg class="subscribe_email_svg" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <mask id="mask0_520_4735" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="24" height="24">
                                            <rect width="24" height="24" fill="white"/>
                                        </mask>
                                        <g mask="url(#mask0_520_4735)">
                                            <path d="M15.8325 8.17463L10.109 13.9592L3.59944 9.88767C2.66675 9.30414 2.86077 7.88744 3.91572 7.57893L19.3712 3.05277C20.3373 2.76963 21.2326 3.67283 20.9456 4.642L16.3731 20.0868C16.0598 21.1432 14.6512 21.332 14.0732 20.3953L10.106 13.9602" stroke="#FFDE9F" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                        </g>
                                    </svg>
                                </div>
                            </form>
                            <div class="footer-checkbox-sec">
                                <input class="footer-checkbox-input" id="footer-checkbox" type="checkbox">
                                <label for="footer-checkbox" class="footer-chec-txt">I agree to the Privacy Policy</label>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                <div class="homepage-copyright-sec">
                    <div class="copyright-full-sec">
                        <div class="copyright-left">
                            <p class="copyright-txt-homepage1">© Copyright Webart Technology <?php echo date('Y'); ?>.</p>
                        </div>
                        <div class="copyright-right">
                            <div class="copyright-menu">
                                <ul>
                                    <li><a href="#">Privacy Policy</a></li>
                                    <li><a href="#">Terms Of Use</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </footer>
        <!-- Footer Section End -->
        <!-- Fixed Search Bar Start -->
        <div>
            <div class="call-btn">
                <div class="zoomIn"></div>
                <div class="pulse"></div>
                <div class="tada">
                    <a href="tel:+1 888-927-7332">+1 888-927-7332</a>
                </div>
            </div>
            <!-- <div class="fixed-serach-icon ">
                <div class="fixed-search ">
                    <a href="javascript:void(0)">
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <mask id="mask0_504_17203" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="24" height="24">
                                <rect width="24" height="24" fill="white"/>
                            </mask>
                            <g mask="url(#mask0_504_17203)">
                                <circle cx="11.7666" cy="11.7666" r="8.98856" stroke="#0B1315" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M18.0183 18.4851L21.5423 22" stroke="#0B1315" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            </g>
                        </svg>
                    </a>
                </div>
            </div> 
            
            <div class="search-popup">
                <span class="search-back-drop"></span>
                <button class="close-search"><span class="fa fa-times"></span></button>
                <div class="search-inner">
                    <form method="post" action="#">
                        <div class="form-group">
                            <input type="search" name="search-field" value="" placeholder="Search..." required="">
                            <button type="submit"><i class="fa fa-search"></i></button>
                        </div>
                    </form>
                </div>
            </div> -->
        </div>
        <!-- Fixed Search Bar End -->
        <!-- Hero Video Modal Start -->
        <div class="modal fade homepage-video-modal" id="hero-video-modal">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <video class="video-sec" controls loop muted autoplay>
                            <source src="<?php echo get_template_directory_uri(); ?>/assets/images/Homepage1/video.mp4" type="video/mp4">
                            </video>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Hero Video Modal End -->
            <!--Scroll Top to Bottom Start -->
            <div class="scroll-top" data-scroll="up" style="">      
            </div>
            <!--Scroll Top to Bottom  End -->
        </div>
        <script src="<?php echo get_template_directory_uri(); ?>/assets/js/jquery-min-3.6.0.js"></script>
        <script  src="<?php echo get_template_directory_uri(); ?>/assets/js/slick.min.js"></script>
        <script  src="<?php echo get_template_directory_uri(); ?>/assets/js/bootstrap.bundle.min.js"></script>
        <script  src="<?php echo get_template_directory_uri(); ?>/assets/js/aos.js"></script>
        <script  src="<?php echo get_template_directory_uri(); ?>/assets/js/jquery-ui.min.js"></script>
        <script src="<?php echo get_template_directory_uri(); ?>/assets/js/datepicker.js"></script>
        <script src="<?php echo get_template_directory_uri(); ?>/assets/js/wow.min.js"></script>
        <script src="<?php echo get_template_directory_uri(); ?>/assets/js/photoswipe.min.js"></script>
        <script src="<?php echo get_template_directory_uri(); ?>/assets/js/photoswipe-ui-default.min.js"></script>
        <script src="<?php echo get_template_directory_uri(); ?>/assets/js/gallery-popup.js"></script>
        <script src="<?php echo get_template_directory_uri(); ?>/assets/js/TweenMax.min.js"></script>
        <script src="<?php echo get_template_directory_uri(); ?>/assets/js/ScrollMagic.js"></script>
        <script src="<?php echo get_template_directory_uri(); ?>/assets/js/animation.gsap.min.js"></script>
        <script src="<?php echo get_template_directory_uri(); ?>/assets/js/scolling.js"></script>
        <script  src="<?php echo get_template_directory_uri(); ?>/assets/js/custom.js"></script>
    

<?php wp_footer(); ?>

</body>
</html>
