<%@page import="com.kh.lodging.model.vo.Review"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.member.model.vo.Member" import="java.util.HashMap"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
	ArrayList<Review> list = (ArrayList<Review>)request.getAttribute("list");

%>

<!DOCTYPE HTML>
<!--
	Strongly Typed by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>${lod.lodName }</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="no-sidebar is-preload">
		<div id="page-wrapper">
				
			<!-- Header -->
			<%@include file="/views/common/header.jsp" %>	
			<!-- Main -->
				<section id="main">
					<div class="container">
						<div id="content">

							<!-- Post -->
								<article class="box post">
									<header>
										<h2>${lod.category }</h2>
									</header>
									<span class="image featured"><img src="/moosa${lod.thumbnail }" alt="" /></span>
									<h3>숙소 정보</h3>
									<p>${lod.category }</p>
									<div>${lod.lodAddress }</div>
									<h3>숙소 방 정보</h3>
									<p></p>
									
									<h3>고객 리뷰</h3>
									<div class="review">
										<c:choose>
											<c:when test="${empty list}">작성된 리뷰가 없습니다.</c:when>
											<c:otherwise>
												<c:forEach var="r" items="${list}">
													<ul class="score">
														<li>
														 	<c:forEach begin="1" end="${r.count}">
																<img class="full" alt="" src="/moosa/images/fullStar.png">
															</c:forEach>
															<c:forEach begin="${r.count + 1}" end="5">
																<img alt="" src="/moosa/images/star.png">
															</c:forEach>
														</li>
													</ul>
													<div>${r.userNo }</div>
													<div>${r.roomNo }</div>
													<div>${r.reviewContent}</div>
													<c:forEach var="p" items="${pList }">
														<div><img class="reviewPhoto" alt="" src="/moosa${p.thumbnail }"></div>
													</c:forEach>
												</c:forEach>
											</c:otherwise>
										</c:choose>
									</div>
								</article>

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