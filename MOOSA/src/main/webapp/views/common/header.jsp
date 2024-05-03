<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.member.model.vo.Member"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
	String alertMsg = (String)session.getAttribute("alertMsg"); 
	Member loginUser = (Member)session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
		<title>MOOSA 무사 이제와시냐</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		
		<style> /* 마이페이지 스타일 */
        .user-info {
            display: flex;
            align-items: center;
            background-color: #878787;
            color: #fff;
            padding: 8px 12px;
            border-radius: 20px;
            position: absolute;
            top: 10px;
            right: 10px;
        }

        .profile-pic {
            width: 15px;
            height: 15px;
            border-radius: 50%;
            margin-right: 8px;
        }

        .username,
        .email,
        .status {
            margin-right: 15px;
        }

    	</style>
	</head>
<body>

<!-- el로 contextPath 사용하기 위한 작업(page에 변수처리해주기) -->
	<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
	
	<script>
		    //로그인 성공 알림메세지
		var msg = "<%=alertMsg%>";
		
		if(msg!="null"){ 
			alert(msg); 
			<%session.removeAttribute("alertMsg");%>
		}
	</script>
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
				<%--로그인 전 마이페이지 --%>
				<c:choose> 
					<c:when test="${loginUser!=null }">
						<li>
							<div class="user-info"> <!-- 로그인 후 마이페이지 -->
						        <img src="profile.png" class="profile-pic">
						        <span>${loginUser.userName }</span>
						        <span style="padding:10px 10px;">${loginUser.email }</span>
						        <span><button onclick="logout();" style="font-size:10px; padding:10px 10px;">로그아웃</button></span>
						    </div>
						</li>
					</c:when>
					
					<c:otherwise> <%--로그인 후 마이페이지 --%>
						<li><button onclick="login();">MOOSA 로그인</button></li>
					</c:otherwise>
				</c:choose>
						</ul>
					</nav>

			</div>
		</section>
		
		<script>
			function login(){
				location.href = "${contextPath}/loginPage.go";
			}
			function logout(){
				location.href = "${contextPath}/logout.me";
			}
		</script>
</body>
</html>