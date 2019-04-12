<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   <script>
	$(function(){
		$(".tmenu li").click(function(){  
	  		$(".tmenu li").removeClass("active");
	  		$(this).addClass("active"); 
		})
	})
</script>
</head>
<body>
	<!-- 네비게이션 -->
	<nav class="navbar navbar-default" style="z-index:9999">
		<!-- 네비게이션 헤더 -->
		<div class="navbar-header">
			<!-- 네비게이션 왼쪽 헤더(로고) -->
			<a class="navbar-brand" href="../welcome/welcome.jsp"><img class="logo" src="../../images/logo.png"></a>
		</div>
		<!-- 네비게이션 본메뉴 -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<!-- 네비게이션 본메뉴 엘리먼트 -->
			<ul class="nav navbar-nav tmenu">
				<li><a href="../emp/read">인사관리</a></li>
				<li><a href="../pay/pay_mainpage.jsp">급여관리</a></li>		
				<li><a href="../attend/attend_DataList">근태관리</a></li>
				<li><a href="../approval/selectDraft">결재관리</a></li>
				<li><a href="../work/selectBusinessLog">업무관리</a></li>
				<li><a href="../client/selectClientInfo">고객관리</a></li>
			</ul>
			<!-- 드롭다운 기능 -->
			<ul class="nav navbar-nav navbar-right">
				<!-- 드롭다운 -->
				<li class="dropdown">
					<!-- 누르기 전 이미지 -->
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">
						<span>${member}님</span>
               			<img style="border-radius:8rem; width:40px; height:40px;" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
               			<span class="caret"></span>
               		</a>
					<!-- 눌렀을 때 -->
					<ul class="dropdown-menu">
						<li><a href="../mem/logout">로그아웃</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
</body>
</html>