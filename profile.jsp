<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>

	<!-- Meta Tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="Webestica.com">
	<meta name="description" content="Booking - Multipurpose Online Booking Theme">

	<!-- Dark mode -->
	<script type="text/javascript">
		var theme = localStorage.getItem('data-theme');
		var root = document.documentElement;
		if (theme === 'dark' && theme !== undefined) {
			root.classList.add('dark-mode');
		} else {
			root.classList.remove('dark-mode');
		}
	</script>

	<!-- Favicon -->
	<link rel="shortcut icon" href="assets/images/barbo.png">

	<!-- Google Font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Poppins:wght@400;500;700&display=swap">

	<!-- Plugins CSS -->
	<link rel="stylesheet" type="text/css" href="assets/vendor/font-awesome/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="assets/vendor/bootstrap-icons/bootstrap-icons.css">
	<link rel="stylesheet" type="text/css" href="assets/vendor/aos/aos.css">
	<link rel="stylesheet" type="text/css" href="assets/vendor/flatpickr/css/flatpickr.min.css">
	<link rel="stylesheet" type="text/css" href="assets/vendor/choices/css/choices.min.css">
	
	<%-- Dropzone link --%>
	<script src="https://unpkg.com/dropzone@6.0.0-beta.1/dist/dropzone-min.js"></script>
	<link href="https://unpkg.com/dropzone@6.0.0-beta.1/dist/dropzone.css" rel="stylesheet" type="text/css" />
	
	<!-- Theme CSS -->
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <style>
        html {
            scroll-behavior: smooth;
        }

		#city_list {
            /* position: absolute; */
            top: 68px;
            left: 0px;
            /* border: 2px solid #999; */
            background-color: white;
        }

        #ct_box {
            position: relative;
        }

        .ct_rec {
            font-size: 18px;
            border: red;
            font-weight: bold;
            font-family: verdana;
            padding: 6px 12px;
            cursor: pointer; 
            border-radius: 17px;
        }

        .ct_rec:hover {
            background-color: #eee;
        }

	

		
    </style>

</head>

<body class="dashboard">

<!-- Header START -->
<header class="navbar-light header-sticky">
	<!-- Logo Nav START -->
	<nav class="navbar navbar-expand-xl">
		<div class="container">
			<!-- Logo START -->
			<a class="navbar-brand" href="index.html">
				<img class="light-mode-item navbar-brand-item mb-2" height="50px" src="assets/images/logo_5_remove.png" alt="logo">
				<img class="dark-mode-item navbar-brand-item" src="assets/images/logo-light.svg" alt="logo">
			</a>
			<!-- Logo END -->
			
			<!-- Responsive navbar toggler -->
			<button class="navbar-toggler ms-auto mx-3 me-md-0 p-0 p-sm-2" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-animation">
					<span></span>
					<span></span>
					<span></span>
				</span>
			</button>

			<!-- Main navbar START -->
			<div class="navbar-collapse collapse" id="navbarCollapse">
				<ul class="navbar-nav navbar-nav-scroll">

					
					<!-- Nav item Pages -->
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="pagesMenu" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Pages</a>
						<ul class="dropdown-menu" aria-labelledby="pagesMenu">

							<li> <a class="dropdown-item" href="about.html">About</a></li>
							<li> <a class="dropdown-item" href="contact.html">Contact</a></li>
							<li> <a class="dropdown-item" href="contact-2.html">Contact 2</a></li>
							<li> <a class="dropdown-item" href="team.html">Our Team</a></li>

							<!-- Dropdown submenu -->
							<li class="dropdown-submenu dropend">
								<a class="dropdown-item dropdown-toggle" href="#">Authentication</a>
								<ul class="dropdown-menu" data-bs-popper="none">
									<li> <a class="dropdown-item" href="sign-in.html">Sign In</a></li>
									<li> <a class="dropdown-item" href="sign-up.html">Sign Up</a></li>
									<li> <a class="dropdown-item" href="forgot-password.html">Forgot Password</a></li>
									<li> <a class="dropdown-item" href="two-factor-auth.html">Two factor authentication</a></li>
								</ul>
							</li>

							<!-- Dropdown submenu -->
							<li class="dropdown-submenu dropend">
								<a class="dropdown-item dropdown-toggle" href="#">Blog</a>
								<ul class="dropdown-menu" data-bs-popper="none">
									<li> <a class="dropdown-item" href="blog.html">Blog</a></li>
									<li> <a class="dropdown-item" href="blog-detail.html">Blog Detail</a></li>
								</ul>
							</li>

							<!-- Dropdown submenu -->
							<li class="dropdown-submenu dropend">
								<a class="dropdown-item dropdown-toggle" href="#">Help</a>
								<ul class="dropdown-menu" data-bs-popper="none">
									<li> <a class="dropdown-item" href="help-center.html">Help Center</a></li>
									<li> <a class="dropdown-item" href="help-detail.html">Help Detail</a></li>
									<li> <a class="dropdown-item" href="privacy-policy.html">Privacy Policy</a></li>
									<li> <a class="dropdown-item" href="terms-of-service.html">Terms of Service</a></li>
								</ul>
							</li>

							<li> <a class="dropdown-item" href="pricing.html">Pricing</a></li>
							<li> <a class="dropdown-item" href="faq.html">FAQs</a></li>
							<li> <a class="dropdown-item" href="error.html">Error 404</a></li>
							<li> <a class="dropdown-item" href="coming-soon.html">Coming Soon</a></li>
						</ul>
					</li>

					<!-- Nav item Account -->
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="accounntMenu" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Accounts</a>
						<ul class="dropdown-menu" aria-labelledby="accounntMenu">
							<!-- Dropdown submenu -->
							<li class="dropdown-submenu dropend">
								<a class="dropdown-item dropdown-toggle" href="#">My Profile</a>
								<ul class="dropdown-menu" data-bs-popper="none">
									<li> <a class="dropdown-item" href="account-profile.html">My Profile</a> </li>
									<li> <a class="dropdown-item" href="account-bookings.html">My Appointment</a> </li>
									<li> <a class="dropdown-item" href="account-payment-details.html">Payment Details</a> </li>
									<li> <a class="dropdown-item" href="account-wishlist.html">Wishlist</a> </li>
									<li> <a class="dropdown-item" href="account-settings.html">Settings</a> </li>
									<li> <a class="dropdown-item" href="account-delete.html">Delete Profile</a> </li>
								</ul>
							</li>
							
							
						</ul>
					</li>

<%--  --%>


<%--  --%>
<!-- Nav item Contact -->
	<li class="nav-item ml-1"> <a class="nav-link" href="contact.html">Contact Us</a>	</li>

		<li class="nav-item ml-1"> 
			<a href="send_account_page.do" class="btn btn-outline-dark mt-2 d-none" id="profile_btn">Profile</a>
		</li>
				</ul>
			</div>
			<!-- Main navbar END -->

			<!-- Profile and Notification START -->
			<ul class="nav flex-row align-items-center list-unstyled ms-xl-auto">

				<!-- Notification dropdown START -->
				<li class="nav-item ms-0 ms-md-3 dropdown">
					<!-- Notification button -->
					<a class="nav-link p-0" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside">
						<i class="bi bi-bell fa-fw fs-5"></i>
					</a>
					<!-- Notification dote -->
					<span class="notif-badge animation-blink"></span>

					<!-- Notification dropdown menu START -->
					<div class="dropdown-menu dropdown-animation dropdown-menu-end dropdown-menu-size-md p-0 shadow-lg">
						<div class="card bg-transparent">
							<!-- Card header -->
							<div class="card-header bg-transparent d-flex justify-content-between align-items-center border-bottom">
								<h6 class="m-0">Notifications <span class="badge bg-danger bg-opacity-10 text-danger ms-2">4 new</span></h6>
								<a class="small" href="#">Clear all</a>
							</div>

							<!-- Card body START -->
							<div class="card-body p-0">
								<ul class="list-group list-group-flush list-unstyled p-2">
									<!-- Notification item -->
									<li>
										<a href="#" class="list-group-item list-group-item-action rounded notif-unread border-0 mb-1 p-3">
											<h6 class="mb-2">New! Booking flights from New York ✈️</h6>
											<p class="mb-0 small">Find the flexible ticket on flights around the world. Start searching today</p>
											<span>Wednesday</span>
										</a>
									</li>
									<!-- Notification item -->
									<li>
										<a href="#" class="list-group-item list-group-item-action rounded border-0 mb-1 p-3">
											<h6 class="mb-2">Sunshine saving are here 🌞 save 30% or more on a stay</h6>
											<span>15 Nov 2022</span>
										</a>
									</li>
								</ul>
							</div>
							<!-- Card body END -->

							<!-- Card footer -->
							<div class="card-footer bg-transparent text-center border-top">
								<a href="#" class="btn btn-sm btn-link mb-0 p-0">See all incoming activity</a>
							</div>
						</div>
					</div>
					<!-- Notification dropdown menu END -->
				</li>
				<!-- Notification dropdown END -->

				<!-- Profile dropdown START -->
				<li class="nav-item ms-3 dropdown">
					<!-- Avatar -->
					<a class="avatar avatar-xs p-0" href="#" id="profileDropdown" role="button" data-bs-auto-close="outside" data-bs-display="static" data-bs-toggle="dropdown" aria-expanded="false">
						<img class="avatar-img rounded-circle" src="assets/images/user.png" alt="avatar">
					</a>

					<!-- Profile dropdown START -->
					<ul class="dropdown-menu dropdown-animation dropdown-menu-end shadow pt-3" aria-labelledby="profileDropdown">
						<!-- Profile info -->
						<li class="px-3 mb-3">
							<div class="d-flex align-items-center">
								<!-- Avatar -->
								<div class="avatar me-3">
									<img class="avatar-img rounded-circle shadow" src="assets/images/user.png" alt="avatar">
								</div>
								<div>
								<c:choose>
								<c:when test="${barber_email_pass != null}">
									<p class="small m-0"><span class="text-primary">${sessionScope.barber_email_pass.email}</span></p>
								</c:when>
								<c:otherwise>
									<p class="small m-0">example@gmail2.com</p>
								</c:otherwise>
								</c:choose>
								</div>
							</div>
						</li>

						<!-- Links -->
						<li> <hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="#"><i class="bi bi-bookmark-check fa-fw me-2"></i>My Appointment</a></li>
						<li><a class="dropdown-item" href="#"><i class="bi bi-heart fa-fw me-2"></i>My Wishlist</a></li>
						<li><a class="dropdown-item" href="#"><i class="bi bi-gear fa-fw me-2"></i>Settings</a></li>
						<li><a class="dropdown-item" href="#"><i class="bi bi-info-circle fa-fw me-2"></i>Help Center</a></li>
						<li><a class="dropdown-item bg-danger-soft-hover" href="#"><i class="bi bi-power fa-fw me-2"></i>Sign Out</a></li>
						<li> <hr class="dropdown-divider"></li>

						<!-- Dark mode switch START -->
						<li>
							<div class="modeswitch-wrap" id="darkModeSwitch">
								<div class="modeswitch-item">
									<div class="modeswitch-icon"></div>
								</div>
								<span>Dark mode</span>
							</div>
						</li> 
						<!-- Dark mode switch END -->
					</ul>
					<!-- Profile dropdown END -->
				</li>
				<!-- Profile dropdown END -->

				<!-- Button -->
				<li class="nav-item ms-3 d-none d-sm-block">
					<a class="btn btn-sm btn-success-soft mb-0" href="#"><i class="bi bi-lightning-charge"></i> Upgrade now</a>
				</li> 
			</ul>
			<!-- Profile and Notification START -->

		</div>
	</nav>
	<!-- Logo Nav END -->
</header>
<!-- Header END -->

<!-- **************** MAIN CONTENT START **************** -->
<main>
	
<!-- =======================
Content START -->
<section class="pt-3">
	<div class="container">
		<div class="row">

			<!-- Sidebar START -->
			<div class="col-lg-4 col-xl-3">
				<!-- Responsive offcanvas body START -->
				<div class="offcanvas-lg offcanvas-end position-fixed" tabindex="-1" id="offcanvasSidebar" >
					<!-- Offcanvas header -->
					<div class="offcanvas-header justify-content-end pb-2">
						<button type="button" class="btn-close" data-bs-dismiss="offcanvas" data-bs-target="#offcanvasSidebar" aria-label="Close"></button>
					</div>

					<!-- Offcanvas body -->
					<div class="offcanvas-body p-3 p-lg-0">
						<div class="card bg-light w-100">

							<!-- Edit profile button -->
							<div class="position-absolute top-0 end-0 p-3">
								<a href="#" class="text-primary-hover" data-bs-toggle="tooltip" data-bs-title="Edit profile">
									<i class="bi bi-pencil-square"></i>
								</a>
							</div>

							<!-- Card body START -->
							<div class="card-body p-3">
								<!-- Avatar and content -->
								<div class="text-center mb-3">
									<!-- Avatar -->
									<div class="avatar avatar-xl mb-2">
										<img class="avatar-img rounded-circle border border-2 border-white" src="assets/images/logo_5_remove.png" alt="">
									</div>
									<h6 class="mb-0">Example : Your Salon Name</h6>
									<p class="mb-0 text-dark">Email : <span class="text-primary">${sessionScope.barber_email_pass.email}</span></p>
									<hr>
								</div>

								<!-- Sidebar menu item START -->
								<ul class="nav nav-pills-primary-soft flex-column">
									<li class="nav-item">   
										<a class="nav-link active" href="account-profile.html"><i class="bi bi-person fa-fw me-2"></i>Setup My Profile</a>
									</li>
									<li class="nav-item">
										<a class="nav-link disabled" href="account-bookings.html" ><i class="bi bi-ticket-perforated fa-fw me-2"></i>My Appointment</a>
									</li>
									<li class="nav-item">
										<a class="nav-link disabled" href="dashboard.html"><i class="bi bi-house fa-fw me-2"></i>Dashboard</a>
									</li>
									<li class="nav-item">
										<a class="nav-link disabled" href="account-payment-details.html"><i class="bi bi-wallet fa-fw me-2"></i>Payment Details</a>
									</li>
									<li class="nav-item">
										<a class="nav-link disabled" href="account-wishlist.html"><i class="bi bi-heart fa-fw me-2"></i>Wishlist</a>
									</li>
									<li class="nav-item">
										<a class="nav-link disabled" href="account-settings.html"><i class="bi bi-gear fa-fw me-2"></i>Settings</a>
									</li>
									<li class="nav-item">
										<a class="nav-link disabled" href="account-delete.html"><i class="bi bi-trash fa-fw me-2"></i>Delete Profile</a>
									</li>
									<li class="nav-item">
										<a class="nav-link text-danger bg-danger-soft-hover disabled" href="#"><i class="fas fa-sign-out-alt fa-fw me-2"></i>Sign Out</a>
									</li>
								</ul>
								<!-- Sidebar menu item END -->
							</div>
							<!-- Card body END -->
						</div>
					</div>
				</div>	
				<!-- Responsive offcanvas body END -->	
			</div>
			<!-- Sidebar END -->

			<!-- Main content START -->
			<div class="col-lg-8 col-xl-9">

				<!-- Offcanvas menu button -->
				<div class="d-grid mb-0 d-lg-none w-100">
					<button class="btn btn-primary mb-4" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasSidebar" aria-controls="offcanvasSidebar">
						<i class="fas fa-sliders-h"></i> Menu
					</button>
				</div>

				<div class="vstack gap-4">
					<!-- Verified message -->
					<div class="bg-light rounded p-3">
						<!-- Progress bar -->
						<div class="overflow-hidden">
							<h6>Complete Your Profile</h6>
							<div class="progress progress-sm bg-success bg-opacity-10">
								<div class="progress-bar bg-success aos" role="progressbar" data-aos="slide-right" data-aos-delay="200" data-aos-duration="1000" data-aos-easing="ease-in-out" style="width: 85%" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100">
								<span class="progress-percent-simple h6 fw-light ms-auto">85%</span>
							</div>
						</div>
						<p class="mb-0">Get the best out of booking by adding the remaining details!</p>
						</div>
						<!-- Content -->
						<div class="bg-body rounded p-3 mt-3">
							<ul class="list-inline hstack flex-wrap gap-3 justify-content-between mb-0">
								<li class="list-inline-item h6 fw-normal mb-0"><a href="#" class="text-danger" id="loader_div_1" ><img src="assets/images/wait_img.gif" width="30px" id="loader_img_1"> Salon Information</a></li>
								<li class="list-inline-item h6 fw-normal mb-0"><a href="#" class="text-danger" id="loader_div_2" ><img src="assets/images/wait_img_0.gif" width="30px" id="loader_img_2"> Salon Images</a></li>
								<li class="list-inline-item h6 fw-normal mb-0"><a href="#" class="text-danger" id="loader_div_3" ><img src="assets/images/wait_img_1.gif" width="30px" id="loader_img_3"> Add Services</a></li>
							</ul>
						</div>
					</div>

					<!-- Personal info START -->
					<div class="card border">
						<!-- Card header -->
						<div class="card-header border-bottom">
							<h4 class="card-header-title text-primary">Personal Information</h4>
						</div>

						<!-- Card body START -->
						<div class="card-body">
							<!-- Form START -->
							<div class="row g-3">
								
								<!-- Name -->
								<div class="col-md-6">
									<label class="form-label text-dark">Salon Name<span class="text-danger"> *</span></label>
									<input type="text" class="form-control" name="name" id="name" required placeholder="Enter your full name">
								</div>

								<!-- Email -->
								<div class="col-md-6">
									<label class="form-label text-dark">Seats Count<span class="text-danger"> *</span></label>
									<input type="number" class="form-control" name="seat" id="seat" required placeholder="How many seats do you want to allow online ">
								</div>

								<!-- Mobile -->
								<div class="col-md-6">
									<label class="form-label text-dark">Mobile number<span class="text-danger"> *</span></label>
									<input type="text" class="form-control" name="contact" id="contact" required placeholder="Enter your mobile number">
								</div>

								<!-- District -->
								<div class="col-md-6">
									<label class="form-label text-dark">District<span class="text-danger"> *</span></label>
									<input type="text" class="form-control" id="city" id="district" required placeholder="Enter Your district" name="car_city" required>
           							<div id="city_list" class="form-control d-none mt-2"></div>
								</div>

								<!-- Opeing Time -->
								<div class="col-md-6">
									<label class="form-label text-dark">Salon Open Time (A : M) <span class="text-danger"> *</span></label>
									<input type="time" class="form-control" id="o_time" name="o_time" required placeholder="Enter Salon opeingn time" >
								</div>
								<!-- closing time -->
								<div class="col-md-6">
									<label class="form-label text-dark">Salon Close Time (P : M)<span class="text-danger"> *</span></label>
									<input type="time" class="form-control" id="c_time" name="c_time" required placeholder="Enter Salon close time" >
								</div>

								<!-- Salon Staring Date -->
								<div class="col-md-6">
									<label class="form-label text-dark">Salon String Date<span class="text-danger"> *</span></label>
									<input type="text" class="form-control flatpickr" id="start_date" required name="start_date" placeholder="Enter Salon String Date" data-date-format="d M Y">
								</div>

								<!-- Gender -->
								<div class="col-md-6 mt-4">
									<label class="form-label text-dark">Select Salon Type<span class="text-danger"> *</span></label>
									<div class="d-flex gap-4">
										<div class="form-check radio-bg-light">
											<input class="form-check-input" value="1" name="salon_type" required id="m_service" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
											<label class="form-check-label text-dark" for="flexRadioDefault1">
												Salon for Male
											</label>
										</div>
										<div class="form-check radio-bg-light">
											<input class="form-check-input text-dark" name="salon_type" value="2" required id="w_service" type="radio" name="flexRadioDefault" id="flexRadioDefault2">
											<label class="form-check-label text-dark" for="flexRadioDefault2">
												Salon For Female
											</label>
										</div>
										<div class="form-check radio-bg-light">
											<input class="form-check-input text-dark" name="salon_type" value="3" required id="b_service" type="radio" name="flexRadioDefault" id="flexRadioDefault3">
											<label class="form-check-label text-dark" for="flexRadioDefault3">
												Salon For Male and Femele 
											</label>
										</div>
									</div>
								</div>

								<!-- Address -->
								<div class="col-12">
									<label class="form-label text-dark">Address</label>
									<textarea class="form-control" rows="3" name="address" spellcheck="false" id="address" placeholder="Enter your salon address . . ."></textarea>
								</div>

								<button  class="btn btn-outline-dark soft-hover mt-5 d-block" id="submit" >Submit</button>

								<!-- Button -->
								<div class="col-12 text-end">
								</div>
							<!-- </form> -->
						</div>
							<!-- Form END -->
						</div>
						<!-- Card body END -->
					</div>
					<!-- Personal info END -->
					
			<hr style="color:red">

				
					<!-- Services  -->
					
									<!-- Upload image START -->
								<div class="tab-pane bg-light" id="images">
									<div class="row mb-5">
										<div class="col-1">
										</div>
										<div class="col-10">

											<h5 class=" mb-3 ml-2 text-dark mt-3">Upload Your Sallon Images</h5>

                                			<div class="dropzone" id="saloon_img_box"></div>

											<button class="btn btn-outline-danger soft-hover mt-4 float right d-none" id="salon_pic_upload_btn">Upload Salon Images</button>

										</div>
										<div class="col-1"></div>
									</div>
									<div class="row p-5 border-top border-secondary mt-5">
										<div class="card-columns" id="all_images_box">

										</div>
									</div>
								</div>
							<!-- Upload image END -->	

							<!-- Service Part Start -->
							 <div class="modal fade" id="serviceModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
								<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
								<div class="modal-content">
									<div class="modal-header">
										<img width="80px" src="assets/images/m1_logo.png" alt="logo">
									<!-- <h5 class="modal-title pl-3" id="exampleModalLabel">Images</h5> -->
									<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
									
									<!-- Service Part Start -->
										<div class="container">
											<div class="row">
		
											
		
											</div>
										</div>

		
									<!-- Service Part End -->
										
		
									</div>
									<div class="modal-footer">
									<button type="button" class="btn btn-outline-danger" data-bs-dismiss="modal">Close</button>
									</div>
								</div>
								</div>
							</div>
							<!-- Modal end for Servise's -->
<hr>
							<a href="next_service_page.do" class=" mb-3 btn btn-outline-dark" >Next Page</a>
				</div>

			</div>
			<!-- Main content END -->

		</div>
	</div>
</section>
<!-- =======================
Content END -->

</main>
<!-- **************** MAIN CONTENT END **************** -->

<!-- =======================
Footer START -->
<footer class="bg-dark p-3">
	<div class="container">
		<div class="row align-items-center">

			<!-- Widget -->
			<div class="col-md-4">
				<div class="text-center text-md-start mb-3 mb-md-0">
					<a href="index.html"> <img class="h-30px" src="assets/images/main_logo.png" alt="logo"> </a>
				</div> 
			</div>
			
			<!-- Widget -->
			<div class="col-md-4">
				<div class="text-white text-primary-hover"> Copyrights <a href="#" class="text-white">©2022 Booking</a>. All rights reserved. </div>
			</div>

			<!-- Widget -->
			<div class="col-md-4">
				<ul class="list-inline mb-0 text-center text-md-end">
					<li class="list-inline-item ms-2"><a href="#"><i class="text-white fab fa-facebook"></i></a></li>
					<li class="list-inline-item ms-2"><a href="#"><i class="text-white fab fa-instagram"></i></a></li>
					<li class="list-inline-item ms-2"><a href="#"><i class="text-white fab fa-linkedin-in"></i></a></li>
					<li class="list-inline-item ms-2"><a href="#"><i class="text-white fab fa-twitter"></i></a></li>
				</ul>
			</div>
		</div>
	</div>
</footer>
<!-- =======================
Footer END -->

<!-- Back to top -->
<div class="back-top"></div>

<!-- Bootstrap JS -->
<script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- Vendors -->
<script src="assets/vendor/aos/aos.js"></script>
<script src="assets/vendor/flatpickr/js/flatpickr.min.js"></script>
<script src="assets/vendor/choices/js/choices.min.js"></script>

<!-- ThemeFunctions -->
<script src="assets/js/functions.js"></script>
<script>

// for district
	const city = document.querySelector('#city');
    let cityId = null;
	let c_id = null;
    const city_list = document.querySelector('#city_list');

	// for submitation ...

	let submit = document.querySelector('#submit');

	let name = document.querySelector('#name');
	let seat = document.querySelector('#seat');
	let contact = document.querySelector('#contact');
	let o_time = document.querySelector('#o_time');
	let c_time = document.querySelector('#c_time');
	let start_date = document.querySelector('#start_date');
	let m_service = document.querySelector('#m_service');
	let w_service = document.querySelector('#w_service');
	let b_service = document.querySelector('#b_service');
	let address = document.querySelector('#address');
	
	let loader_img_1 = document.querySelector('#loader_img_1');
	let loader_img_2 = document.querySelector('#loader_img_2');
	let loader_img_3 = document.querySelector('#loader_img_3');

	let loader_div_1 = document.querySelector('#loader_div_1');
	let loader_div_2 = document.querySelector('#loader_div_2');
	let loader_div_3 = document.querySelector('#loader_div_3');
	
	let account_btn = document.querySelector('#account_btn');


 	let salon_pic_upload_btn = document.querySelector('#salon_pic_upload_btn');
	// upload images . . .
	let salon_upload = new Dropzone('#saloon_img_box' , {
		url:' upload_salon_images.do',
		uploadMultiple: true,
		maxFilesize: 20,
		acceptedFiles:  '.jpeg,.jpg,.png,.gif',
		autoProcessQueue: false,
		addRemoveLinks: true,
		parallelUploads: 20
	});

	salon_pic_upload_btn.addEventListener('click' , ()=>{
		console.log("it works...");
		salon_upload.processQueue();
		loader_div_2.classList.replace('text-danger' , 'text-primary');
	});


	// City async Function ... 
		const cityRequest = async()=>{
		let result = await fetch('search_city.do?city='+city.value);
		let tmp = await result.json();
		return tmp;
	};

	// City async Function ...
	city.addEventListener('keyup', (e) => {
                var input = e.target.value;
                if(input.length > 2) {
                    cityRequest().then((data)=>{
                        city_list.innerHTML = null;
                        city_list.classList.replace('d-none', 'd-block');
                        for(var ct of data) {
                            console.log(ct);
                            let elm = document.createElement('div');
                            elm.className = 'ct_rec';
                            elm.innerText = ct.cityName;
                            elm.cityId = ct.cityId;
                            elm.addEventListener('click', (e) => {
                                city.value = e.target.innerText;  
                                cityId = e.target.cityId;
                                city_list.classList.replace('d-block', 'd-none');  
                            });
                            city_list.append(elm);
                        }
                    }).catch((err)=>{
                        console.log(err);                    
                    });
                }
            });

	


	let service_val = null;
	function display(){
		if(m_service.checked){
			service_val = m_service.value;

		} else if(w_service.checked){
			service_val = w_service.value;

		} else if(b_service.checked){
			service_val = b_service.value;
		}
	}



	const saveTemproryValue = async()=>{
		let url = 'save_some_info.do?name='+name.value+'&contact='+contact.value+'&seat='+seat.value+'&o_time='+o_time.value+'&c_time='+c_time.value+'&address='+address.value+'&start_date='+start_date.value+'&city_id='+cityId+'&service='+service_val;
			console.log('Hello');
			console.log(contact.value);
			c_id = cityId;
		let result1 = await fetch(url);
		let temp1 = result1.text();
		return temp1;
	}

	submit.addEventListener('click' , (e)=>{
		console.log('submit');
		display();
		saveTemproryValue().then((data)=>{
			if(data = "true"){
				alert("Your details has saved!!");
				submit.classList.replace('d-block' , 'd-none');
				salon_pic_upload_btn.classList.replace('d-none' , 'd-block');
				loader_div_1.classList.replace('text-danger' , 'text-primary');
			}
		}).catch((err)=>{
			alert("Please submit your details again !!");
			window.location.href = "profile.jsp";
		});
	});




</script>

</body>
</html>