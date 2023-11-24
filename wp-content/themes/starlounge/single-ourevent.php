<?php get_header(); ?>


 
		<!-- Hero Section Start -->
		<section id="blogpage-1-section">
			<div class="single-blogpage1-section-img">
				<div class="menupage-1-overlay"></div>
				<div class="menupage-1-conten">
					<h1 class="blog1-hero-txt1 wow fadeInDown" data-wow-duration="1s" data-wow-delay="2.5s">Event Details</h1>
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
						<li class="breadcrumb-item active" aria-current="page">Event Details</li>
					</ol>
				</div>
			</div>
			<div class="menupage1-boder"></div>
		</section>
		<!-- Hero Section End -->
		<!-- Blogpage Details Section Start -->
		<section id="single-blogpage1-deatils-section">
			<div class="container ptb-100 line">
				<span class="line-3"></span>
				<span class="line-4"></span>
				<span class="line-5"> </span>
				<div class="row m-0 single-blogpage2-deatils">
					<div class="col-lg-4 blog8-left order-lg-1 order-2">
						<h2 class="d-none">BLOGPAGE</h2>
						<div class="blog2-sidebar-right">
							<!-- <div class="sidebar-widget">
								<div class="search-wrapper">
									<form class="search-form" method="get">
										<input type="text"  placeholder="Search" class="blog2-search-input">
										<button type="submit" class="search-btn">
											<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
												<mask  style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="24" height="24">
													<rect width="24" height="24" fill="white"></rect>
												</mask>
												<g mask="url(#mask0_504_17203)">
													<circle cx="11.7666" cy="11.7666" r="8.98856" stroke="#0B1315" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></circle>
													<path d="M18.0183 18.4851L21.5423 22" stroke="#0B1315" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
												</g>
											</svg>
										</button>
									</form>
								</div>
							</div> -->
							<!-- <div class="sidebar-widget d-none" >
								<div class="blog2-slider-sec mt-40">
									<h3 class="blog2-slider-txt1">About Bermiz</h3>
									<div class="blog2-slider-top">
										<div class="blog2-slider-sec-img">
											<div class="blog2-slide">
												<img src="assets/images/blogpage2/about-1.png" alt="about-img" class="img-fluid">
											</div>
											<div class="blog2-slide">
												<img src="assets/images/blogpage2/about-1.png" alt="about-img" class="img-fluid">
											</div>
											<div class="blog2-slide">
												<img src="assets/images/blogpage2/about-1.png" alt="about-img" class="img-fluid">
											</div>
											<div class="blog2-slide">
												<img src="assets/images/blogpage2/about-1.png" alt="about-img" class="img-fluid">
											</div>
										</div>
									</div>
									<div>
										<p class="blog2-slider-txt2">By day, Bermiz provides a hub to meet friends and colleagues with a well-crafted wine list, discreet yet professional service and relaxed setting.</p>
										<div class="blogpage2-book-btn">
											<a href="reservation-1.html">Book A Table</a>
										</div>
									</div>
								</div>
							</div> -->
							<div class="sidebar-widget">
								<div class="blog2-category-sec mt-40">
									<?php	 if ( has_post_thumbnail() ) :
           	$featured_image = wp_get_attachment_image_src( get_post_thumbnail_id( get_the_ID() ), 'medium' ); ?>
								<img src="<?php echo $featured_image[0]; ?>" alt="blog-img" class="img-fluid w-100">
									<?php endif; ?>
									
								</div>
							</div>
							<!-- <div class="sidebar-widget d-none">
								<div class="blog2-post-section mt-40">
									<h3 class="blog2-slider-txt1">Popular Posts</h3>
									<div class="blog2-post-section">
										<div class="blog2-post-wrapper">
											<div class="blog2-post-img">
												<img src="assets/images/blogpage2/post-1.png" alt="post-img">
											</div>
											<div class="blog2-post-content">
												<p class="blog2-post-txt1">How to choose the best type of combi oven...</p>	
												<h4 class="blog2-post-txt2">July 28, 2022</h4>
											</div>
										</div>
										<div class="blog2-post-wrapper">
											<div class="blog2-post-img">
												<img src="assets/images/blogpage2/post-2.png" alt="post-img">
											</div>
											<div class="blog2-post-content">
												<p class="blog2-post-txt1">8 Restaurant entertainment ideas to...</p>	
												<h4 class="blog2-post-txt2">July 28, 2022</h4>
											</div>
										</div>
										<div class="blog2-post-wrapper">
											<div class="blog2-post-img">
												<img src="assets/images/blogpage2/post-3.png" alt="post-img">
											</div>
											<div class="blog2-post-content">
												<p class="blog2-post-txt1">Why Food Photography & Styling are importany?</p>	
												<h4 class="blog2-post-txt2">July 28, 2022</h4>
											</div>
										</div>
										<div class="blog2-post-wrapper">
											<div class="blog2-post-img">
												<img src="assets/images/blogpage2/post-4.png" alt="post-img">
											</div>
											<div class="blog2-post-content">
												<p class="blog2-post-txt1">Chicken wings of barbecue in sweetly...</p>	
												<h4 class="blog2-post-txt2">July 28, 2022</h4>
											</div>
										</div>
										<div class="blog2-post-wrapper">
											<div class="blog2-post-img">
												<img src="assets/images/blogpage2/post-5.png" alt="post-img">
											</div>
											<div class="blog2-post-content">
												<p class="blog2-post-txt1">Search For Desired Food Item Or Restaurants...</p>	
												<h4 class="blog2-post-txt2">July 28, 2022</h4>
											</div>
										</div>
									</div>
								</div>
							</div> -->
							<!-- <div class="sidebar-widget d-none">
								<div class="blogpage2-tags-sec mt-40">
									<h3 class="blog2-slider-txt1">Tags</h3>
									<ul class="blog2-tag-list p-0">
										<li><a href="javascript:void(0);">Desserts</a></li>
										<li><a href="javascript:void(0);">Dinning</a></li>
										<li><a href="javascript:void(0);">Food</a></li>
										<li><a href="javascript:void(0);">Recipes</a></li>
										<li><a href="javascript:void(0);">Menu</a></li>
										<li><a href="javascript:void(0);">Restaurant</a></li>
										<li><a href="javascript:void(0);">Style</a></li>
										<li><a href="javascript:void(0);">Whiskey</a></li>
									</ul>
								</div>
							</div> -->
						</div>
					</div>
					<div class="col-lg-8 blog8-left order-lg-2 order-1" >
						<div class="single-blogpage1-blog-list">
							<!-- <div class="single-blogpage2-quote d-none">
								<div class="single-blogpage2-content">
									<p class="single-blogpage2-txt1">Eating is so intimate. It's very sensual. When you invite someone to sit at your table and you want to cook for them, you're inviting a person into your life.
									</p>
									<p class="single-blogpage2-txt2">Maya Angelou</p>
								</div>
							</div> -->

							<div class="singleblog1-content-sec">
								<!-- <div class="singleblog1-date">
									<span class="blog4-txt1">DINNER</span>
									<span class="blog4-date">SEPTEMBER 20, 2022 </span>
								</div> -->	
						<
								<h2 class="singleblog1-txt1"><?php the_title() ?></h2>
								<div class="singleblog1-txt2">
								<?php the_content(); ?>
								<!-- <p class="singleblog1-txt2">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt utlabor met dolore magna sens aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labori nisi ut aliquip ex ea commodo consequat. Duis auteirm ure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupin datat non proident tusunt.</p> -->
								<!-- <p class="singleblog1-txt3">
								Mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusant tium doloremque laudan tiumotam rem aperiam aq ue ipsa quae ab illo inventore veritatis etquai sarchitecto beatae vitae dicta sunt expli cabos Nemoenim ipsam voluptatem quia voluptas sitasper.</p> -->
							</div>
							</div>
							
							<!-- <div class="singleblog1-content3-sec">
								<p  class="singleblog1-txt2 m-0">
									Purus pulvinar arcu odio eget curabitur amet, molestie dui. Lacus quis magna turpis a lectus neque. Facilisi mauris auctor porttitor placerat donec lectus interdum. Et porttitor cursus bibendum tellus tincidunt id in auctor. Mattis vitae mattis est, diam est. Suscipit consequat proin amet neque condimentum et tortor. Facilisis porttitor sed porta cras. Eget elit urna, neque massa. Neque morbi dictum nunc molestie ipsum suspendisse non quis venenatis. Platea mi vehicula leo, leo proin id. Morbi facilisis consequat auctor gravida eget fusce. Posuere et ultricies in at.
								</p>
								<p class="singleblog1-txt3">
								Ac in ipsum nisi purus eu mattis netus urna, enim. Pellentesque pellentesque a at feugiat diam tincidunt turpis. Platea cras laoreet morbi dolor massa non. Nec praesent facilisi risus eget.</p>
							</div> -->
							<!-- <div class="singleblog1-content4-sec">
								<div class="singleblog1-content4-sec-full">
									<div class="singleblogpage1-img-sec">
										<img src="assets/images/single-blogpage1/blog-2.png" alt="blog-img" class="img-fluid w-100">
									</div>
									<div class="singleblogpage1-img-sec">
										<img src="assets/images/single-blogpage1/blog-3.png" alt="blog-img" class="img-fluid w-100">
									</div>
								</div>
							</div> -->
							<!-- <div class="singleblog1-content3-sec">
								<p class="singleblog1-txt2 m-0">Fringilla ultrices aliquam turpis ultricies quis arcu euismod sodales. Justo non, dolor faucibus maecenas. Nulla in aliquam facilisis purus. Ultricies molestie id nisi, posuere urna ac. Pharetra, feugiat orci viverra ut pretium faucibus et, quisque nulla. Eget aliquet leo odio pharetra a, id consequat. Laoreet quam et nibh risus congue in. Senectus nec tortor massa volutpat, vitae pretium. Sed vulputate enim sodales adipiscing sit massa id.</p>
								<div class="single-blogpage1-boder"></div>
							</div> -->
							<div class="singleblog1-content5-sec d-none">
								<div class="singleblog1-content5-sec-full">
									<div class="singlepage1-content-left">
										<div class="blog-tags">
											<span>Tags: </span><a href="javascript:void(0);">Spicy</a>, <a href="javascript:void(0);">Party</a>
										</div>
									</div>
									<div class="singlepage1-content-right">
										<div class="single-blogpage1-social-icon">
											<div class="single-chefs-page-social-icon">
												<a href="https://www.facebook.com/" target="_blank">
													<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
														<mask id="mask0_502_12949" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="20" height="20">
															<path d="M0 0H20V20H0V0Z" fill="white"></path>
														</mask>
														<g mask="url(#mask0_502_12949)">
															<path d="M11.6654 11.25H13.7487L14.582 7.91669H11.6654V6.25002C11.6654 5.39169 11.6654 4.58335 13.332 4.58335H14.582V1.78335C14.3104 1.74752 13.2845 1.66669 12.2012 1.66669C9.9387 1.66669 8.33203 3.04752 8.33203 5.58335V7.91669H5.83203V11.25H8.33203V18.3334H11.6654V11.25Z" fill="#99A9AD"></path>
														</g>
													</svg>
												</a>
											</div>
											<div class="single-chefs-page-social-icon">
												<a href="https://twitter.com/" target="_blank">
													<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
														<mask id="mask0_502_12954" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="20" height="20">
															<path d="M0 0H20V20H0V0Z" fill="white"></path>
														</mask>
														<g mask="url(#mask0_502_12954)">
															<path d="M18.4702 4.71333C17.834 4.99474 17.1593 5.17956 16.4685 5.26167C17.1967 4.82619 17.7416 4.14084 18.0019 3.33333C17.3185 3.74 16.5694 4.025 15.7885 4.17917C15.264 3.61798 14.5688 3.2458 13.811 3.12049C13.0532 2.99517 12.2752 3.12374 11.5979 3.48621C10.9207 3.84868 10.3822 4.42474 10.0661 5.12483C9.75008 5.82492 9.67417 6.60982 9.85021 7.3575C8.46447 7.28804 7.10882 6.92794 5.87128 6.30055C4.63374 5.67317 3.54198 4.79254 2.66688 3.71583C2.35712 4.24788 2.19434 4.85269 2.19521 5.46833C2.19521 6.67667 2.81021 7.74417 3.74521 8.36917C3.19188 8.35175 2.65074 8.20232 2.16688 7.93333V7.97667C2.16704 8.78142 2.44552 9.56135 2.95508 10.1842C3.46465 10.8071 4.17394 11.2346 4.96271 11.3942C4.44905 11.5334 3.91046 11.5539 3.38771 11.4542C3.6101 12.1469 4.04355 12.7527 4.62737 13.1868C5.21119 13.6209 5.91615 13.8615 6.64354 13.875C5.92061 14.4428 5.09286 14.8625 4.20761 15.1101C3.32236 15.3578 2.39698 15.4285 1.48438 15.3183C3.07746 16.3429 4.93196 16.8868 6.82604 16.885C13.2369 16.885 16.7427 11.5742 16.7427 6.96833C16.7427 6.81833 16.7385 6.66667 16.7319 6.51833C17.4143 6.02514 18.0032 5.41418 18.471 4.71417L18.4702 4.71333Z" fill="#99A9AD"></path>
														</g>
													</svg>
												</a>
											</div>
											<div class="single-chefs-page-social-icon">
												<a href="https://www.instagram.com/" target="_blank">
													<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
														<mask id="mask0_502_12959" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="20" height="20">
															<path d="M0 0H20V20H0V0Z" fill="white"></path>
														</mask>
														<g mask="url(#mask0_502_12959)">
															<path d="M10.0013 7.50002C9.33826 7.50002 8.70238 7.76341 8.23353 8.23225C7.76469 8.70109 7.5013 9.33698 7.5013 10C7.5013 10.6631 7.76469 11.2989 8.23353 11.7678C8.70238 12.2366 9.33826 12.5 10.0013 12.5C10.6643 12.5 11.3002 12.2366 11.7691 11.7678C12.2379 11.2989 12.5013 10.6631 12.5013 10C12.5013 9.33698 12.2379 8.70109 11.7691 8.23225C11.3002 7.76341 10.6643 7.50002 10.0013 7.50002ZM10.0013 5.83335C11.1064 5.83335 12.1662 6.27234 12.9476 7.05374C13.729 7.83514 14.168 8.89495 14.168 10C14.168 11.1051 13.729 12.1649 12.9476 12.9463C12.1662 13.7277 11.1064 14.1667 10.0013 14.1667C8.89623 14.1667 7.83643 13.7277 7.05502 12.9463C6.27362 12.1649 5.83464 11.1051 5.83464 10C5.83464 8.89495 6.27362 7.83514 7.05502 7.05374C7.83643 6.27234 8.89623 5.83335 10.0013 5.83335ZM15.418 5.62502C15.418 5.90129 15.3082 6.16624 15.1129 6.36159C14.9175 6.55694 14.6526 6.66669 14.3763 6.66669C14.1 6.66669 13.8351 6.55694 13.6397 6.36159C13.4444 6.16624 13.3346 5.90129 13.3346 5.62502C13.3346 5.34875 13.4444 5.0838 13.6397 4.88845C13.8351 4.6931 14.1 4.58335 14.3763 4.58335C14.6526 4.58335 14.9175 4.6931 15.1129 4.88845C15.3082 5.0838 15.418 5.34875 15.418 5.62502ZM10.0013 3.33335C7.93964 3.33335 7.60297 3.33919 6.6438 3.38169C5.99047 3.41252 5.55214 3.50002 5.14547 3.65835C4.7838 3.79835 4.52297 3.96585 4.24547 4.24419C3.98464 4.49619 3.7841 4.80384 3.6588 5.14419C3.50047 5.55252 3.41297 5.99002 3.38297 6.64252C3.33964 7.56252 3.33464 7.88419 3.33464 10C3.33464 12.0617 3.34047 12.3984 3.38297 13.3575C3.4138 14.01 3.5013 14.4492 3.6588 14.855C3.80047 15.2175 3.96714 15.4784 4.2438 15.755C4.52464 16.035 4.78547 16.2025 5.1438 16.3409C5.55547 16.5 5.9938 16.5884 6.6438 16.6184C7.5638 16.6617 7.88547 16.6667 10.0013 16.6667C12.063 16.6667 12.3996 16.6609 13.3588 16.6184C14.0105 16.5875 14.4496 16.5 14.8563 16.3425C15.2171 16.2017 15.4796 16.0342 15.7563 15.7575C16.0371 15.4767 16.2046 15.2159 16.343 14.8575C16.5013 14.4467 16.5896 14.0075 16.6196 13.3575C16.663 12.4375 16.668 12.1159 16.668 10C16.668 7.93835 16.6621 7.60169 16.6196 6.64252C16.5888 5.99085 16.5013 5.55085 16.343 5.14419C16.2174 4.80419 16.0172 4.49665 15.7571 4.24419C15.5052 3.98323 15.1976 3.78266 14.8571 3.65752C14.4488 3.49919 14.0105 3.41169 13.3588 3.38169C12.4388 3.33835 12.1171 3.33335 10.0013 3.33335ZM10.0013 1.66669C12.2655 1.66669 12.548 1.67502 13.4363 1.71669C14.3238 1.75835 14.928 1.89752 15.4596 2.10419C16.0096 2.31585 16.473 2.60252 16.9363 3.06502C17.36 3.4816 17.6879 3.98551 17.8971 4.54169C18.103 5.07252 18.243 5.67752 18.2846 6.56502C18.3238 7.45335 18.3346 7.73585 18.3346 10C18.3346 12.2642 18.3263 12.5467 18.2846 13.435C18.243 14.3225 18.103 14.9267 17.8971 15.4584C17.6885 16.0148 17.3606 16.5189 16.9363 16.935C16.5196 17.3586 16.0157 17.6865 15.4596 17.8959C14.9288 18.1017 14.3238 18.2417 13.4363 18.2834C12.548 18.3225 12.2655 18.3334 10.0013 18.3334C7.73714 18.3334 7.45464 18.325 6.5663 18.2834C5.6788 18.2417 5.07464 18.1017 4.54297 17.8959C3.98657 17.6871 3.48257 17.3591 3.0663 16.935C2.64247 16.5185 2.31458 16.0146 2.10547 15.4584C1.8988 14.9275 1.75964 14.3225 1.71797 13.435C1.6788 12.5467 1.66797 12.2642 1.66797 10C1.66797 7.73585 1.6763 7.45335 1.71797 6.56502C1.75964 5.67669 1.8988 5.07335 2.10547 4.54169C2.314 3.98517 2.64197 3.48112 3.0663 3.06502C3.48269 2.64105 3.98666 2.31313 4.54297 2.10419C5.07464 1.89752 5.67797 1.75835 6.5663 1.71669C7.45464 1.67752 7.73714 1.66669 10.0013 1.66669Z" fill="#99A9AD"></path>
														</g>
													</svg>
												</a>
											</div>
											<div class="single-chefs-page-social-icon">
												<a href="https://in.pinterest.com/" target="_blank">
													<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
														<mask id="mask0_502_12964" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="20" height="20">
															<path d="M0 0H20V20H0V0Z" fill="white"></path>
														</mask>
														<g mask="url(#mask0_502_12964)">
															<path d="M5.78255 4.16665C5.78233 4.60867 5.60652 5.03251 5.29381 5.34491C4.98109 5.65732 4.55708 5.8327 4.11505 5.83248C3.67302 5.83226 3.24919 5.65645 2.93678 5.34373C2.62438 5.03102 2.449 4.60701 2.44922 4.16498C2.44944 3.72295 2.62525 3.29912 2.93796 2.98671C3.25068 2.67431 3.67469 2.49892 4.11672 2.49915C4.55875 2.49937 4.98258 2.67517 5.29499 2.98789C5.60739 3.30061 5.78277 3.72462 5.78255 4.16665ZM5.83255 7.06665H2.49922V17.5H5.83255V7.06665ZM11.0992 7.06665H7.78255V17.5H11.0659V12.025C11.0659 8.97498 15.0409 8.69165 15.0409 12.025V17.5H18.3326V10.8916C18.3326 5.74998 12.4492 5.94165 11.0659 8.46665L11.0992 7.06665Z" fill="#99A9AD"></path>
														</g>
													</svg>
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- <div class="recommendations-section d-none">
								<div class="recommendations-top">
									<p class="single-blogpage1-txt1"><span class="pr-10"><img src="assets/images/Homepage1/yellow-star.png" alt="yellow-star"></span>RECOMMENDATIONS<span class="pf-10"><img src="assets/images/Homepage1/yellow-star.png" alt="yellow-star"></span></p>
									<h2 class="singleblogpage1-txt2">Related Blogs</h2>	
								</div>
								<div class="recommendations-section-full">
									<div class="singleblogpage1-related-left">
										<div class="singleblogpage1-img-sec">
											<img src="assets/images/single-blogpage1/related-1.png" alt="blog-img">
										</div>
										<div>
											<div class="singleblog1-date1">
												<span class="blog4-txt1">DINNER</span>
												<span class="blog4-date">SEPTEMBER 20, 2022 </span>
											</div>
											<h3 class="singleblogpage1-txt3">The Best Way To Know The City Is To Eat In Restaurants</h3>
										</div>
									</div>
									<div class="singleblogpage1-related-right">
										<div class="singleblogpage1-img-sec">
											<img src="assets/images/single-blogpage1/related-2.png" alt="blog-img">
										</div>
										<div>
											<div class="singleblog1-date1">
												<span class="blog4-txt1">DINNER</span>
												<span class="blog4-date">SEPTEMBER 20, 2022 </span>
											</div>
											<h3 class="singleblogpage1-txt3">What Is The Secret To Eating Healthily This Summer?</h3>
										</div>
									</div>
								</div>
							</div> -->
							<!-- <div class="comment-area d-none">
								<h2 class="comment-txt1">Comments</h2>
								<div class="comment-list">
									<div class="comment d-flex comment-top">
										<h3 class="d-none">Comment Hidden</h3>
										<h4 class="d-none">Comment Name</h4>
										<div class="thumbnail"><img src="assets/images/single-blogpage1/comment-1.png" alt="Blog Comment"></div>
										<div class="content">
											<h5 class="comment-title">Andy Doe</h5>
											<p>Threm ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labo et dolore magna aliqua. Ut enim ad minim veniamquis nostrud.</p>
											<div class="comment-date">
												<span>02/06/2022</span><span class="date-dash">|</span>
												<button class="reply-btn">
													<svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M8.25 15L0.75 9L8.25 3V6.75C12.3923 6.75 15.75 10.1077 15.75 14.25C15.75 14.4548 15.7425 14.6572 15.726 14.8575C14.595 12.7125 12.3435 11.25 9.75 11.25H8.25V15Z" fill="#FFDE9F"></path></svg>Replay
												</button>
											</div>
										</div>
									</div>
									<div class="comment comment-reply d-flex">
										<div class="thumbnail"><img src="assets/images/single-blogpage1/comment-2.png" alt="Blog Comment"></div>
										<div class="content">
											<h5 class="comment-title">Mary Louis</h5>
											<p>Threm ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labo et dolore magna aliqua.</p>
											<div class="comment-date">
												<span>02/06/2022</span><span class="date-dash">|</span>
												<button class="reply-btn">
													<svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M8.25 15L0.75 9L8.25 3V6.75C12.3923 6.75 15.75 10.1077 15.75 14.25C15.75 14.4548 15.7425 14.6572 15.726 14.8575C14.595 12.7125 12.3435 11.25 9.75 11.25H8.25V15Z" fill="#FFDE9F"></path></svg>Replay
												</button>
											</div>
										</div>
									</div>
									<div class="comment d-flex">
										<div class="thumbnail"><img src="assets/images/single-blogpage1/comment-3.png" alt="Blog Comment"></div>
										<div class="content">
											<h5 class="comment-title">Kelvin Tang</h5>
											<p>Threm ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labo et dolore magna aliqua. Ut enim ad minim veniamquis nostrud.</p>
											<div class="comment-date">
												<span>01/06/2022</span><span class="date-dash">|</span>
												<button class="reply-btn">
													<svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M8.25 15L0.75 9L8.25 3V6.75C12.3923 6.75 15.75 10.1077 15.75 14.25C15.75 14.4548 15.7425 14.6572 15.726 14.8575C14.595 12.7125 12.3435 11.25 9.75 11.25H8.25V15Z" fill="#FFDE9F"></path></svg>Replay
												</button>
											</div>
										</div>
									</div>
								</div>
							</div> -->
							<!-- <div class="leave-comment-sec d-none">
								<div class="comment-form">
									<h2>Leave A Comment</h2>
									<span>Your email address will not be published. Required fields are marked *</span>
									<form class="leave-comment row">
										<div class="col-12 col-md-6">
											<div class="comment-icon">
												<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
													<mask id="mask0_585_8988" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="24" height="24">
														<path d="M0 0H24V24H0V0Z" fill="white"/>
													</mask>
													<g mask="url(#mask0_585_8988)">
														<path d="M4 22C4 19.8783 4.84285 17.8434 6.34315 16.3431C7.84344 14.8429 9.87827 14 12 14C14.1217 14 16.1566 14.8429 17.6569 16.3431C19.1571 17.8434 20 19.8783 20 22H18C18 20.4087 17.3679 18.8826 16.2426 17.7574C15.1174 16.6321 13.5913 16 12 16C10.4087 16 8.88258 16.6321 7.75736 17.7574C6.63214 18.8826 6 20.4087 6 22H4ZM12 13C8.685 13 6 10.315 6 7C6 3.685 8.685 1 12 1C15.315 1 18 3.685 18 7C18 10.315 15.315 13 12 13ZM12 11C14.21 11 16 9.21 16 7C16 4.79 14.21 3 12 3C9.79 3 8 4.79 8 7C8 9.21 9.79 11 12 11Z" fill="#99A9AD"/>
													</g>
												</svg>
												<input type="text" class="comment-form-control" placeholder="Enter Your Name">
											</div>
										</div>
										<div class="col-12 col-md-6">
											<div class="comment-icon">
												<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
													<mask id="mask0_585_8982" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="24" height="24">
														<path d="M0 0H24V24H0V0Z" fill="white"/>
													</mask>
													<g mask="url(#mask0_585_8982)">
														<path d="M3 3H21C21.2652 3 21.5196 3.10536 21.7071 3.29289C21.8946 3.48043 22 3.73478 22 4V20C22 20.2652 21.8946 20.5196 21.7071 20.7071C21.5196 20.8946 21.2652 21 21 21H3C2.73478 21 2.48043 20.8946 2.29289 20.7071C2.10536 20.5196 2 20.2652 2 20V4C2 3.73478 2.10536 3.48043 2.29289 3.29289C2.48043 3.10536 2.73478 3 3 3V3ZM20 7.238L12.072 14.338L4 7.216V19H20V7.238ZM4.511 5L12.061 11.662L19.502 5H4.511Z" fill="#99A9AD"/>
													</g>
												</svg>
												<input type="email" class="comment-form-control" placeholder="Enter Your Email">
											</div>
										</div>
										<div class="col-12">
											<div class="comment-icon">
												<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
													<mask id="mask0_585_8976" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="24" height="24">
														<path d="M0 0H24V24H0V0Z" fill="white"/>
													</mask>
													<g mask="url(#mask0_585_8976)">
														<path d="M6.414 16.0001L16.556 5.85808L15.142 4.44408L5 14.5861V16.0001H6.414ZM7.243 18.0001H3V13.7571L14.435 2.32208C14.6225 2.13461 14.8768 2.0293 15.142 2.0293C15.4072 2.0293 15.6615 2.13461 15.849 2.32208L18.678 5.15108C18.8655 5.33861 18.9708 5.59292 18.9708 5.85808C18.9708 6.12325 18.8655 6.37756 18.678 6.56508L7.243 18.0001V18.0001ZM3 20.0001H21V22.0001H3V20.0001Z" fill="#99A9AD"/>
													</g>
												</svg>
												<textarea class="comment-form-control" placeholder="Write Your Comment"></textarea>
											</div>
										</div>
										<div class="col-12">
											<div class="blog-checkbox-sec">
												<input class="footer-checkbox-input" id="footer-checkbox" type="checkbox">
												<label for="footer-checkbox" class="footer-chec-txt footer-chec-txt1">Save My Name, Email, And Website In This Browser For The Next Time I Comment.</label>
											</div>
										</div>
										<div class="col-12 comment-btn book-now-btn">
											<button type="submit" class="book-btn">Post Comment</button>
										</div>
									</form>
								</div>
							</div> -->
						</div>
					</div>

				</div>
			</div>
		</section>
		<!-- Blogpage Details Section End -->
		<!-- Testimonial Section Start -->
		<!-- <section id="menupage-1-testimonials-sec" class="d-none">
			<div class="menupage-1-testimo-overlay"></div>
			<div class="container">
				<div class="home2-testimonials-sec-full" data-aos="fade-down">
					<div class="home2-test-top">
						<p class="homemenu-txt1"><span class="pr-10"><img src="assets/images/Homepage1/yellow-star.png" alt="yellow-star"></span>TESTIMONIALS<span class="pf-10"><img src="assets/images/Homepage1/yellow-star.png" alt="yellow-star"></span></p>
						<h2 class="homemenu-txt2 homemenu-txt22">The Reviews Of Customers When Coming To Our Restaurant!</h2>
					</div>
					<div class="home2-test-bottom">
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
		</section>  -->
		<!-- Testimonial Section End -->
	

<?php get_footer(); ?>