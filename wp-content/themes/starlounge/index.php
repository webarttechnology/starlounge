<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package WordPress
 * @subpackage Twenty_Twenty_One
 * @since Twenty Twenty-One 1.0
 */

get_header(); ?>

<section id="blogpage-1-section">
			<div class="blog1-section-img">
				<div class="menupage-1-overlay"></div>
				<div class="menupage-1-conten">
					<h1 class="blog1-hero-txt1 wow fadeInDown" data-wow-duration="1s" data-wow-delay="1s">News</h1>
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
						<li class="breadcrumb-item active" aria-current="page">News</li>
					</ol>
				</div>
			</div>
			<div class="menupage1-boder"></div>
		</section>

<section class="py-5">
	<div class="container">

<div class="row m-0 blogpage2-deatils">
<div class="col-lg-8 blog8-left" >
<div class="blog2-blog-list">

<?php
if ( have_posts() ) {

	// Load posts loop.
	while ( have_posts() ) {
		the_post();  

		//get_template_part( 'template-parts/content/content', get_theme_mod( 'display_excerpt_or_full_post', 'excerpt' ) ); ?>

		<div class="blog2-blog-item pb-5">
								<div class="blog2-blog-item-img">
									<?php  $image = wp_get_attachment_url(get_post_thumbnail_id($post->ID) ); ?>
								<a href="<?php the_permalink(); ?>"><img src="<?php echo $image; ?>" alt="blog-img" class="img-fluid w-100"></a>
								</div>
								<div class="blogpage2-content-sec">
									<p class="blog2-txt1"><?php echo date('F, j Y'); ?></p>
									<a href="<?php the_permalink(); ?>"><h2 class="blog2-txt2"><?php the_title(); ?></h2></a>
									<?php $content=get_the_content();
									$strpcnt = wp_strip_all_tags($content);
									 ?>
									<div class="blog2-txt3"><?php echo substr($strpcnt,0,100); ?></div>
									<div>
										<a href="<?php the_permalink(); ?>" class="blog-1-read-more">READ MORE
											<svg class="blog1-icon" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
												<mask style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="24" height="24">
													<rect width="24" height="24" fill="white"></rect>
												</mask>
												<g mask="url(#mask0_585_5342)">
													<path d="M19.75 11.7256L4.75 11.7256" stroke="#FFDE9F" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
													<path d="M13.7012 5.70124L19.7512 11.7252L13.7012 17.7502" stroke="#FFDE9F" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
												</g>
											</svg>
										</a>
									</div>
								</div>
							</div>


<?php	}

// Previous/next page navigation.
			the_posts_pagination( array(
				'prev_text'          => __( 'Previous page', 'twentyfifteen' ),
				'next_text'          => __( 'Next page', 'twentyfifteen' ),
				'before_page_number' => '<span class="meta-nav screen-reader-text">' . __( 'Page', 'twentyfifteen' ) . ' </span>',
			) ); 

	// Previous/next page navigation.
	twenty_twenty_one_the_posts_navigation();

} else {

	// If no content, include the "No posts found" template.
	get_template_part( 'template-parts/content/content-none' );

} ?>

</div>
</div>
</div>
</div>
</section>

<?php
get_footer();
