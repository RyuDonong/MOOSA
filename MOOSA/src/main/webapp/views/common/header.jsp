<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.member.model.vo.Member"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
		<title>MOOSA 무사 이제와시냐</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
<body>

<!-- el로 contextPath 사용하기 위한 작업(page에 변수처리해주기) -->
	<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
	
	<!-- Header -->
				<section id="header">
					<div class="container">

						<!-- Logo -->
							<h1 id="logo"><a href="index.jsp" style="color: rgb(65, 62, 62);">MOOSA</a></h1>
							<p>제주에 무사 와시냐</p>

						<!-- Nav -->
							<nav id="nav">
								<ul>
									<li><a class="icon solid fa-home" href="${contextPath }/index.jsp"><span>홈으로</span></a></li>
									<!-- <li>
										<a href="#" class="icon fa-chart-bar"><span>관광명소</span></a>
										<ul>
											<li><a href="#">Lorem ipsum dolor</a></li>
											<li><a href="#">Magna phasellus</a></li>
											<li><a href="#">Etiam dolore nisl</a></li>
											<li>
												<a href="#">Phasellus consequat</a>
												<ul>
													<li><a href="#">Magna phasellus</a></li>
													<li><a href="#">Etiam dolore nisl</a></li>
													<li><a href="#">Phasellus consequat</a></li>
												</ul>
											</li>
											<li><a href="#">Veroeros feugiat</a></li>
										</ul>
									</li> -->
									<li><a class="icon solid fa-cog" href="${contextPath }/list.lo"><span>관광명소</span></a></li>
									<li><a class="icon solid fa-cog" href="${contextPath }/list.lo"><span>숙소</span></a></li>
									<li><a class="icon solid fa-retweet" href="${contextPath }/list.lo"><span>코스추천</span></a></li>
									<li><a class="icon solid fa-sitemap" href="${contextPath }/list.lo"><span>소통게시판</span></a></li>
									<li><a class="icon solid fa-sitemap" href="${contextPath }/views/common/loginPage.jsp"><span>로그인</span></a></li>
									<c:choose>
										<c:when test="">
										
										</c:when>
										<c:otherwise>
										
										</c:otherwise>
									
									</c:choose>
									
									<li><button>MOOSA 로그인</button></li>
									<li><button>마이페이지</button></li>
								</ul>
							</nav>

					</div>
				</section>

</body>
</html>