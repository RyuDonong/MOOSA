<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Popper JS -->
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<%String contextPath = request.getContextPath();%>
</head>

<style>
<
style>* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	background-color: #f8f9fa;
	font-family: 'Arial', sans-serif;
}

.container {
	max-width: 600px;
	margin: 50px auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

h1 {
	color: #007bff;
	text-align: center;
}

.join_box {
	margin-top: 20px;
}

.checkBox {
	margin-bottom: 20px;
}

.checkBox>label {
	display: flex;
	align-items: center;
	margin-bottom: 10px;
}

.checkBox input[type="checkbox"] {
	margin-right: 10px;
	width: 20px; /* Adjust checkbox size */
	height: 20px; /* Adjust checkbox size */
}

textarea {
	width: 100%;
	height: 100px;
	margin-top: 10px;
	padding: 10px;
	resize: none;
	border: 1px solid #ced4da;
	border-radius: 5px;
}

.footBtwrap {
	margin-top: 20px;
	overflow: hidden;
}

.footBtwrap>li {
	float: left;
	width: 100%;
}

.agree {
	width: 100%;
	padding: 10px;
	border: none;
	border-radius: 9px;
	cursor: pointer;
	font-size: 18px;
	transition: background-color 0.3s;
	background-color: #007bff;
	color: #fff;
}

.agree.disabled {
	background-color: #ccc;
	cursor: not-allowed;
}
</style>

</head>
<body>
	<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

	<div class="container">
		<h1>
			<a href="http://localhost:8888/moosa/">MOOSA</a>
		</h1>
		
		
			<div class="join_box">
				<div class="checkBox check01">
					<label for="chkAll"> <input type="checkbox" name="chkAll"
						id="chkAll" class="chkAll"> 이용약관, 개인정보 수집 및 이용, 프로모션 안내 메일
						수신(선택)에 모두 동의합니다.
					</label>
				</div>
				<div class="checkBox check02">
					<label for="chk1"> <input type="checkbox" name="chk"
						id="chk1" class="chk"> 이용약관 동의(필수)
					</label>
					<textarea name="" id="" rows="5" class="form-control">여러분을 환영합니다. 네이버 서비스 및 제품(이하 '서비스')을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 '네이버')와 이를 이용하는 네이버 서비스 회원(이하 '회원') 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.</textarea>
				</div>
				<div class="checkBox check03">
					<label for="chk2"> <input type="checkbox" name="chk"
						id="chk2" class="chk"> 개인정보 수집 및 이용에 대한 안내(필수)
					</label>
					<textarea name="" id="" rows="5" class="form-control">여러분을 환영합니다. 네이버 서비스 및 제품(이하 '서비스')을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 '네이버')와 이를 이용하는 네이버 서비스 회원(이하 '회원') 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.</textarea>
				</div>
				<div class="checkBox check03">
					<label for="chk3"> <input type="checkbox" name="chk"
						id="chk3" class="chk"> 이벤트 등 프로모션 알림 메일 수신(선택)
					</label>
				</div>
			</div>
			<ul class="footBtwrap clearfix">
				<button type="submit" class="agree" onclick="enrollForm();" disabled>동의</button>
			</ul>
		
	</div>

	<script>
		$(function() {
			const checkAll = $('#chkAll');
			const chks = $('.chk');
			const chkBoxLength = chks.length;
			const chk1 = $('#chk1');
			const chk2 = $('#chk2');

			// 전체 선택 체크박스 이벤트 리스너 추가
			checkAll.on('click', function(event) {
				if (event.target.checked) {
					chks.prop('checked', true);
				} else {
					chks.prop('checked', false);
				}
			});

			// 각 체크박스의 이벤트 리스너 추가
			chks.on('click',
					function() {
						let count = 0;
						chks.each(function() {
							if ($(this).prop('checked')) {
								count++;
							}
						});
						// chk1과 chk2가 모두 선택되었을 때 동의 버튼 활성화
						if (chk1.prop('checked') && chk2.prop('checked'))
						//(chkAll.prop('checked'))를 해봤는데 안됨
						{
							$('.agree').prop('disabled', false).removeClass(
									'disabled');
						} else {
							$('.agree').prop('disabled', true).addClass(
									'disabled');
						}

						// 모든 체크박스가 선택되었을 때 전체 선택 체크박스도 체크
						if (count !== chkBoxLength) {
							checkAll.prop('checked', false);
						} else {
							checkAll.prop('checked', true);
						}
					});
			
			});
		
			
			function enrollForm(){
        	//회원가입 페이지로 이동시키는 함수 
        		//location.href = "이동시킬 경로"
        		//단순 페이지 이동 요청을 보내면 url에 프로젝트 디렉토리 구조가 노출되기 때문에 보안상 문제가 있을 수 있다.
        		//때문에 단순 페이지 이동요청도 servlet을 거쳐서 요청처리 해야한다.
        		
        		location.href = "<%=contextPath%>/enrollForm.me";
			};

        		
	
		
		
		
			
	</script>







</body>
</html>
