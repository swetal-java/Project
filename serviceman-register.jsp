<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<title>Plumberz - Free Plumbing Website Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&family=Roboto:wght@500;700&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
	rel="stylesheet" />

<!-- Customized Bootstrap Stylesheet -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="css/style.css" rel="stylesheet">
<script type="text/javascript">
	function chk_name() {
		var name = document.regisform.fname.value;
		var reg = /^[A-Za-z]+$/;
		if (name.trim() == "") {
			document.getElementById("ename").innerHTML = "Please Enter The Name..";
		} else if (!reg.test(name)) {
			document.getElementById("ename").innerHTML = "Please Enter Only Alphabet..";
		} else {
			document.getElementById("ename").innerHTML = "";
		}
	}

	function chk_email() {
		var f = document.regisform.email.value;
		var reg = /^[A-Za-z]+$/;
		if (f.trim() == "") {
			document.getElementById("erroremail").innerHTML = "Please enter your email";
		} else if (!reg.test(f)) {
			document.getElementById("erroremail").innerHTML = "";

		} else {
			document.getElementById("erroremail").innerHTML = "";
		}

	}
	
	function chk_contact(){
		var f = document.regisform.contact.value;
		var reg = /^[0-9]+$/;
		if(f.trim() == ""){
			document.getElementById("errorcontact").innerHTML = "Please enter your contact number.."
		}else if(!reg.test(f)){
			document.getElementById("errorcontact").innerHTML = "Please enter only 10 digits.."
		}else {
			document.getElementById("errorcontact").innerHTML = ""
		}
	}
	
	function chk_password(){
		var f = document.regisform.password.value;
		if(f.trim() == ""){
			document.getElementById("errorpassword").innerHTML = "Please enter your password..";
		}
	}
		
</script>




</head>

<body>
	<script>
var request = new XMLHttpRequest();
function exist_email(){
	debugger;
	var name = document.regisform.email.value;
	var url = "ajaxchkemail.jsp?val="+name;
	try{
		request.onreadystatechange = function(){
			if(request.readyState == 4){
				var val = request.responseText;
				document.getElementById('ajaxemail').innerHTML = val;
			}
		}
		
		request.open("GET",url,true);
		request.send();
	}
	catch(e){
		
	}
}

</script>

	<!-- Page Header Start -->
	<div class="container-fluid page-header mb-5 py-5">
		<div class="container">
			<h1 class="display-3 text-white mb-3 animated slideInDown">Register</h1>
			<nav aria-label="breadcrumb animated slideInDown">
				<ol class="breadcrumb text-uppercase">
					<li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
					<li class="breadcrumb-item text-white active" aria-current="page">ServiecMan
						Register</li>
				</ol>
			</nav>
		</div>
	</div>
	<!-- Page Header End -->

	<!-- Contact Start -->
	<div class="container-xxl py-5">
		<div class="container">
			<div class="row g-12">
				<div class="col-md-8 wow fadeInUp" data-wow-delay="0.1s">
					<div class="bg-light p-5 h-100 d-flex align-items-center">
						<form action="ServiceManController" method="post" name="regisform">
							<div class="row g-3">
								<div class="col-md-12">
									<div class="form-floating">
										<input type="text" class="form-control" id="fname" name="name"
											placeholder="Your Name" onblur="chk_name();"> <label
											for="name">Your Name</label> <span id="ename"
											style="color: red;"></span>
									</div>
								</div>

								<div class="col-md-12">
									<div class="form-floating">
										<input type="email" class="form-control" id="femail"
											name="email" placeholder="Your Email" onblur="exist_email()" onblur="chk_email();">
										<label for="email">Your Email</label> <span id="erroremail"
											style="color: red;"></span> <span id="ajaxemail"
											style="color: red;"></span>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-floating">
										<input type="text" class="form-control" id="fcontact"
											name="contact" placeholder="Your Contact"
											onblur="chk_contact();"> <label for="name">Your
											Contact</label><span id="errorcontact" style="color: red;"></span>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-floating">
										<input type="text" class="form-control" id="faddress"
											name="address" placeholder="Your Address"> <label
											for="name">Your Address</label>
									</div>
								</div>

								<div class="col-md-12">
									<div class="form-floating">
										<input type="password" class="form-control" id="fpassword"
											name="password" placeholder="Your Password"
											onblur="chk_password();"> <label for="name">Your
											Password</label> <span id="errorpassword" style="color: red;"></span>
									</div>
								</div>

								<div class="col-12">
									<button class="btn btn-primary w-100 py-3" type="submit"
										name="action" value="register">Register</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Contact End -->


	<!-- Footer Start -->
	<div
		class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn"
		data-wow-delay="0.1s">
		<div class="container py-5">
			<div class="row g-5">
				<div class="col-lg-3 col-md-6">
					<h4 class="text-light mb-4">Address</h4>
					<p class="mb-2">
						<i class="fa fa-map-marker-alt me-3"></i>123 Street, New York, USA
					</p>
					<p class="mb-2">
						<i class="fa fa-phone-alt me-3"></i>+012 345 67890
					</p>
					<p class="mb-2">
						<i class="fa fa-envelope me-3"></i>info@example.com
					</p>
					<div class="d-flex pt-2">
						<a class="btn btn-outline-light btn-social" href=""><i
							class="fab fa-twitter"></i></a> <a
							class="btn btn-outline-light btn-social" href=""><i
							class="fab fa-facebook-f"></i></a> <a
							class="btn btn-outline-light btn-social" href=""><i
							class="fab fa-youtube"></i></a> <a
							class="btn btn-outline-light btn-social" href=""><i
							class="fab fa-linkedin-in"></i></a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<h4 class="text-light mb-4">Opening Hours</h4>
					<h6 class="text-light">Monday - Friday:</h6>
					<p class="mb-4">09.00 AM - 09.00 PM</p>
					<h6 class="text-light">Saturday - Sunday:</h6>
					<p class="mb-0">09.00 AM - 12.00 PM</p>
				</div>
				<div class="col-lg-3 col-md-6">
					<h4 class="text-light mb-4">Services</h4>
					<a class="btn btn-link" href="">Drain Cleaning</a> <a
						class="btn btn-link" href="">Sewer Line</a> <a
						class="btn btn-link" href="">Water Heating</a> <a
						class="btn btn-link" href="">Toilet Cleaning</a> <a
						class="btn btn-link" href="">Broken Pipe</a>
				</div>
				<div class="col-lg-3 col-md-6">
					<h4 class="text-light mb-4">Newsletter</h4>
					<p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
					<div class="position-relative mx-auto" style="max-width: 400px;">
						<input class="form-control border-0 w-100 py-3 ps-4 pe-5"
							type="text" placeholder="Your email">
						<button type="button"
							class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">SignUp</button>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="copyright">
				<div class="row">
					<div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
						&copy; <a class="border-bottom" href="#">Your Site Name</a>, All
						Right Reserved.
					</div>
					<div class="col-md-6 text-center text-md-end">
						<!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
						Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML
							Codex</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer End -->


	<!-- Back to Top -->
	<a href="#"
		class="btn btn-lg btn-primary btn-lg-square rounded-0 back-to-top"><i
		class="bi bi-arrow-up"></i></a>


	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="lib/wow/wow.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="lib/waypoints/waypoints.min.js"></script>
	<script src="lib/counterup/counterup.min.js"></script>
	<script src="lib/owlcarousel/owl.carousel.min.js"></script>
	<script src="lib/tempusdominus/js/moment.min.js"></script>
	<script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
	<script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

	<!-- Template Javascript -->
	<script src="js/main.js"></script>
</body>

</html>