<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Profile</title>

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
	<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

	<!-- Plugins CSS -->
	<link rel="stylesheet" type="text/css" href="assets/vendor/font-awesome/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="assets/vendor/bootstrap-icons/bootstrap-icons.css">
	<link rel="stylesheet" type="text/css" href="assets/vendor/glightbox/css/glightbox.css">
	<link rel="stylesheet" type="text/css" href="assets/vendor/flatpickr/css/flatpickr.min.css">
	<link rel="stylesheet" type="text/css" href="assets/vendor/choices/css/choices.min.css">
	<link rel="stylesheet" type="text/css" href="assets/vendor/tiny-slider/tiny-slider.css">

	<!-- Theme CSS -->
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">

</head>

<body>

<!-- Header START -->
<header class="navbar-light header-sticky">
	<!-- Logo Nav START -->
	<nav class="navbar navbar-expand-xl">
		<div class="container">
			<!-- Logo START -->
			<a class="navbar-brand" href="index.html">
				<img class="light-mode-item navbar-brand-item mb-2" height="50px" src="assets/images/main_logo.png" alt="logo">
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

					<!-- Nav item Contact -->
					<li class="nav-item"> <a class="nav-link" href="contact.html">Contact Us</a>	</li>
				</ul>
			</div>
			<!-- Main navbar END -->

			<!-- Profile and Notification START -->
			<ul class="nav flex-row align-items-center list-unstyled ms-xl-auto">

								


								<!-- Search dropdown START -->
								<li class="nav-item dropdown nav-search d-none d-sm-block ml-3">
									<a class="nav-notification btn btn-light mb-0 p-0" href="#" id="searchDropdown" role="button" data-bs-auto-close="outside" data-bs-display="static" data-bs-toggle="dropdown" aria-expanded="false">
										<i class="bi bi-search"> </i>
									</a>
									<div class="dropdown-menu dropdown-animation dropdown-menu-end p-2" aria-labelledby="searchDropdown">
										<div class="nav flex-nowrap align-items-center">
											<div class="nav-item w-100">
												<form class="input-group">
													<input class="form-control border-primary" type="search" placeholder="Search..." aria-label="Search">
													<button class="btn btn-primary m-0" type="submit">Search</button>
												</form>
											</div>
										</div>
									</div>
								</li>
								<!-- Search dropdown END -->
				

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
									<a class="h6 mt-2 mt-sm-0" href="#">Lori Ferguson</a>
									<p class="small m-0">example@gmail.com</p>
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
Search START -->
<section class="py-3 py-sm-0">
	<div class="container">
		<!-- Offcanvas button for search -->
		<button class="btn btn-primary d-sm-none w-100 mb-0" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasEditsearch" aria-controls="offcanvasEditsearch"><i class="bi bi-pencil-square me-2"></i>Edit Search</button>

		<!-- Search with offcanvas START -->
		<div class="offcanvas-sm offcanvas-top" tabindex="-1" id="offcanvasEditsearch" aria-labelledby="offcanvasEditsearchLabel">
			<div class="offcanvas-header">
				<h5 class="offcanvas-title" id="offcanvasEditsearchLabel">Edit search</h5>
				<button type="button" class="btn-close" data-bs-dismiss="offcanvas" data-bs-target="#offcanvasEditsearch" aria-label="Close"></button>
			</div>
			<div class="offcanvas-body p-2">
				<div class="bg-light p-4 rounded w-100">
					<form class="row g-4">
						<!-- Location -->
						<div class="col-md-6 col-lg-4">
							<div class="form-size-lg form-fs-md">
								<!-- Select input -->
								<label class="form-label">Location</label>
								<select class="form-select js-choice" data-search-enabled="true">
									<option value="">Select location</option>
									<option selected>San Jacinto, USA</option>
									<option>North Dakota, Canada</option>
									<option>West Virginia, Paris</option>
								</select>
							</div>
						</div>

						<!-- Check in -->
						<div class="col-md-6 col-lg-3">
							<!-- Date input -->
							<div class="form-fs-md">
								<label class="form-label">Check in - out</label>
								<input type="text" class="form-control form-control-lg flatpickr" data-mode="range" placeholder="Select date" value="19 Sep to 28 Sep">
							</div>
						</div>

						<!-- Guest -->
						<div class="col-md-6 col-lg-3">
							<div class="form-fs-md">
								<!-- Dropdown input -->
								<div class="w-100">
									<label class="form-label">Guests & rooms</label>
									<div class="dropdown guest-selector me-2">
										<input type="text" class="form-guest-selector form-control form-control-lg selection-result" value="2 Guests 1 Room" id="dropdownguest" data-bs-auto-close="outside" data-bs-toggle="dropdown">
									
										<!-- dropdown items -->
										<ul class="dropdown-menu guest-selector-dropdown" aria-labelledby="dropdownguest">
											<!-- Adult -->
											<li class="d-flex justify-content-between">
												<div>
													<h6 class="mb-0">Adults</h6>
													<small>Ages 13 or above</small>
												</div>

												<div class="hstack gap-1 align-items-center">
													<button type="button" class="btn btn-link adult-remove p-0 mb-0"><i class="bi bi-dash-circle fs-5 fa-fw"></i></button>
													<h6 class="guest-selector-count mb-0 adults">2</h6>
													<button type="button" class="btn btn-link adult-add p-0 mb-0"><i class="bi bi-plus-circle fs-5 fa-fw"></i></button>
												</div>
											</li>

											<!-- Divider -->
											<li class="dropdown-divider"></li>

											<!-- Child -->
											<li class="d-flex justify-content-between">
												<div>
													<h6 class="mb-0">Child</h6>
													<small>Ages 13 below</small>
												</div>

												<div class="hstack gap-1 align-items-center">
													<button type="button" class="btn btn-link child-remove p-0 mb-0" ><i class="bi bi-dash-circle fs-5 fa-fw"></i></button>
													<h6 class="guest-selector-count mb-0 child">0</h6>
													<button type="button" class="btn btn-link child-add p-0 mb-0" ><i class="bi bi-plus-circle fs-5 fa-fw"></i></button>
												</div>
											</li>

											<!-- Divider -->
											<li class="dropdown-divider"></li>

											<!-- Rooms -->
											<li class="d-flex justify-content-between">
												<div>
													<h6 class="mb-0">Rooms</h6>
													<small>Max room 8</small>
												</div>

												<div class="hstack gap-1 align-items-center">
													<button type="button" class="btn btn-link room-remove p-0 mb-0" ><i class="bi bi-dash-circle fs-5 fa-fw"></i></button>
													<h6 class="guest-selector-count mb-0 rooms">1</h6>
													<button type="button" class="btn btn-link room-add p-0 mb-0" ><i class="bi bi-plus-circle fs-5 fa-fw"></i></button>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>

						<!-- Button -->
						<div class="col-md-6 col-lg-2 mt-md-auto">
							<a class="btn btn-lg btn-primary w-100 mb-0" href="#"><i class="bi bi-search fa-fw"></i>Search</a>
						</div>

					</form>
				</div>
			</div>
		</div>
		<!-- Search with offcanvas END -->
	</div>
</section>
<!-- =======================
Search END -->
	
<!-- =======================
Main Title START -->
<section class="py-0 pt-sm-5">
	<div class="container position-relative">
		<!-- Title and button START -->
		<div class="row mb-3">
			<div class="col-12">
				<!-- Meta -->
				<div class="d-lg-flex justify-content-lg-between mb-1">
					<!-- Title -->
					<div class="mb-2 mb-lg-0">
						<h1 class="fs-2 "> Salon Name : <c:out value="${sessionScope.barberInfo.name}" /> <img src="assets/images/like.png" width="45px" alt="404 Not Found"> </h1>
						<div> <hr> </div>

						<div class="col-12">
							<small class="text-success h6 fw-normal"> Open at : <span class="text-dark h6 fw-normal" style="width: 10rem;" > <c:out value="${sessionScope.barberInfo.startTime}" />   a:m  Every Day </span> </small>
							<div> <hr> </div>
							<small class="text-danger h6 fw-normal"> Close at : <span class="text-dark h6 fw-normal" style="width: 10rem;" > <c:out value="${sessionScope.barberInfo.endTime}" />   p:m  Every Day </span> </small>
							<div> <hr> </div>
							<small class="text-primary h6 fw-normal"> Year of Establishment : <span class="text-dark h6 fw-normal" style="width: 10rem;" > <c:out value="${sessionScope.barberInfo.startingYear}" />   </span> </small>
						</div>
						<div> <hr> </div>

						<!-- =======================
Image gallery END -->
					</div>

					<!-- Buttons -->
					<ul class="list-inline text-start mt-2">
						<!-- Heart icon -->
						<li class="list-inline-item">
							<a href="#" class="btn btn-sm btn-outline-danger px-2"><i class="fa-solid fa-fw fa-heart"></i>Like It</a>
						</li>

						<!-- Share icon -->
						<li class="list-inline-item dropdown">
							<!-- Share button -->
							<a href="#" class="btn btn-sm btn-outline-primary px-2" role="button" id="dropdownShare" data-bs-toggle="dropdown" aria-expanded="false">
								<i class="fa-solid fa-fw fa-share-alt"></i>Share It
							</a>
							<!-- dropdown button -->
							<ul class="dropdown-menu dropdown-menu-end min-w-auto shadow rounded" aria-labelledby="dropdownShare">
								<li><a class="dropdown-item" href="#"><i class="fab fa-twitter-square me-2"></i>Twitter</a></li>
								<li><a class="dropdown-item" href="#"><i class="fab fa-facebook-square me-2"></i>Facebook</a></li>
								<li><a class="dropdown-item" href="#"><i class="fab fa-linkedin me-2"></i>LinkedIn</a></li>
								<li><a class="dropdown-item" href="#"><i class="fa-solid fa-copy me-2"></i>Copy link</a></li>
							</ul>
						</li>

						<li class="list-inline-item dropdown">
							<!-- Share button -->
							<a href="#" class="btn btn-sm btn-outline-success px-2" role="button" id="dropdownShare" data-bs-toggle="dropdown" aria-expanded="false">
								<i class="fa-solid fa-fw fa-phone"></i> Show Contact
							</a>
							<!-- dropdown button -->
							<ul class="dropdown-menu dropdown-menu-end min-w-auto shadow rounded ml-2" aria-labelledby="dropdownShare">
								<li><a class="dropdown-item" href="#"><i class="fa-solid fa-phone-square me-2 text-dark"></i>Call Number : <c:out value="${sessionScope.barberInfo.contact}" /> </a></li>
							</ul>
					</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- Title and button END -->

		<!-- Alert box START -->
		<div class="alert alert-success alert-dismissible d-flex justify-content-between align-items-center fade show mb-4 rounded-3 pe-2" role="alert">
			<div class="d-flex">
				<span class="alert-heading h5 mb-0 me-2"><i class="bi bi-exclamation-octagon-fill"></i></span>
				<span><strong class="alert-heading me-2">Wellcome : </strong>Wellcome to Barbo </span>
			</div>
				<button type="button" class="btn btn-link pb-0 text-end" data-bs-dismiss="alert" aria-label="Close"><i class="bi bi-x-lg text-dark"></i></button>
		</div>
		<!-- Alert box END -->
	</div>
</section> ${sessionScope.barberImage.salonImagePath}
<!-- =======================
Main Title END -->
				
<!-- =======================
Image gallery START -->

<!-- <img src="assets/uploads/p2@gmail.com/salon/grooming.png" alt="404 Not Found"> -->


<section class="card-grid pt-0">
	<div class="container">
		<div class="row g-2">
			<!--  -->

			<div class="container mt-3">
				<div class="row">
					<div class="col-6">
						<button class="btn btn-outline-dark d-block ml-3" id="parlor_images">Prlor Images</button>
					</div>

					<div class="col-6">
						<button class="btn btn-outline-danger d-none ml-5" id="hide_images">Hide Images</button>
					</div>
						

				</div>
			</div>

				<!-- <div class="row p-5 border-top border-secondary mt-5 d-none" id="img_box_hai">
					<div class="card-columns" id="all_images_box">

					</div>
				</div> -->
				
			<!--  -->
			<!-- Image -->
			
			<div class="col-md-12 d-none" id="img_div">
				<div class="row">
					<div class="row p-5 border-top border-secondary mt-5 d-none" id="img_box_hai">
						<span class="card-columns d-block" id="all_images_box">
							
						</span>
					</div>

				</div>
				
		</div>
	</div>
</section>
<!-- =======================
Image gallery END -->

<hr class="mb-3">
<!-- =======================
About hotel START -->
<section class="pt-0">
	<div class="container" data-sticky-container>

		<div class="row g-4 g-xl-5">
			<!-- Content START -->
			<div class="col-xl-7 order-1">
				<div class="vstack gap-5">

					<!-- About hotel START -->
					<div class="card bg-transparent">
						<!-- Card header -->
						<div class="card-header border-bottom bg-transparent px-0 pt-0">
							<h3 class="mb-0">About This Salon</h3>
							<h5 class="mb-0">
								<!-- Location -->
								<p class="fw-bold mb-2 mt-3"> <i class="bi bi-geo-alt me-2 text-primary"></i> <c:out value="${sessionScope.barberInfo.address}" />
									<h5 >
									<a href="#" class="ms-2 text-decoration-underline text-primary" data-bs-toggle="modal" data-bs-target="#mapmodal">
										<i class="bi bi-eye-fill me-1"></i>View On Map
									</a>
								</h5>
								</p>	
							</h5>
						</div>

						
						<!-- Card body END -->
					</div>
					<!-- About hotel START -->

					<!-- Amenities START -->
					<div class="card bg-transparent">
						<!-- Card header -->
						<div class="card-header border-bottom bg-transparent px-0 pt-0">
							<h3 class="card-title mb-0"><img class="mb-1 mr-2" src="assets/images/services.png"  width="43px" alt=""> Service</h3>
						</div>

						<!-- Card body START -->
						<div class="card-body pt-4 p-0">
							<div class="row g-4">
								<!-- Activities -->
								<div class="col-sm-6">
									<h6><i class="fa-solid fa-biking me-2"></i>Services</h6>
									<%-- <h4>  Barber :  ${sessionScope} </h4> --%>
									<!-- List -->
									
									<c:forTokens items = "${barberServices}" delims = "," var = "name">
										<ul class="list-group list-group-borderless mt-2 mb-0">
										<li class="list-group-item pb-0 text-dark text-capitalize">
											<i class="fa-solid fa-check-circle text-success me-2 "></i><c:out value = "${name}"/> 
										</li>
									</c:forTokens>

								</div>
	
								<!-- Payment Method -->
								<div class="col-sm-6">
									<h6><i class="fa-solid fa-credit-card me-2"></i>Payment Method</h6>
									<!-- List -->
									<ul class="list-group list-group-borderless mt-2 mb-0">
										<li class="list-group-item pb-0">
											<i class="fa-solid fa-check-circle text-success me-2"></i>Credit card (Visa, Master card)
										</li>
										<li class="list-group-item pb-0">
											<i class="fa-solid fa-check-circle text-success me-2"></i>Cash
										</li>
										<li class="list-group-item pb-0">
											<i class="fa-solid fa-check-circle text-success me-2"></i>Debit Card
										</li>
									</ul>
								</div>
	
							
	
								<!-- Safety & Security -->
								<div class="col-sm-6">
									
									<h6><i class="fa-solid fa-volume-up me-2"></i>Staff Language</h6>
									<!-- List -->
									<ul class="list-group list-group-borderless mt-2 mb-0">
										<li class="list-group-item pb-0">
											<i class="fa-solid fa-check-circle text-success me-2"></i>English
										</li>
										<li class="list-group-item pb-0">
											<i class="fa-solid fa-check-circle text-success me-2"></i>Hindi
										</li>
									</ul>
								</div>
	
							</div>
						</div>
						<!-- Card body END -->
					</div>
					<!-- Card body START -->
						<div class="card-body pt-4 p-0">
							<h5 class="fw-light mb-4">Main Highlights</h5>

							<!-- Highlights Icons -->
							<div class="hstack gap-3 mb-3">
								<div class="icon-lg bg-light h5 rounded-2" data-bs-toggle="tooltip" data-bs-placement="top" title="Free wifi">
									<i class="fa-solid fa-wifi"></i>
								</div>
								<div class="icon-lg bg-light h5 rounded-2" data-bs-toggle="tooltip" data-bs-placement="top" title="Free Parking">
									<i class="fa-solid fa-parking"></i>
								</div>
								<div class="icon-lg bg-light h5 rounded-2" data-bs-toggle="tooltip" data-bs-placement="top" title="Air-Conditioner">
									<i class="fa-solid fa-snowflake"></i>
								</div>
							</div>

							<p class="mb-3">BARBO Here we are for managing your time with our plateforem </b></p>
							<p class="mb-0">Delivered dejection necessary objection do Mr prevailed. Mr feeling does chiefly cordial in do. Water timed folly right aware if oh truth. Large above be to means. Dashwood does provide stronger is.</p>
							
							<div class="collapse" id="collapseContent">
								<p class="my-3">We focus a great deal on the understanding of behavioral psychology and influence triggers which are crucial for becoming a well rounded Digital Marketer. We understand that theory is important to build a solid foundation, we understand that theory alone isn't going to get the job done so that's why this rickets is packed with practical hands-on examples that you can follow step by step.</p>
								<p class="mb-0">Behavioral psychology and influence triggers which are crucial for becoming a well rounded Digital Marketer. We understand that theory is important to build a solid foundation, we understand that theory alone isn't going to get the job done so that's why this tickets is packed with practical hands-on examples that you can follow step by step.</p>
							</div>
							<a class="p-0 mb-4 mt-2 btn-more d-flex align-items-center collapsed" data-bs-toggle="collapse" href="#collapseContent" role="button" aria-expanded="false" aria-controls="collapseContent">
								See <span class="see-more ms-1">more</span><span class="see-less ms-1">less</span><i class="fa-solid fa-angle-down ms-2"></i>
							</a>

							<!-- List -->
							<h5 class="fw-light mb-2">Advantages</h5>
							<ul class="list-group list-group-borderless mb-0">
								<li class="list-group-item h6 fw-light d-flex mb-0"><i class="bi bi-patch-check-fill text-success me-2"></i>Every hotel staff to have Proper PPT kit for COVID-19</li>
								<li class="list-group-item h6 fw-light d-flex mb-0"><i class="bi bi-patch-check-fill text-success me-2"></i>Every staff member wears face masks and gloves at all service times.</li>
								<li class="list-group-item h6 fw-light d-flex mb-0"><i class="bi bi-patch-check-fill text-success me-2"></i>Hotel staff ensures to maintain social distancing at all times.</li>
								<li class="list-group-item h6 fw-light d-flex mb-0"><i class="bi bi-patch-check-fill text-success me-2"></i>The hotel has In-Room Dining options available </li>
							</ul>
						</div>
					<!-- Amenities END -->

					<input type="hidden" name="barber_id" id="main_id" value="${sessionScope.barber_id}">

					<!-- Customer Review START -->
					<div class="card bg-transparent">
						<!-- Card header -->
						<div class="card-header border-bottom bg-transparent px-0 pt-0">
							<h3 class="card-title mb-0">Customer Review</h3>
						</div>

						<!-- Card body START -->
						<div class="card-body pt-4 p-0">
							<!-- Progress bar and rating START -->
							<div class="card bg-light p-4 mb-4">
								<div class="row g-4 align-items-center">
									<!-- Rating info -->
									<div class="col-md-4">
										<div class="text-center">
											<!-- Info -->
											<h2 class="mb-0">4.5</h2>
											<p class="mb-2">Based on 120 Reviews</p>
											<!-- Star -->
											<ul class="list-inline mb-0">
												<li class="list-inline-item me-0"><i class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0"><i class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0"><i class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0"><i class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0"><i class="fa-solid fa-star-half-alt text-warning"></i></li>
											</ul>
										</div>
									</div>

									<!-- Progress-bar START -->
									<div class="col-md-8">
										<div class="card-body p-0">
											<div class="row gx-3 g-2 align-items-center">
												<!-- Progress bar and Rating -->
												<div class="col-9 col-sm-10">
													<!-- Progress item -->
													<div class="progress progress-sm bg-warning bg-opacity-15">
														<div class="progress-bar bg-warning" role="progressbar" style="width: 95%" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100">
														</div>
													</div>
												</div>
												<!-- Percentage -->
												<div class="col-3 col-sm-2 text-end">
													<span class="h6 fw-light mb-0">85%</span>
												</div>

												<!-- Progress bar and Rating -->
												<div class="col-9 col-sm-10">
													<!-- Progress item -->
													<div class="progress progress-sm bg-warning bg-opacity-15">
														<div class="progress-bar bg-warning" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
														</div>
													</div>
												</div>
												<!-- Percentage -->
												<div class="col-3 col-sm-2 text-end">
													<span class="h6 fw-light mb-0">75%</span>
												</div>

												<!-- Progress bar and Rating -->
												<div class="col-9 col-sm-10">
													<!-- Progress item -->
													<div class="progress progress-sm bg-warning bg-opacity-15">
														<div class="progress-bar bg-warning" role="progressbar" style="width: 60%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100">
														</div>
													</div>
												</div>
												<!-- Percentage -->
												<div class="col-3 col-sm-2 text-end">
													<span class="h6 fw-light mb-0">60%</span>
												</div>

												<!-- Progress bar and Rating -->
												<div class="col-9 col-sm-10">
													<!-- Progress item -->
													<div class="progress progress-sm bg-warning bg-opacity-15">
														<div class="progress-bar bg-warning" role="progressbar" style="width: 35%" aria-valuenow="35" aria-valuemin="0" aria-valuemax="100">
														</div>
													</div>
												</div>
												<!-- Percentage -->
												<div class="col-3 col-sm-2 text-end">
													<span class="h6 fw-light mb-0">35%</span>
												</div>

												<!-- Progress bar and Rating -->
												<div class="col-9 col-sm-10">
													<!-- Progress item -->
													<div class="progress progress-sm bg-warning bg-opacity-15">
														<div class="progress-bar bg-warning" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
														</div>
													</div>
												</div>
												<!-- Percentage -->
												<div class="col-3 col-sm-2 text-end">
													<span class="h6 fw-light mb-0">15%</span>
												</div>
											</div> <!-- Row END -->
										</div>
									</div>
									<!-- Progress-bar END -->

								</div>
							</div>
							<!-- Progress bar and rating END -->

							<!-- Leave review START -->
							<form class="mb-5">
								<!-- Rating -->
								<div class="form-control-bg-light mb-3">
									<select class="form-select js-choice">
										<option selected="">★★★★★ (5/5)</option>
										<option>★★★★☆ (4/5)</option>
										<option>★★★☆☆ (3/5)</option>
										<option>★★☆☆☆ (2/5)</option>
										<option>★☆☆☆☆ (1/5)</option>
									</select>
								</div>
								<!-- Message -->
								<div class="form-control-bg-light mb-3">
									<textarea class="form-control" id="exampleFormControlTextarea1" placeholder="Your review" rows="3"></textarea>
								</div> 
								<!-- Button -->
								<button type="submit" class="btn btn-lg btn-primary mb-0">Post review <i class="bi fa-fw bi-arrow-right ms-2"></i></button>
							</form>
							<!-- Leave review END -->

							<!-- Review item START -->
							<div class="d-md-flex my-4">
								<!-- Avatar -->
								<div class="avatar avatar-lg me-3 flex-shrink-0">
									<img class="avatar-img rounded-circle" src="assets/images/avatar/09.jpg" alt="avatar">
								</div>
								<!-- Text -->
								<div>
									<div class="d-flex justify-content-between mt-1 mt-md-0">
										<div>
											<h6 class="me-3 mb-0">Jacqueline Miller</h6>
											<!-- Info -->
											<ul class="nav nav-divider small mb-2">
												<li class="nav-item">Stayed 13 Nov 2022</li>
												<li class="nav-item">4 Reviews written</li>
											</ul>
										</div>
										<!-- Review star -->
										<div class="icon-md rounded text-bg-warning fs-6">4.5</div>
									</div>
									
									<p class="mb-2">Handsome met debating sir dwelling age material. As style lived he worse dried. Offered related so visitors we private removed. Moderate do subjects to distance. </p>
									
									<!-- Images -->
									<div class="row g-4">
										<div class="col-4 col-sm-3 col-lg-2">
											<img src="assets/images/category/hotel/4by3/07.jpg" class="rounded" alt="">
										</div>
										<div class="col-4 col-sm-3 col-lg-2">
											<img src="assets/images/category/hotel/4by3/08.jpg" class="rounded" alt="">
										</div>
										<div class="col-4 col-sm-3 col-lg-2">
											<img src="assets/images/category/hotel/4by3/05.jpg" class="rounded" alt="">
										</div>
									</div>
								</div>
							</div>

							<!-- Child review START -->
							<div class="my-4 ps-2 ps-md-3">
								<div class="d-md-flex p-3 bg-light rounded-3">
									<img class="avatar avatar-sm rounded-circle me-3" src="assets/images/avatar/02.jpg" alt="avatar">
									<div class="mt-2 mt-md-0">
										<h6 class="mb-1">Manager</h6>
										<p class="mb-0">But discretion frequently sir she instruments unaffected admiration everything. </p>
									</div>
								</div>
							</div>
							<!-- Child review END -->

							<!-- Divider -->
							<hr>
							<!-- Review item END -->

							<!-- Review item START -->
							<div class="d-md-flex my-4">
								<!-- Avatar -->
								<div class="avatar avatar-lg me-3 flex-shrink-0">
									<img class="avatar-img rounded-circle" src="assets/images/avatar/08.jpg" alt="avatar">
								</div>
								<!-- Text -->
								<div>
									<div class="d-flex justify-content-between mt-1 mt-md-0">
										<div>
											<h6 class="me-3 mb-0">Dennis Barrett</h6>
											<!-- Info -->
											<ul class="nav nav-divider small mb-2">
												<li class="nav-item">Stayed 02 Nov 2022</li>
												<li class="nav-item">2 Reviews written</li>
											</ul>
										</div>
										<!-- Review star -->
										<div class="icon-md rounded text-bg-warning fs-6">4.0</div>
									</div>
									
									<p class="mb-0">Delivered dejection necessary objection do Mr prevailed. Mr feeling does chiefly cordial in do. Water timed folly right aware if oh truth. Large above be to means. Dashwood does provide stronger is.</p>
								</div>
							</div>

							<!-- Divider -->
							<hr>
							<!-- Review item END -->

							<!-- Button -->
							<div class="text-center">
								<a href="#" class="btn btn-primary-soft mb-0">Load more</a>
							</div>
						</div>
						<!-- Card body END -->
					</div>
					<!-- Customer Review END -->

					
				</div>	
			</div>
			<!-- Content END -->

			<!-- Right side content START -->
			<aside class="col-xl-4" >
				<div class="row g-4">

					<!-- Price summary START -->
					<div class="col-md-6 col-xl-12">
						<div class="card shadow rounded-2">
							<!-- card header -->
							<div class="card-header border-bottom">
								<h5 class="card-title mb-0">Price Summary</h5>
							</div>
	
							<!-- Card body -->
							<div class="card-body">
								<ul class="list-group list-group-borderless">
									<li class="list-group-item d-flex justify-content-between align-items-center">
										<span class="h6 fw-light mb-0">Room Charges</span>
										<span class="fs-5">&#8377; 28,660</span>
									</li>
									<li class="list-group-item d-flex justify-content-between align-items-center">
										<span class="h6 fw-light mb-0">Total Discount<span class="badge text-bg-danger smaller mb-0 ms-2">10% off</span></span>
										<span class="fs-5 text-success">-&#8377; 2,560</span>	
									</li>
									<li class="list-group-item d-flex justify-content-between align-items-center">
										<span class="h6 fw-light mb-0">Price after discount</span>
										<span class="fs-5">&#8377; 1852</span>
									</li>
									<li class="list-group-item d-flex justify-content-between align-items-center">
										<span class="h6 fw-light mb-0">Taxes % Fees</span>
										<span class="fs-5">&#8377; 350</span>
									</li>
								</ul>
							</div>
	
							<!-- Card footer -->
							<div class="card-footer border-top">
								<div class="d-flex justify-content-between align-items-center">
									<a href="pay.do" class="btn btn-outline-primary h5 mb-0 ">Pay Now</a>
									<span class="h5 mb-0">&#8377; 22,500</span>
								</div>
							</div>
						</div>
					</div>
					<!-- Price summary END -->

					<!-- Offer and discount START -->
					<div class="col-md-6 col-xl-12">
						<div class="card shadow">
							<!-- Card header -->
							<div class="card-header border-bottom">
								<div class="cardt-title">
									<h5 class="mb-0">Offer &amp; Discount</h5>
								</div>
							</div>
							<!-- Card body -->
							<div class="card-body">

								<!-- Radio -->
								<div class="bg-light rounded-2 p-3">
									<div class="form-check form-check-inline mb-0">
										<input class="form-check-input" type="radio" name="discountOptions" id="discount1" value="option1" checked>
										<label class="form-check-label h5 mb-0" for="discount1">GSTBOOK</label>
										<p class="mb-1 small">Congratulations! You have saved $230 with GSTBOOK.</p>
										<h6 class="mb-0 text-success">-$230</h6>
									</div>
								</div>

								<!-- Input group -->
								<div class="input-group mt-3">
									<input class="form-control form-control" placeholder="Coupon code">
									<button type="button" class="btn btn-primary">Apply</button>
								</div>
							</div>	
						</div>
					</div>
					<!-- Offer and discount END -->

					<!-- Information START -->
					<div class="col-md-6 col-xl-12">
						<div class="card shadow">
							<!-- Card header -->
							<div class="card-header border-bottom">
								<h5 class="card-title mb-0">Why Sign up or Log in</h5>
							</div>

							<!-- Card body -->
							<div class="card-body">
								<!-- List -->
								<ul class="list-group list-group-borderless">
									<li class="list-group-item d-flex mb-0"><i class="fa-solid fa-check text-success me-2"></i>
										<span class="h6 fw-normal">Get Access to Secret Deal</span>
									</li>

									<li class="list-group-item d-flex mb-0"><i class="fa-solid fa-check text-success me-2"></i>
										<span class="h6 fw-normal">Book Faster</span>
									</li>

									<li class="list-group-item d-flex mb-0"><i class="fa-solid fa-check text-success me-2"></i>
										<span class="h6 fw-normal">Manage Your Booking</span>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- Information END -->

				</div>
			</aside>
			<!-- Right side content END -->
		</div> <!-- Row END -->
	</div>
</section>
<!-- =======================
About hotel END -->

</main>
<!-- **************** MAIN CONTENT END **************** -->

<!-- =======================
Footer START -->
<footer class="bg-dark pt-5">
	<div class="container">
		<!-- Row START -->
		<div class="row g-4">

			<!-- Widget 1 START -->
			<div class="col-lg-3">
				<!-- logo -->
				<a href="index.html">
					<img class="h-40px" src="assets/images/logo-light.svg" alt="logo">
				</a>
				<p class="my-3 text-muted">Departure defective arranging rapturous did believe him all had supported.</p>
				<p class="mb-2"><a href="#" class="text-muted text-primary-hover"><i class="bi bi-telephone me-2"></i>+1234 568 963</a> </p>
				<p class="mb-0"><a href="#" class="text-muted text-primary-hover"><i class="bi bi-envelope me-2"></i>example@gmail.com</a></p>
			</div>
			<!-- Widget 1 END -->

			<!-- Widget 2 START -->
			<div class="col-lg-8 ms-auto">
				<div class="row g-4">
					<!-- Link block -->
					<div class="col-6 col-md-3">
						<h5 class="text-white mb-2 mb-md-4">Page</h5>
						<ul class="nav flex-column text-primary-hover">
							<li class="nav-item"><a class="nav-link text-muted" href="#">About us</a></li>
							<li class="nav-item"><a class="nav-link text-muted" href="#">Contact us</a></li>
							<li class="nav-item"><a class="nav-link text-muted" href="#">News and Blog</a></li>
							<li class="nav-item"><a class="nav-link text-muted" href="#">Meet a Team</a></li>
						</ul>
					</div>

					<!-- Link block -->
					<div class="col-6 col-md-3">
						<h5 class="text-white mb-2 mb-md-4">Link</h5>
						<ul class="nav flex-column text-primary-hover">
							<li class="nav-item"><a class="nav-link text-muted" href="#">Sign up</a></li>
							<li class="nav-item"><a class="nav-link text-muted" href="#">Sign in</a></li>
							<li class="nav-item"><a class="nav-link text-muted" href="#">Privacy Policy</a></li>
							<li class="nav-item"><a class="nav-link text-muted" href="#">Terms</a></li>
							<li class="nav-item"><a class="nav-link text-muted" href="#">Cookie</a></li>
							<li class="nav-item"><a class="nav-link text-muted" href="#">Support</a></li>
						</ul>
					</div>
									
					<!-- Link block -->
					<div class="col-6 col-md-3">
						<h5 class="text-white mb-2 mb-md-4">Global Site</h5>
						<ul class="nav flex-column text-primary-hover">
							<li class="nav-item"><a class="nav-link text-muted" href="#">India</a></li>
							<li class="nav-item"><a class="nav-link text-muted" href="#">California</a></li>
							<li class="nav-item"><a class="nav-link text-muted" href="#">Indonesia</a></li>
							<li class="nav-item"><a class="nav-link text-muted" href="#">Canada</a></li>
							<li class="nav-item"><a class="nav-link text-muted" href="#">Malaysia</a></li>
						</ul>
					</div>

					<!-- Link block -->
					<div class="col-6 col-md-3">
						<h5 class="text-white mb-2 mb-md-4">Booking</h5>
						<ul class="nav flex-column text-primary-hover">
							<li class="nav-item"><a class="nav-link text-muted" href="#"><i class="fa-solid fa-hotel me-2"></i>Hotel</a></li>
							<li class="nav-item"><a class="nav-link text-muted" href="#"><i class="fa-solid fa-plane me-2"></i>Flight</a></li>
							<li class="nav-item"><a class="nav-link text-muted" href="#"><i class="fa-solid fa-globe-americas me-2"></i>Tour</a></li>
							<li class="nav-item"><a class="nav-link text-muted" href="#"><i class="fa-solid fa-car me-2"></i>Cabs</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- Widget 2 END -->

		</div><!-- Row END -->

		<!-- Tops Links -->
		<div class="row mt-5">
			<h5 class="mb-2 text-white">Top Links</h5>
			<ul class="list-inline text-primary-hover lh-lg">
				<li class="list-inline-item"><a href="#" class="text-muted">Flights</a></li>
				<li class="list-inline-item"><a href="#" class="text-muted">Hotels</a></li>
				<li class="list-inline-item"><a href="#" class="text-muted">Tours</a></li>
				<li class="list-inline-item"><a href="#" class="text-muted">Cabs</a></li>
				<li class="list-inline-item"><a href="#" class="text-muted">About</a></li>
				<li class="list-inline-item"><a href="#" class="text-muted">Contact us</a></li>
				<li class="list-inline-item"><a href="#" class="text-muted">Blogs</a></li>
				<li class="list-inline-item"><a href="#" class="text-muted">Services</a></li>
				<li class="list-inline-item"><a href="#" class="text-muted">Detail page</a></li>
				<li class="list-inline-item"><a href="#" class="text-muted">Services</a></li>
				<li class="list-inline-item"><a href="#" class="text-muted">Policy</a></li>
				<li class="list-inline-item"><a href="#" class="text-muted">Testimonials</a></li>
				<li class="list-inline-item"><a href="#" class="text-muted">Newsletters</a></li>
				<li class="list-inline-item"><a href="#" class="text-muted">Podcasts</a></li>
				<li class="list-inline-item"><a href="#" class="text-muted">Protests</a></li>
				<li class="list-inline-item"><a href="#" class="text-muted">NewsCyber</a></li>
				<li class="list-inline-item"><a href="#" class="text-muted">Education</a></li>
				<li class="list-inline-item"><a href="#" class="text-muted">Sports</a></li>
				<li class="list-inline-item"><a href="#" class="text-muted">Tech and Auto</a></li>
				<li class="list-inline-item"><a href="#" class="text-muted">Opinion</a></li>
				<li class="list-inline-item"><a href="#" class="text-muted">Share Market</a></li>
			</ul>
		</div>

		<!-- Payment and card -->
		<div class="row g-4 justify-content-between mt-0 mt-md-2">

			<!-- Payment card -->
			<div class="col-sm-7 col-md-6 col-lg-4">
				<h5 class="text-white mb-2">Payment & Security</h5>
				<ul class="list-inline mb-0 mt-3">
					<li class="list-inline-item"> <a href="#"><img src="assets/images/element/paypal.svg" class="h-30px" alt=""></a></li>
					<li class="list-inline-item"> <a href="#"><img src="assets/images/element/visa.svg" class="h-30px" alt=""></a></li>
					<li class="list-inline-item"> <a href="#"><img src="assets/images/element/mastercard.svg" class="h-30px" alt=""></a></li>
					<li class="list-inline-item"> <a href="#"><img src="assets/images/element/expresscard.svg" class="h-30px" alt=""></a></li>
				</ul>
			</div>

			<!-- Social media icon -->
			<div class="col-sm-5 col-md-6 col-lg-3 text-sm-end">
				<h5 class="text-white mb-2">Follow us on</h5>
				<ul class="list-inline mb-0 mt-3">
					<li class="list-inline-item"> <a class="btn btn-sm px-2 bg-facebook mb-0" href="#"><i class="fab fa-fw fa-facebook-f"></i></a> </li>
					<li class="list-inline-item"> <a class="btn btn-sm shadow px-2 bg-instagram mb-0" href="#"><i class="fab fa-fw fa-instagram"></i></a> </li>
					<li class="list-inline-item"> <a class="btn btn-sm shadow px-2 bg-twitter mb-0" href="#"><i class="fab fa-fw fa-twitter"></i></a> </li>
					<li class="list-inline-item"> <a class="btn btn-sm shadow px-2 bg-linkedin mb-0" href="#"><i class="fab fa-fw fa-linkedin-in"></i></a> </li>
				</ul>	
			</div>
		</div>

		<!-- Divider -->
		<hr class="mt-4 mb-0">

		<!-- Bottom footer -->
		<div class="row">
			<div class="container">
				<div class="d-lg-flex justify-content-between align-items-center py-3 text-center text-lg-start">
					<!-- copyright text -->
					<div class="text-muted text-primary-hover"> Copyrights <a href="#" class="text-muted">©2022 Booking</a>. All rights reserved. </div>
					<!-- copyright links-->
					<div class="nav mt-2 mt-lg-0">
						<ul class="list-inline text-primary-hover mx-auto mb-0">
							<li class="list-inline-item me-0"><a class="nav-link py-1 text-muted" href="#">Privacy policy</a></li>
							<li class="list-inline-item me-0"><a class="nav-link py-1 text-muted" href="#">Terms and conditions</a></li>
							<li class="list-inline-item me-0"><a class="nav-link py-1 text-muted pe-0" href="#">Refund policy</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
<!-- =======================
Footer END -->

<!-- Map modal START -->
<div class="modal fade" id="mapmodal" tabindex="-1" aria-labelledby="mapmodalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered modal-lg">
		<div class="modal-content">
			<!-- Title -->
			<div class="modal-header">
				<h5 class="modal-title" id="mapmodalLabel">View Our Hotel Location</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<!-- Map -->
			<div class="modal-body p-0">
				<iframe class="w-100" height="400" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3022.9663095343008!2d-74.00425878428698!3d40.74076684379132!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c259bf5c1654f3%3A0xc80f9cfce5383d5d!2sGoogle!5e0!3m2!1sen!2sin!4v1586000412513!5m2!1sen!2sin"  style="border:0;" aria-hidden="false" tabindex="0"></iframe>	
			</div>
			<!-- Button -->
			<div class="modal-footer">
				<button type="button" class="btn btn-sm btn-primary mb-0"><i class="bi fa-fw bi-pin-map-fill me-2"></i>View In Google Map</button>
			</div>
		</div>
	</div>
</div>
<!-- Map modal END -->

<!-- Room modal START -->
<div class="modal fade" id="roomDetail" tabindex="-1" aria-labelledby="roomDetailLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content p-0">

			<!-- Title -->
			<div class="modal-header p-3">
				<h5 class="modal-title mb-0" id="roomDetailLabel">Room detail</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>

			<!-- Modal body -->
			<div class="modal-body p-0">

				<!-- Card START -->
				<div class="card bg-transparent p-3">
					<!-- Slider START -->
					<div class="tiny-slider arrow-round arrow-dark overflow-hidden rounded-2">
						<div class="tiny-slider-inner rounded-2 overflow-hidden" data-autoplay="true" data-arrow="true" data-dots="false" data-items="1">
							<!-- Image item -->
							<div> <img src="assets/images/gallery/16.jpg" class="rounded-2" alt="Card image"></div>

							<!-- Image item -->
							<div> <img src="assets/images/gallery/15.jpg" class="rounded-2" alt="Card image"> </div>

							<!-- Image item -->
							<div> <img src="assets/images/gallery/13.jpg" class="rounded-2" alt="Card image"> </div>

							<!-- Image item -->
							<div> <img src="assets/images/gallery/12.jpg" class="rounded-2" alt="Card image"> </div>
						</div>
					</div>
					<!-- Slider END -->

					<!-- Card header -->
					<div class="card-header bg-transparent pb-0">
						<h3 class="card-title mb-0">Deluxe Pool View</h3>
					</div>

					<!-- Card body START -->
					<div class=" card-body">
						<!-- Content -->
						<p>Club rooms are well furnished with air conditioner, 32 inch LCD television and a mini bar. They have attached bathroom with showerhead and hair dryer and 24 hours supply of hot and cold running water. Complimentary wireless internet access is available. Additional amenities include bottled water, a safe and a desk.</p>
						
						<div class="row position-absolute">
							<h5 class="mb-0">Amenities</h5>

							<!-- List -->
							<div class="col-md-6">
								<!-- List -->
								<ul class="list-group list-group-borderless mt-2 mb-0">
									<li class="list-group-item d-flex mb-0">
										<i class="fa-solid fa-check-circle text-success me-2"></i><span class="h6 fw-light mb-0">Swimming pool</span>
									</li>
									<li class="list-group-item d-flex mb-0">
										<i class="fa-solid fa-check-circle text-success me-2"></i><span class="h6 fw-light mb-0">Spa</span>
									</li>
									<li class="list-group-item d-flex mb-0">
										<i class="fa-solid fa-check-circle text-success me-2"></i><span class="h6 fw-light mb-0">Kids play area.</span>
									</li>
									<li class="list-group-item d-flex mb-0">
										<i class="fa-solid fa-check-circle text-success me-2"></i><span class="h6 fw-light mb-0">Gym</span>
									</li>
								</ul>
							</div>

							<!-- List -->
							<div class="col-md-6">
								<!-- List -->
								<ul class="list-group list-group-borderless mt-2 mb-0">
									<li class="list-group-item d-flex mb-0">
										<i class="fa-solid fa-check-circle text-success me-2"></i><span class="h6 fw-light mb-0">TV</span>
									</li>
									<li class="list-group-item d-flex mb-0">
										<i class="fa-solid fa-check-circle text-success me-2"></i><span class="h6 fw-light mb-0">Mirror</span>
									</li>
									<li class="list-group-item d-flex mb-0">
										<i class="fa-solid fa-check-circle text-success me-2"></i><span class="h6 fw-light mb-0">AC</span>
									</li>
									<li class="list-group-item d-flex mb-0">
										<i class="fa-solid fa-check-circle text-success me-2"></i><span class="h6 fw-light mb-0">Slippers</span>
									</li>
								</ul>
							</div>
						</div> <!-- Row END -->
					</div>
					<!-- Card body END -->
				</div>
				<!-- Card END -->
			</div>
		</div>
	</div>
</div>
<!-- Room modal END -->

<!-- Back to top -->
<div class="back-top"></div>

<!-- Bootstrap JS -->
<script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- Vendors -->
<script src="assets/vendor/glightbox/js/glightbox.js"></script>
<script src="assets/vendor/flatpickr/js/flatpickr.min.js"></script>
<script src="assets/vendor/choices/js/choices.min.js"></script>
<script src="assets/vendor/tiny-slider/tiny-slider.js"></script>
<script src="assets/vendor/sticky-js/sticky.min.js"></script>

<!-- ThemeFunctions -->
<script src="assets/js/functions.js"></script>

<script>
	let main_id = document.querySelector('#main_id');

	const all_images_box = document.querySelector('#all_images_box');
	let parlor_images = document.querySelector('#parlor_images');
	let img_box_hai = document.querySelector('#img_box_hai');
	let hide_images = document.querySelector('#hide_images');
	let img_div = document.querySelector('#img_div');

	const fetchImages = async () => {
            console.log("++++");
            let resp = await fetch('fetch_all_images.do?main_id='+main_id.value);
            let result = await resp.json();

            return result;
    };

	const allImageReq = () => {
            fetchImages().then((data)=>{
                all_images_box.innerHTML = null;

                for(let imagePath of data) {
                    let div = document.createElement('div');
                    div.classList.add('card');
                    all_images_box.append(div);
                    
                    let img = document.createElement('img');
                    img.src = 'download_image.do?image_path='+imagePath;
                    img.classList.add('card-img-top');
                    // img.classList.add('w-50');
                    // img.classList.add('h-30');
					img.style.display = 'inline-block';
					img.style.width = '300px';
                    img.classList.add('img-thumbnail');
                    hide_images.classList.replace('d-none' , 'd-block');
                    div.append(img);
					document.createElement('hr');
                }
            }).catch((err)=>{
                // console.log(err);
            });
        };

		function hideImageFunc(){
			all_images_box.innerHTML = null;
			hide_images.classList.add('d-none');
			img_div.classList.replace('d-block' , 'd-none');
		}

		hide_images.addEventListener('click' , (e)=>{
			hideImageFunc();
		});

	parlor_images.addEventListener('click' , (e)=>{
		img_box_hai.classList.replace('d-none' , 'd-block');
		img_div.classList.replace('d-none' , 'd-block');
		allImageReq();        
	});

	const getInfo = async()=>{
		let result = await fetch('get_info.do?main_id='+main_id.value);
		let temp = await result.text();
		return temp;
	};
	
	window.addEventListener('load' , (e)=>{
		console.log('. . . Hello World . . . ');
		console.log(main_id.value);
		getInfo().then((data)=>{
			// Succes code ...
			console.log(data);
			let i = 0;
			if(i == 0){
				// i++;
				// window.location.href = 'main_profile.jsp'; 
			}
			
		}).catch((err)=>{
			// error code ... 
			console.log(err);
		});
	});
</script>

</body>
</html>