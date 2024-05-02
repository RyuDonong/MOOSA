<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>

<!--
	Phantom by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
		<title>MOOSA</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		  <link rel="stylesheet" href="lod_assets/css/lod_main.css?after"/>
		<noscript><link rel="stylesheet" href="lod_assets/css/noscript.css" /></noscript>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
		
	</head>
	
	
	 <%@include file="/views/common/header.jsp"%> 
	<body class="is-preload">
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
					</header>
						<div class="inner">
							<!-- Logo -->
								<a href="/moosa/index.jsp" class="logo">
									<span class="title"><h1>MOOSA</h1></span>
								</a>
						</div>
					

				<!-- Main -->
					<div id="main">
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

				<!-- Footer -->
					<footer id="footer">
						<div class="inner">
							
							<ul class="copyright">
								<li>&copy; Untitled. All rights reserved</li>
							</ul>
						</div>
					</footer>

			</div>

		<!-- Scripts -->
			<script src="lod_assets/js/jquery.min.js"></script>
			<script src="lod_assets/js/browser.min.js"></script>
			<script src="lod_assets/js/breakpoints.min.js"></script>
			<script src="lod_assets/js/util.js"></script>
			<script src="lod_assets/js/main.js"></script>

			
	</body>
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
					//console.log(list)
					var html = "";
					for (var i in list){
						
						html += '<section class="tiles"><article class="style1"><span class="image"><img src="/moosa'+list[i].Thumbnail+'" alt="" /></span><a href="generic.html"><h2 id="contentTitle">'+list[i].lodName+'</h2><div class="content"><p>'+list[i].lodAddress+'</p></div></a></article></section>';
					}
					$("#contentDiv").html(html);
				
				},
				error : function(){
					console.log("통신 실패");
				}
			});
			
		});

		
		
		
	</script> 
</html>