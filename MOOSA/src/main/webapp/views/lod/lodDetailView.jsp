<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.member.model.vo.Member" import="java.util.HashMap"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
	

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
									
									<h3>고객 리뷰</h3>
									<div class="review">
										<c:choose>
											<c:when test="${empty list}">작성된 리뷰가 없습니다.</c:when>
											<c:otherwise>
												<c:forEach var="r" items="${list}">
													<table>
														<thead>
															<tr>
																<th>작성자</th>
																<th>내용</th>
																<c:if test="${not empty r.thumbnail}">
																	<th>사진</th>
																</c:if>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>${r.userNo }</td>
																<td>${r.reviewContent}</td>
																<c:if test="${not empty r.thumbnail}">
																	<th><img alt="" src="/moosa${r.thumbnail }"></th>
																</c:if>
															</tr>
														</tbody>	
													</table> 
													
												</c:forEach>
											</c:otherwise>
										</c:choose>
									</div>
									<h3>숙소 방 정보</h3>
									<p></p>
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

			<!-- <script>
				$(function(){
					lodgingDetail();
				});
				function lodgingDetail(){
					$.ajax({
						url : "review.lo",
						data : {lno : ${lod.lodNo}},
						success : function(list){
							
						},
						error : function(){
							console.log("통신 오류")
						}
					});
				}
			</script> -->

	</body>
</html>