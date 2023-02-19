<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
<head>
	<title>serices</title>

	<!-- Meta Tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="author name">
	<meta name="description" content="type your description">

	<!-- Favicon -->
	<link rel="shortcut icon" href="assets/images/barbo.png">

	<script type="text/javascript">
	  let theme = localStorage.getItem('data-theme');
    if (theme !== undefined && theme === 'dark') {
      document.documentElement.setAttribute("data-theme", "dark")
    } else {
      document.documentElement.setAttribute("data-theme", "dark")
    }
	</script>


<script>
  let mode = window.localStorage.getItem('mode'),
      root = document.getElementsByTagName('html')[0];
  if (mode !== undefined && mode === 'dark') {
    root.classList.add('dark-mode');
  } else {
    root.classList.remove('dark-mode');
  }
</script>


	<!-- Google Font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Poppins:wght@400;500;700&display=swap">

	<!-- Plugins CSS -->
	<link rel="stylesheet" type="text/css" href="assets/vendor/font-awesome/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="assets/vendor/bootstrap-icons/bootstrap-icons.css">
	

	<!-- Theme CSS -->
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">


</head>

<body class="has-navbar-mobile">

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
			<button class="navbar-toggler ms-auto ms-sm-0 p-0 p-sm-2" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-animation">
					<span></span>
					<span></span>
					<span></span>
				</span>
        <span class="d-none d-sm-inline-block small">Menu</span>
			</button>

			<!-- Responsive category toggler -->
			<button class="navbar-toggler ms-sm-auto mx-3 me-md-0 p-0 p-sm-2" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCategoryCollapse" aria-controls="navbarCategoryCollapse" aria-expanded="false" aria-label="Toggle navigation">
				<i class="bi bi-grid-3x3-gap-fill fa-fw"></i><span class="d-none d-sm-inline-block small">Category</span>
			</button>

			<!-- Main navbar START -->
			<div class="navbar-collapse collapse" id="navbarCollapse">
				<ul class="navbar-nav navbar-nav-scroll me-auto">
					<!-- Nav item -->
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navMenu" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Nav menu</a>
						<ul class="dropdown-menu" aria-labelledby="navMenu">
							<!-- Dropdown submenu -->
							<li class="dropdown-submenu dropend">
								<a class="dropdown-item dropdown-toggle" href="#">Menu link</a>
								<ul class="dropdown-menu" data-bs-popper="none">
									<li> <a class="dropdown-item" href="#">Submenu link</a></li>
								</ul>
							</li>

							<li> <a class="dropdown-item" href="#">Menu link</a></li>
						</ul>
					</li>

					<!-- Nav item -->
					<li class="nav-item"> <a class="nav-link" href="contact.html">Nav menu</a> </li>
				</ul>
			</div>
			<!-- Main navbar END -->

			<!-- Nav category menu START -->
			<div class="navbar-collapse collapse" id="navbarCategoryCollapse">
				<ul class="navbar-nav navbar-nav-scroll nav-pills-primary-soft text-center ms-auto p-2 p-xl-0">
					<!-- Nav item Hotel -->
					<li class="nav-item"> <a class="nav-link active" href="#"><i class="fa-solid fa-hotel me-2"></i>Category1</a>	</li>

					<!-- Nav item Flight -->
					<li class="nav-item"> <a class="nav-link" href="#"><i class="fa-solid fa-plane me-2"></i>Category2</a>	</li>
				</ul>
			</div>
			<!-- Nav category menu END -->

			<!-- Profile and Notification START -->
			<ul class="nav flex-row align-items-center list-unstyled ms-xl-auto">

				<!-- Notification dropdown START -->
				<li class="nav-item dropdown ms-0 ms-md-3">
					<!-- Notification button -->
					<a class="nav-notification btn btn-light p-0 mb-0" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside">
						<i class="bi bi-bell fa-fw"></i>
					</a>
					<!-- Notification dote -->
					<span class="notif-badge animation-blink"></span>

					<!-- Notification dropdown menu START -->
					<div class="dropdown-menu dropdown-animation dropdown-menu-end dropdown-menu-size-md shadow-lg p-0">
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
											<h6 class="mb-2">Notification title (Unread notification)</h6>
											<p class="mb-0 small">Notification description goes here</p>
											<span>Wednesday</span>
										</a>
									</li>
									<!-- Notification item -->
									<li>
										<a href="#" class="list-group-item list-group-item-action rounded border-0 mb-1 p-3">
											<h6 class="mb-2">Notification title</h6>
											<span>Date</span>
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
					<a class="avatar avatar-sm p-0" href="#" id="profileDropdown" role="button" data-bs-auto-close="outside" data-bs-display="static" data-bs-toggle="dropdown" aria-expanded="false">
						<img class="avatar-img rounded-2" src="assets/images/avatar/01.jpg" alt="avatar">
					</a>

					<ul class="dropdown-menu dropdown-animation dropdown-menu-end shadow pt-3" aria-labelledby="profileDropdown">
						<!-- Profile info -->
						<li class="px-3 mb-3">
							<div class="d-flex align-items-center">
								<!-- Avatar -->
								<div class="avatar me-3">
									<img class="avatar-img rounded-circle shadow" src="assets/images/avatar/01.jpg" alt="avatar">
								</div>
								<div>
									<a class="h6 mt-2 mt-sm-0" href="#">Lori Ferguson</a>
									<p class="small m-0">example@gmail.com</p>
								</div>
							</div>
						</li>

						<!-- Links -->
						<li> <hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="#"><i class="bi bi-bookmark-check fa-fw me-2"></i>Menu link</a></li>
						<li><a class="dropdown-item bg-danger-soft-hover" href="#"><i class="bi bi-power fa-fw me-2"></i>Menu link</a></li>
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
Main Banner START -->
<section>
	<div class="container">
			<!-- Title START -->
		<div class="row">
			<div class="col-12">
				<h1 class="text-primary"> Add Services!</h1>
				<p class="mt-3">Go with your own ...</p>


				<!-- Services -->
				
				<c:forEach var="ser" items="${sessionScope.service}">
					<div class="form-check form-check-inline" >
						<div class="row">
							
							<div class="col-md-12 ml-2 fs-5"  onclick="setService(${ser.serviceId} , ${sessionScope.barber_id})" >
								
								<input class="form-check-input" value="${ser.serviceId}" type="checkbox" id="inlineCheckbox13">
								<label class="form-check-label fw-normal text-dark ml-4 text-capitalize" for="inlineCheckbox13">${ser.serviceName}</label>
							</div>
							<div class="col-8 mt-4">
								<div class="row">
									<div class="col-11">
										<input type="number" id="a_${ser.serviceId}" class="rounded-pill pr-3 text-center mb-1 border border-dark text-capitalize text-dark" placeholder="${ser.serviceName} &#8377;"> 
									</div>
									<div class="col-1 mt-2 ">
										<button class="btn btn-danger btn-sm ml-5" onclick="setPrice(${ser.serviceId} , ${sessionScope.barber_id} )" >Price</button>
									</div>
								</div>
								
							</div>
						</div>	
					</div>
					<hr style="color:red">
				</c:forEach>
				
			
			</div>
		</div>	
		<!-- Title END -->
	</div>
</section>
<!-- =======================
Main Banner END -->

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
				<p class="my-3 text-muted">Some text goes here</p>
				<p class="mb-2"><a href="#" class="text-muted text-primary-hover"><i class="bi bi-telephone me-2"></i>Contact number</a> </p>
				<p class="mb-0"><a href="#" class="text-muted text-primary-hover"><i class="bi bi-envelope me-2"></i>Email address</a></p>
			</div>
			<!-- Widget 1 END -->

			<!-- Widget 2 START -->
			<div class="col-lg-8 ms-auto">
				<div class="row g-4">
					<!-- Link block -->
					<div class="col-6 col-md-3">
						<h5 class="text-white mb-2 mb-md-4">Link</h5>
						<ul class="nav flex-column text-primary-hover">
							<li class="nav-item"><a class="nav-link text-muted" href="#">Link item</a></li>
							<li class="nav-item"><a class="nav-link text-muted" href="#">Link item</a></li>
						</ul>
					</div>

					<!-- Link block -->
					<div class="col-6 col-md-3">
						<h5 class="text-white mb-2 mb-md-4">Link</h5>
						<ul class="nav flex-column text-primary-hover">
							<li class="nav-item"><a class="nav-link text-muted" href="#">Link item</a></li>
							<li class="nav-item"><a class="nav-link text-muted" href="#">Link item</a></li>
							<li class="nav-item"><a class="nav-link text-muted" href="#">Link item</a></li>
						</ul>
					</div>
									
					<!-- Link block -->
					<div class="col-6 col-md-3">
						<h5 class="text-white mb-2 mb-md-4">Link</h5>
						<ul class="nav flex-column text-primary-hover">
							<li class="nav-item"><a class="nav-link text-muted" href="#">Link item</a></li>
						</ul>
					</div>

					<!-- Link block -->
					<div class="col-6 col-md-3">
						<h5 class="text-white mb-2 mb-md-4">Link</h5>
						<ul class="nav flex-column text-primary-hover">
							<li class="nav-item"><a class="nav-link text-muted" href="#"><i class="fa-solid fa-hotel me-2"></i>Link item</a></li>
							<li class="nav-item"><a class="nav-link text-muted" href="#"><i class="fa-solid fa-plane me-2"></i>Link item</a></li>
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
				<li class="list-inline-item"><a href="#" class="text-muted">Link item</a></li>
				<li class="list-inline-item"><a href="#" class="text-muted">Link item</a></li>
				<li class="list-inline-item"><a href="#" class="text-muted">Link item</a></li>
				<li class="list-inline-item"><a href="#" class="text-muted">Link item</a></li>
				<li class="list-inline-item"><a href="#" class="text-muted">Link item</a></li>
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

<!-- Back to top -->
<div class="back-top"></div>

<!-- Navbar mobile START -->
<div class="navbar navbar-mobile">
	<ul class="navbar-nav">
		<!-- Nav item -->
		<li class="nav-item">
			<a class="nav-link active" href="#"><i class="bi bi-house-door fa-fw"></i>
				<span class="mb-0 nav-text">Link</span>
			</a>	
		</li>

		<!-- Nav item -->
		<li class="nav-item"> 
			<a class="nav-link" href="#"><i class="bi bi-briefcase fa-fw"></i>
				<span class="mb-0 nav-text">Link</span>
			</a>	
		</li>

		<!-- Nav item  -->
		<li class="nav-item"> 
			<a class="nav-link" href="#"><i class="bi bi-percent fa-fw"></i>
				<span class="mb-0 nav-text">Link</span> 
			</a>
		</li>

		<!-- Nav item -->
		<li class="nav-item"> 
			<a class="nav-link" href="#"><i class="bi bi-person-circle fa-fw"></i>
				<span class="mb-0 nav-text">Link</span>
			</a>
		</li>
	</ul>
</div>
<!-- Navbar mobile END -->

<!-- Bootstrap JS -->
<script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- ThemeFunctions -->
<script src="assets/js/functions.js"></script>

<script>
	
	let a_1  = document.querySelector('#a_1');
	let a_2  = document.querySelector('#a_2');
	let a_3  = document.querySelector('#a_3');
	let a_4  = document.querySelector('#a_4');
	let a_5  = document.querySelector('#a_5');
	let a_6  = document.querySelector('#a_6');
	let a_7  = document.querySelector('#a_7');
	let a_8  = document.querySelector('#a_8');
	let a_9  = document.querySelector('#a_9');
	let a_10  = document.querySelector('#a_10');
	let a_11  = document.querySelector('#a_11');
	let a_12  = document.querySelector('#a_12');
	let a_13  = document.querySelector('#a_13');
	let a_14  = document.querySelector('#a_14');
	let a_15  = document.querySelector('#a_15');
	let a_16  = document.querySelector('#a_16');
	let a_17  = document.querySelector('#a_17');
	let a_18  = document.querySelector('#a_18');
	let a_19  = document.querySelector('#a_19');
	
	let vl = null;

	function checkPrice(){
		for(let i=0; i<19 ; i++){
			let hl = a_+''+i;
			if(hl != null){
				vl = hl.value;
				return true;
			} else{
				return false;
			}
		}
	}

	function setPrice(e1 , e2){
		console.log(e1);
		console.log(e2);
		if(checkPrice()){
			console.log(vl);
		}
		
	}


	// Service Async Function ... 
	const setBarberService = async(sId1 , sId2)=>{
		let resp = await fetch('set_service.do?serviceId='+sId1+'&barberId='+sId2);
		let result = await resp.text();
		return result;
	}

	// Service Function...
	function setService(elm1 , elm2){
		console.log(elm1);
		console.log(elm2);
		if(elm2 == undefined){
			window.location.reload();
		}

		setBarberService(elm1 , elm2).then((data)=>{

			// Success Code ... 
			if(data = 'true'){
				console.log(data);

				loader_div_3.classList.replace('text-danger' , 'text-primary');
				profile_btn.classList.replace('d-none' , 'd-block');

			}

		}).catch((err)=>{
			// Error Code ...
		})
	}

</script>

</body>
</html>