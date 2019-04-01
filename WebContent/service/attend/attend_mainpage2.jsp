<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>attend_mainpage</title>

<script type="text/javascript">

	function attendcodelist(){
		location.href = "../../attend/attend_CodeList";
	}

	function attenddataList(){
		location.href = "../../attend/attend_DataList";
	}	
	
</script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/common.css">
<script type = "text/javascript" src ="../js/jquery.min.js"></script>
<script type = "text/javascript" src ="../js/bootstrap.js"></script>
</head>

<body>
	<!-- 네비게이션 -->
	<nav class="navbar navbar-default" style="z-index:9999">
		<!-- 네비게이션 헤더 -->
		<div class="navbar-header">
			<!-- 네비게이션 왼쪽 헤더(로고) -->
			<a class="navbar-brand" href="../service/welcome/welcome.jsp"><img class="logo" src="../images/logo.png"></a>
		</div>
		
		<!-- 네비게이션 본메뉴 -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<!-- 네비게이션 본메뉴 엘리먼트 -->
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">인사관리</a></li>
				<li><a href="Pay.jsp">급여관리</a></li>		
				<li><a href="Attend.jsp">근태관리</a></li>
				<li><a href="Approval.jsp">결재관리</a></li>
				<li><a href="Work_taskUpdate.jsp">업무관리</a></li>
				<li><a href="Customer_List.jsp">고객관리</a></li>
			</ul>
			<!-- 드롭다운 기능 -->
			<ul class="nav navbar-nav navbar-right">
				<!-- 드롭다운 -->
				<li class="dropdown">
					<!-- 누르기 전 이미지 -->
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">회원관리<span class="caret"></span></a>
					<!-- 눌렀을 때 -->
					<ul class="dropdown-menu">
						<li><a href="#">로그아웃</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	
	<div class="container">
		<!-- 왼쪽 네비게이션 -->
		<nav class="nav-left">	
			<ul class="bg-primary">
				<li>
					<a class="active" data-toggle="collapse" data-target="#group1"
					aria-expanded="false" href="#">기본사항관리</a>
					<ul class="collapse in depth2" id="group1">
						<li><a class="active" href="./read">근태항목관리</a></li>
					</ul>
				</li>
				<li>
					<a data-toggle="collapse" aria-expanded="false" href="#">근태관리</a>
				</li>
				<li>
					<a data-toggle="collapse" data-target="#group3"
					aria-expanded="false" href="#">출력물</a>
					<ul class="collapse depth2" id="group3">
						<li><a href="#">근태현황</a></li>
						<li><a href="#">근태집계표</a></li>
						<li><a href="#">휴가잔여일수현황</a></li>
						<li><a href="#">휴가사용일현황</a></li>
					</ul>
				</li>
			</ul>
		</nav>		
		<div class="contents">
			<input type="button" onclick="javascript:attendcodelist()" value="근태코드">
			<br>
			<input type="button" onclick="javascript:attenddataList()" value="근태">
			<br>
		</div>
	</div>
</body>
</html>