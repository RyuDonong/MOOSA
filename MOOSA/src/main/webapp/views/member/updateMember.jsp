<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.member.model.vo.Member"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>마이페이지</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="left-sidebar is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<%@include file="/views/common/header.jsp" %>
			<!-- Main -->
				<section id="main">
					<div class="container">
						<div class="row">
							<!-- Sidebar -->
								<div id="sidebar" class="col-4 col-12-medium">
									<!-- Excerpts -->
										<section>
											<ul class="divided">
												<li >
													<a href="${contextPath }/updateMember.me">개인 정보 수정</a>
												</li>
												<li>
													<a href="${contextPath }/selectWishList.ws">위시 리스트</a>
												</li>
												<li>
													<a href="${contextPath }/myReview.re">나의 리뷰</a>
												</li>
											</ul>
										</section>
								</div>

							<!-- Content -->
								<div id="content" class="col-8 col-12-medium imp-medium">

									<!-- Post -->
										<article class="box post">
											<header>
												<h2>개인정보 </h2>
											</header>
												<form action="${contextPath}/updateMember.me" method="post" id="updateMemberForm">
													아이디 : <input name="userId" value="${loginUser.userId}" readonly><br>
													연락처 : <input type="text" value="${loginUser.phone}">
													이메일 : <input type="email" name="email" value="${loginUser.email}"><br>
													주소 : <input name="address" value="${loginUser.address}"><br>
													<!-- 프로필 사진 미리보기 -->
													<img src="${loginUser.thumbnail}" id="profile-pre">
													<input type="file" name="profile" onchange="loadImg(this);">													
													<button type="submit">수정하기</button>
																										
												</form>
												
													<button >비밀번호 변경하기</button>
													<button>탈퇴</button>
												
												
										</article>

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
		function loadImg(inputFile){
			if(inputFile.files.length==1){
				var reader =new FileReader();
				reader.readAsDataURL(inputFile.files[0]);
				reader.onload = function(e){
					$("#profile-pre").attr("src",e.target.result);
				
				}
			}else{
				$("#profile-pre").attr("src",null);
			}
		}
	</script>
	
	</body>
</html>