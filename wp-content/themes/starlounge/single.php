<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package WordPress
 * @subpackage Twenty_Twenty_One
 * @since Twenty Twenty-One 1.0
 */

get_header(); ?>

<!-- Hero Section Start -->
      <section id="blogpage-1-section">
         <div class="single-blogpage1-section-img">
            <div class="menupage-1-overlay"></div>
            <div class="menupage-1-conten">
               <h1 class="blog1-hero-txt1 wow fadeInDown" data-wow-duration="1s" data-wow-delay="2.5s">News Details</h1>
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
                  <li class="breadcrumb-item active" aria-current="page">News Details</li>
               </ol>
            </div>
         </div>
         <div class="menupage1-boder"></div>
      </section>
      <!-- Hero Section End -->

<section class="py-5">
	<div class="container">
		<div class="row">

<?php
/* Start the Loop */
while ( have_posts() ) :
	the_post(); 

	//get_template_part( 'template-parts/content/content-single' ); ?>
			<div class="program-block col-md-12">
                    <div class="sidebar-widget">
                        <div class="blog2-category-sec mt-40">
                             <div class="image">
                             	<?php
           if ( has_post_thumbnail() ) :
           	$featured_image = wp_get_attachment_image_src( get_post_thumbnail_id( get_the_ID() ), 'medium' ); ?>
                             	<img class="blog_Img" src="<?php echo $featured_image[0]; ?> " alt="" title="">
                             	<?php endif; ?>
                             </div>
                         </div>
                         <div class="mid-box">
                             <h4 class="singleblog1-txt1 pb-3"><?php the_title(); ?></h4>
                             <div class="singleblog1-txt2"><?php the_content(); ?></div>
                         </div>
                         <!-- <div class="link-box"><a href="#">READ MORE <i class="fa-light fa-angle-right"></i></a></div> -->
                     </div>
                 </div>
			<?php    endwhile; // End of the loop. ?>
			</div>
	</div> 
</section>

			<?php
	if ( is_attachment() ) {
		// Parent post navigation.
		the_post_navigation(
			array(
				/* translators: %s: Parent post link. */
				'prev_text' => sprintf( __( '<span class="meta-nav">Published in</span><span class="post-title">%s</span>', 'twentytwentyone' ), '%title' ),
			)
		);
	}

	// If comments are open or there is at least one comment, load up the comment template.
	//if ( comments_open() || get_comments_number() ) {
	//	comments_template();
//	}

	// Previous/next post navigation.
//	$twentytwentyone_next = is_rtl() ? twenty_twenty_one_get_icon_svg( 'ui', 'arrow_left' ) : twenty_twenty_one_get_icon_svg( 'ui', 'arrow_right' );
//	$twentytwentyone_prev = is_rtl() ? twenty_twenty_one_get_icon_svg( 'ui', 'arrow_right' ) : twenty_twenty_one_get_icon_svg( 'ui', 'arrow_left' );

//	$twentytwentyone_next_label     = esc_html__( 'Next post', 'twentytwentyone' );
//	$twentytwentyone_previous_label = esc_html__( 'Previous post', 'twentytwentyone' );

//	the_post_navigation(
	//	array(
//			'next_text' => '<p class="meta-nav">' . $twentytwentyone_next_label . $twentytwentyone_next . '</p><p class="post-title">%title</p>',
//			'prev_text' => '<p class="meta-nav">' . $twentytwentyone_prev . $twentytwentyone_previous_label . '</p><p class="post-title">%title</p>',
//		)
//	);


get_footer();
