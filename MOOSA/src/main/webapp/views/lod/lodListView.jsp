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
	<body class="left-sidebar is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<%@include file = "/views/common/header.jsp"%>

			<!-- Main -->
				<section id="main">
					<div class="container">
						<div class="row">
							<!-- Content -->
							<div id="content" class="col-8 col-12-medium imp-medium">
								<div class="inner">
									<header>
										<ul class="lod_menu">
											<li class="on"><button id="ho">HOTEL</button></li>
											<li><button >PENSION</button></li>
											<li><button>POOLVILA</button></li>
										</ul>
									</header>
									<div id="contentDiv">
									</div>
								</div>
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
		 <script>
	
		$(function(){
			$("#ho").click();
		});
		
		$('.lod_menu li button').on('click', function() {
			$(this).parent('li').addClass('on');
			$(this).parent('li').siblings().removeClass('on');
			//console.log($(this).text());
			$.ajax({
				url : "/moosa/selectList.lo",
				data : {category :$(this).text()},
				success : function(list){
					console.log(list)
					var html = "";
					for (var i in list){
						
						html += '<section class="tiles"><article class="style1"><span class="image"><img src="/moosa'+list[i].Thumbnail+'" alt="" /></span><a href="/moosa/lodDetail.lo?lno='+list[i].lodNo+'"><h2 id="contentTitle">'+list[i].lodName+'</h2><div class="content"><p>'+list[i].lodAddress+'</p></div></a></article></section>';
					}
					$("#contentDiv").html(html);
				
				},
				error : function(){
					console.log("통신 실패");
				}
			});
			
		});
	</script> 

	</body>
</html>