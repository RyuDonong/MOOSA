<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.kh.member.model.vo.Member"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>

<html>
<head>
<title>MOOSA</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css?after" />
</head>

<body class="is-preload">
	<div id="page-wrapper">

		<!-- 헤더 (메인로고,네비바,로그인창/마이페이지)  -->
		<%@include file="/views/common/header.jsp"%>
		
		<!-- 배너 -->
		<section id="banner">
			<header>
				<h2>
					Arcana: <em>A responsive site template freebie by <a
						href="http://html5up.net">HTML5 UP</a></em>
				</h2>
				<a href="#" class="button">Learn More</a>
			</header>
		</section>

		<!-- Highlights -->
		<section class="wrapper style1">
			<div class="container">
				<div class="row gtr-200">
					<section class="col-4 col-12-narrower">
						<div class="box highlight">
							<i class="icon solid major fa-paper-plane"></i>
							<h3>This Is Important</h3>
							<p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et
								dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse
								eu.</p>
						</div>
					</section>
					<section class="col-4 col-12-narrower">
						<div class="box highlight">
							<i class="icon solid major fa-pencil-alt"></i>
							<h3>Also Important</h3>
							<p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et
								dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse
								eu.</p>
						</div>
					</section>
					<section class="col-4 col-12-narrower">
						<div class="box highlight">
							<i class="icon solid major fa-wrench"></i>
							<h3>Probably Important</h3>
							<p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et
								dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse
								eu.</p>
						</div>
					</section>
				</div>
			</div>
		</section>

		<!-- Gigantic Heading -->
		<section class="wrapper style2">
			<div class="container">
				<header class="major">
					<h2>A gigantic heading you can use for whatever</h2>
					<p>With a much smaller subtitle hanging out just below it</p>
				</header>
			</div>
		</section>

		<!-- Posts -->
		<section class="wrapper style1">
			<div class="container">
				<div class="row">
					<section class="col-6 col-12-narrower">
						<div class="box post">
							<a href="#" class="image left"><img src="images/pic01.jpg"
								alt="" /></a>
							<div class="inner">
								<h3>The First Thing</h3>
								<p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et
									dapibus nisl amet mattis, sed a rutrum accumsan sed.
									Suspendisse eu.</p>
							</div>
						</div>
					</section>
					<section class="col-6 col-12-narrower">
						<div class="box post">
							<a href="#" class="image left"><img src="images/pic02.jpg"
								alt="" /></a>
							<div class="inner">
								<h3>The Second Thing</h3>
								<p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et
									dapibus nisl amet mattis, sed a rutrum accumsan sed.
									Suspendisse eu.</p>
							</div>
						</div>
					</section>
				</div>
				<div class="row">
					<section class="col-6 col-12-narrower">
						<div class="box post">
							<a href="#" class="image left"><img src="images/pic03.jpg"
								alt="" /></a>
							<div class="inner">
								<h3>The Third Thing</h3>
								<p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et
									dapibus nisl amet mattis, sed a rutrum accumsan sed.
									Suspendisse eu.</p>
							</div>
						</div>
					</section>
					<section class="col-6 col-12-narrower">
						<div class="box post">
							<a href="#" class="image left"><img src="images/pic04.jpg"
								alt="" /></a>
							<div class="inner">
								<h3>The Fourth Thing</h3>
								<p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et
									dapibus nisl amet mattis, sed a rutrum accumsan sed.
									Suspendisse eu.</p>
							</div>
						</div>
					</section>
				</div>
			</div>
		</section>

		<!-- CTA -->
		<section id="cta" class="wrapper style3">
			<div class="container">
				<header>
					<h2>Are you ready to continue your quest?</h2>
					<a href="#" class="button">Insert Coin</a>
				</header>
			</div>
		</section>
		
		<!-- 푸터 (유용한사이트링크,건의사항,sns아이콘) -->
		<%@include file="/views/common/footer.jsp" %>


	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>