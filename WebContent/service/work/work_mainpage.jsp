<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>work_mainpage</title>
<script type="text/javascript">

		function goBusinessLog(){
			location.href = "../../work/selectBusinessLog"
		}
		
		/* function goMonthWork(search_month){
			alert(search_month);
			location.href = "../../work/selectMonthWork"
		} */
		
		function goWorkState(){
			location.href = "../../work/selectWorkState"
		}
		
		/* function goWorkTime(){
			location.href = "../../work/selectWorkTime"
		} */
		
		function goWorkEtc(){
			location.href = "../../work/selectWorkEtc"
		}

		
	</script>
	<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="../../css/common.css">
	<script type = "text/javascript" src ="../../js/jquery.min.js"></script>
	<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
</head>
<body>
	<!-- 네비게이션 -->
	<nav class="navbar navbar-default" style="z-index:9999">
		<!-- 네비게이션 헤더 -->
		<div class="navbar-header">
			<!-- 네비게이션 왼쪽 헤더(로고) -->
			<a class="navbar-brand" href="../service/welcome/welcome.jsp"><img class="logo" src="../../images/logo.png"></a>
		</div>
		
		<!-- 네비게이션 본메뉴 -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<!-- 네비게이션 본메뉴 엘리먼트 -->
			<ul class="nav navbar-nav">
				<li><a href="../emp/read">인사관리</a></li>
				<li><a href="#">급여관리</a></li>		
				<li><a href="#">근태관리</a></li>
				<li><a href="#">결재관리</a></li>
				<li class="active"><a href="#">업무관리</a></li>
				<li><a href="#">고객관리</a></li>
			</ul>
			<!-- 드롭다운 기능 -->
			<ul class="nav navbar-nav navbar-right">
				<!-- 드롭다운 -->
				<li class="dropdown">
					<!-- 누르기 전 이미지 -->
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">설정<span class="caret"></span></a>
				<!-- 눌렀을 때 -->
				<ul class="dropdown-menu">
						<li><a href="../service/mem/login.jsp">로그아웃</a></li>
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
					<a class="active" href="#">업무일지조회</a>
				</li>
				<li>
					<a href="#">월별출퇴근기록</a>
				</li>
				<li>
					<a href="#">출퇴근현황</a>
				</li>
				<li>
					<a href="#">일별근무시간조회</a>
				</li>
				<li>
					<a href="#">출퇴근/근태/일정 조회</a>
				</li>
			</ul>
		</nav>
		<div class="contents">
			<input type="button" class="btn btn-default" onclick="javascript:goBusinessLog()" value="업무일지조회">
			<form id="search_month" action="../../work/work_monthwork.jsp">
				<input type="month" name="search_month" min="2018-01" value="2019-01">
				<input type="submit" value="월별 출퇴근 기록">
			</form>		
			<!-- <input type="button" onclick="javascript:goMonthWork()" value="월별출퇴근기록"> <p> -->		
			<input type="button" class="btn btn-default" onclick="javascript:goWorkState()" value="출퇴근현황"> <p>	
			<form id="search_day" action="../../work/selectWorkTime">
				<input type="date" name="search_day" min="2018-01-01" >
				<input type="submit" value="일별근무시간조회">	
			</form>
			<!-- <input type="button" onclick="javascript:goWorkTime()" value="일별근무시간조회"> <p> -->
			<input type="button" class="btn btn-default" onclick="javascript:goWorkEtc()" value="출퇴근/근태/일정 조회">
		</div>
	</div>
</body>
</html>