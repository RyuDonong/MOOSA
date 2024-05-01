<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.kh.member.model.vo.Member"%> <!-- Member 미리 import 돼 있음 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <!-- Core라이브러리 -->
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

		<!-- 헤더 -->
		<div id="header">
			<!-- contextPath 선언 -->
			<c:set var="contextPath" value="${pageContext.request.contextPath }" />

	<!--  
			<form id="login-form" action="" method="post"
			style="padding-right: 20px;
				    margin: auto;
				    float: right;">
				<button type="submit">MOOSA 로그인</button>
			</form>
	-->
			
		    <div style="float: right; padding-right: 50px;">
                    <table>
                        <tr>
                            <th width="5px;" >
                                <img width="40%" src="https://i.namu.wiki/i/loOwaJxvAvn2RkRchhlBrOrnb_4FLvUtwwIDz8YVWbExKtnwSEros4WlJp1_-zgljHQLmrW8X-Fa2uG0lc23DA.webp">
                            </th>
                            <th style="font-size: 16px; line-height: 1; text-align: center;">이름</th>
                        </tr>
                        <th>
                            <button style="width: 1px; line-height: 2;">로그아웃</button>
                        </th>
                        <th style="font-size: 16px; text-align: center; padding-left: 10px;">아이디</th>
                    </table>
             </div>
			
			
			
			<c:choose>
				<c:when test=""> <!-- 로그인 이전 (로그인 버튼)  -->
					
				</c:when>
				
				<c:otherwise> <!-- 로그인 이후 (마이페이지) -->
				
				</c:otherwise>
			</c:choose>
			
			<!-- 로고 -->
			<h1>
				<a href="index.jsp" id="logo" style="padding-left:150px;">MOOSA</a>
			</h1>

			<!-- 네비바 -->
			<nav id="nav">
				<ul>
					<li class="current"><a href="index.jsp">홈</a></li>
					<li><a href="#">드롭다운은 차후에 구현예정</a>
						<ul>
							<li><a href="#">드롭다운은 차후에 구현예정</a></li>
							<li><a href="#">드롭다운은 차후에 구현예정</a></li>
							<li><a href="#">드롭다운은 차후에 구현예정</a></li>
							<li><a href="#">드롭다운의 드롭다운</a>
								<ul>
									<li><a href="#">드롭다운의 드롭다운</a></li>
									<li><a href="#">드롭다운의 드롭다운</a></li>
									<li><a href="#">드롭다운의 드롭다운</a></li>
									<li><a href="#">드롭다운의 드롭다운</a></li>
									<li><a href="#">드롭다운의 드롭다운</a></li>
								</ul></li>
							<li><a href="#">드롭다운은 차후에 구현예정</a></li>
						</ul></li>
					<li><a href="${contextPath }/views/lod/lod_index.html">숙소</a></li>
					<li><a href="${contextPath }/views/tour/tour_index.html">관광명소</a></li>
					<li><a href="${contextPath }/views/course/course_index.html">코스추천</a></li>
					<li><a href="${contextPath }/views/board/board_index.html">소통게시판</a></li>
				</ul>
			</nav>
		</div>
	</div>
</body>
</html>