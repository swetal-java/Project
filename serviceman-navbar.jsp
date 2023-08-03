<%@page import="model.ServiceManModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<meta charset="ISO-8859-1">
<head>

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
</head>

<body>
	<%
	ServiceManModel s = null;
	%>
	<%
	if (session.getAttribute("data") != null) {
		s = (ServiceManModel)session.getAttribute("data");
	}
	%>

	<!-- Spinner Start -->
	<div id="spinner"
		class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="spinner-border text-primary"
			style="width: 3rem; height: 3rem;" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>
	<!-- Spinner End -->

	<!-- Topbar Start -->
	<div class="container-fluid bg-light d-none d-lg-block">
		<div class="row align-items-center top-bar">
			<div class="col-lg-3 col-md-12 text-center text-lg-start">
				<a href="" class="navbar-brand m-0 p-0">
					<h1 class="text-primary m-0">Plumberz</h1>
				</a>
			</div>
			<div class="col-lg-9 col-md-12 text-end">
				<div class="h-100 d-inline-flex align-items-center me-4">
					<i class="fa fa-map-marker-alt text-primary me-2"></i>
					<p class="m-0">123 Street, New York, USA</p>
				</div>
				<div class="h-100 d-inline-flex align-items-center me-4">
					<i class="far fa-envelope-open text-primary me-2"></i>
					<p class="m-0">info@example.com</p>
				</div>
				<div class="h-100 d-inline-flex align-items-center">
					<a class="btn btn-sm-square bg-white text-primary me-1" href=""><i
						class="fab fa-facebook-f"></i></a> <a
						class="btn btn-sm-square bg-white text-primary me-1" href=""><i
						class="fab fa-twitter"></i></a> <a
						class="btn btn-sm-square bg-white text-primary me-1" href=""><i
						class="fab fa-linkedin-in"></i></a> <a
						class="btn btn-sm-square bg-white text-primary me-0" href=""><i
						class="fab fa-instagram"></i></a>
				</div>
			</div>
		</div>
	</div>
	<!-- Topbar End -->


	<!-- Navbar Start -->
	<div class="container-fluid nav-bar bg-light">
		<nav
			class="navbar navbar-expand-lg navbar-light bg-white p-3 py-lg-0 px-lg-4">
			<a href=""
				class="navbar-brand d-flex align-items-center m-0 p-0 d-lg-none">
				<h1 class="text-primary m-0">Plumberz</h1>
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
				<span class="fa fa-bars"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<div class="navbar-nav me-auto">
					<a href="serviceman-home.jsp" class="nav-item nav-link active">Home</a>
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle"
							data-bs-toggle="dropdown">Services</a>
						<div class="dropdown-menu fade-up m-0">
							<a href="serviceman-upload-service.jsp" class="dropdown-item">Upload
								Service</a> <a href="serviceman-manage-service.jsp"
								class="dropdown-item">Manage Service</a>
						</div>
					</div>
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle"
							data-bs-toggle="dropdown">Booked Services</a>
						<div class="dropdown-menu fade-up m-0">
							<a href="serviceman-pending-service.jsp" class="dropdown-item">Pending
								Service</a> <a href="serviceman-complete-service.jsp"
								class="dropdown-item">Complete Service</a> <a
								href="serviceman-rejected-service.jsp" class="dropdown-item">Rejected
								Service</a>
						</div>
					</div>
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle"
							data-bs-toggle="dropdown"><%=s.getName() %></a>
						<div class="dropdown-menu fade-up m-0">
							<a href="serviceman-profile.jsp" class="dropdown-item">Profile</a>
							<a href="serviceman-change-password.jsp" class="dropdown-item">Change
								Password</a> <a href="serviceman-logout.jsp" class="dropdown-item">Logout</a>
						</div>
					</div>
				</div>
				<div
					class="mt-4 mt-lg-0 me-lg-n4 py-3 px-4 bg-primary d-flex align-items-center">
					<div
						class="d-flex flex-shrink-0 align-items-center justify-content-center bg-white"
						style="width: 45px; height: 45px;">
						<i class="fa fa-phone-alt text-primary"></i>
					</div>
					<div class="ms-3">
						<p class="mb-1 text-white">Emergency 24/7</p>
						<h5 class="m-0 text-secondary">+012 345 6789</h5>
					</div>
				</div>
			</div>
		</nav>
	</div>
	<!-- Navbar End -->


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
<title>Insert title here</title>
</head>
<body>

</body>
</html>