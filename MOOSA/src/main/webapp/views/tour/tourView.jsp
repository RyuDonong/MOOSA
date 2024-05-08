<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>

<!--
	Strongly Typed by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Left Sidebar - Strongly Typed by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
				
	<style>
    .theme {
	list-style-type: none;
	padding: 0;
	margin: 0;
	overflow: hidden;
	background-color: #333; 
}

     .theme .list {
       float: left;
    }
	 
	 .theme .list a {
       display: block;
       color: white;
       text-align: center;
       padding: 14px 16px; 
       text-decoration: none;
       }
       
       .theme .list.active {
       background-color: #4CAF50;
       }
       
       
	 
	
	</style>
	
	
	
	<body class="left-sidebar is-preload">
		<div id="page-wrapper">
<!-- Header -->
				<%@include file = "/views/common/header.jsp"%>
			

				<!-- Features -->
				<section id="features" class="jjy">
					<div class="container">
						<header>
							<h3>
							 <ul calss ="theme">
							   <li class="list"> 
							      <a href="${contextPath }/list.tour"><span>해변</span></a>
							    </li>
							    <li class="list"> 
							      <a href="${contextPath }/list.tour2"><span>일출ㆍ일몰</span></a>
							    </li>
							    <li class="list"> 
							      <a href="${contextPath }/list.tour3"><span>박물관ㆍ미술관</span></a>
							    </li>
							    <li class="list"> 
							      <a href="${contextPath }/list.tour4"><span>축제</span></a>
							    </li>
							    <li class="list"> 
							      <a href="${contextPath }/list.tour5"><span>음식</span></a>
							    </li>
							    <li class="list"> 
							      <a href="${contextPath }/list.tour6"><span>액티비티</span></a>
							    </li>
							    
							    
							    
							 
							 
							 </ul>
							   
							</h3>
						</header>
						<div class="row aln-center">
							<div class="col-4 col-5-medium col-12-small">

								<!-- Feature -->
									<section>
										<a href="#1" class="image featured"><img src="resources/tourImages/beach/beach1.jpg" alt="" /></a>
										<header>
											<h3>Okay, so what is this?</h3>
										</header>
										<p>This is <strong>Strongly Typed</strong>, a free, fully responsive site template
										by <a href="http://html5up.net">HTML5 UP</a>. Free for personal and commercial use under the
										<a href="http://html5up.net/license">CCA 3.0 license</a>.</p>
									</section>

							</div>
							<div class="col-4 col-5-medium col-12-small">

								<!-- Feature -->
									<section>
										<a href="#2" class="image featured"><img src="resources/tourImages/beach/beach2.jpg" alt="" /></a>
										<header>
											<h3>Nice! What is HTML5 UP?</h3>
										</header>
										<p><a href="http://html5up.net">HTML5 UP</a> is a side project of <a href="http://twitter.com/ajlkn">AJ’s</a> (= me).
										I started it as a way to both test my responsive tools and sharpen up my coding
										and design skills a bit.</p>
									</section>

							</div>
							<div class="col-4 col-5-medium col-12-small">

								<!-- Feature -->
									<section>
										<a href="#" class="image featured"><img src="resources/tourImages/beach/beach3.jpg" alt="" /></a>
										<header>
											<h3>What's this built with?</h3>
										</header>
										<p><strong>Responsive Tools</strong> is a simple set of tools for building responsive
										sites and apps. All of my templates at <a href="http://html5up.net">HTML5 UP</a> are built using these tools.</p>
									</section>

							</div>
							<div class="col-4 col-5-medium col-12-small">

								<!-- Feature -->
									<section>
										<a href="#" class="image featured"><img src="resources/tourImages/beach/beach4.jpg" alt="" /></a>
										<header>
											<h3>What's this built with?</h3>
										</header>
										<p><strong>Responsive Tools</strong> is a simple set of tools for building responsive
										sites and apps. All of my templates at <a href="http://html5up.net">HTML5 UP</a> are built using these tools.</p>
									</section>

							</div>
							<div class="col-4 col-5-medium col-12-small">

								<!-- Feature -->
									<section>
										<a href="#" class="image featured"><img src="resources/tourImages/beach/beach5.jpg" alt="" /></a>
										<header>
											<h3>What's this built with?</h3>
										</header>
										<p><strong>Responsive Tools</strong> is a simple set of tools for building responsive
										sites and apps. All of my templates at <a href="http://html5up.net">HTML5 UP</a> are built using these tools.</p>
									</section>

							</div>
							<div class="col-4 col-5-medium col-12-small">

								<!-- Feature -->
									<section>
										<a href="#" class="image featured"><img src="resources/tourImages/beach/beach6.jpg" alt="" /></a>
										<header>
											<h3>What's this built with?</h3>
										</header>
										<p><strong>Responsive Tools</strong> is a simple set of tools for building responsive
										sites and apps. All of my templates at <a href="http://html5up.net">HTML5 UP</a> are built using these tools.</p>
									</section>

							</div>
								<div class="col-4 col-5-medium col-12-small">

								<!-- Feature -->
									<section>
										<a href="#" class="image featured"><img src="resources/tourImages/beach/beach7.jpg" alt="" /></a>
										<header>
											<h3>Okay, so what is this?</h3>
										</header>
										<p>This is <strong>Strongly Typed</strong>, a free, fully responsive site template
										by <a href="http://html5up.net">HTML5 UP</a>. Free for personal and commercial use under the
										<a href="http://html5up.net/license">CCA 3.0 license</a>.</p>
									</section>

							</div>
								<div class="col-4 col-5-medium col-12-small">

								<!-- Feature -->
									<section>
										<a href="#" class="image featured"><img src="resources/tourImages/beach/beach8.jpg" alt="" /></a>
										<header>
											<h3>Okay, so what is this?</h3>
										</header>
										<p>This is <strong>Strongly Typed</strong>, a free, fully responsive site template
										by <a href="http://html5up.net">HTML5 UP</a>. Free for personal and commercial use under the
										<a href="http://html5up.net/license">CCA 3.0 license</a>.</p>
									</section>

							</div>
								<div class="col-4 col-5-medium col-12-small">

								<!-- Feature -->
									<section>
										<a href="#" class="image featured"><img src="resources/tourImages/beach/beach9.jpg" alt="" /></a>
										<header>
											<h3>Okay, so what is this?</h3>
										</header>
										<p>This is <strong>Strongly Typed</strong>, a free, fully responsive site template
										by <a href="http://html5up.net">HTML5 UP</a>. Free for personal and commercial use under the
										<a href="http://html5up.net/license">CCA 3.0 license</a>.</p>
									</section>

							</div>
							
						
						
						
						
						</div>
					</div>
				</section>

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>