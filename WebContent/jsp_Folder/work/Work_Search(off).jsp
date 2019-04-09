<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<script type = "text/javascript" src ="../../js/jquery.min.js"></script>
<script type = "text/javascript" src ="../../js/jquery-3.3.1.js"></script>
<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>Insert title here</title>
<style>
	table td {text-align:left;}
</style>
<style type="text/css"> /* 테이블 선에 색상주기  */
  .line{border-bottom: 1px solid #fff;
  		border-left: 1px solid #fff;
  		border-right: 1px solid #fff;
  		border-top: 1px solid #fff;}
</style>

</head>
<body>
<!-- 네비게이션 -->
	<nav class="navbar navbar-default" style="z-index: 1">
		<!-- 네비게이션 헤더-->
		<div class="navbar-header">
			<!-- 네비게이션 오른쪽 헤더-->
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<!-- 네비게이션 왼쪽 헤더(로고) -->
			<a class="navbar-brand" href="../welcome/welcome.jsp">
			<img class="logo" src="../../images/logo.png"></a>
		</div>
		
		<!-- 네비게이션 본메뉴 -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<!-- 네비게이션 본메뉴 엘리먼트 -->
			<ul class="nav navbar-nav">
				<li><a href="../emp/Emp_memList.jsp">인사관리</a></li>
				<li><a href="../Pay/Pay.jsp">급여관리</a></li>		
				<li><a href="../attend/Attend_Item_Manage.jsp">근태관리</a></li>
				<li><a href="../approval/Approval.jsp">결재관리</a></li>
				<li><a href="#">업무관리</a></li>
				<li><a href="../customer/Customer_List.jsp">고객관리</a></li>
			</ul>
			<!-- 드롭다운 기능 -->
			<ul class="nav navbar-nav navbar-right">
				<!-- 드롭다운 -->
				<li class="dropdown">
					<!-- 누르기전 이미지 --> <a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원관리<span class="caret"></span>
				</a> <!-- 눌렀을때 이미지 -->
					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그아웃</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<!-- 왼쪽 네비게이션 -->
		<nav class="nav-left">
			<ul class="bg-primary">
				<li><a data-toggle="collapse" data-target="#group1"
					aria-expanded="false" href="Work_task.jsp">업무일지</a>
					<ul class="collapse depth2" id="group1">
						<li><a href="Work_taskUpdate.jsp">업무일지 작성</a></li>
						<li><a href="Work_task.jsp">업무일지 조회</a></li>
					</ul></li>
				<li><a class="active" data-toggle="collapse"
					data-target="#group2" aria-expanded="false" href="#">출/퇴근</a>
					<ul class="collapse in depth2" id="group2">
						<li><a href="Work_on_off.jsp">출/퇴근 기록부</a></li>
						<li><a class="active" href="Work_Search.jsp">출/퇴근현황 조회</a></li>
						<li><a href="Work_time.jsp">근무시간 조회</a></li>
						<li><a href="Work_All_Search.jsp">출퇴근/근태/일정 조회</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</div>
	<div style="width: 1000px"  class="contents">
		<table class="table line" style="margin: auto; text-align:center;">
			<thead class="line">
				<tr>
					<td style="width: 100px">
					</td>
					<td style="font-size: 24px; text-align: center;">
						퇴근시간현황
					</td>
					<td style="width: 100px; vertical-align: bottom; ">
						시간
					</td>
				</tr>
			</thead>
		</table>
		<table class="table" style="margin: auto; text-align:center;">
			<thead>
			</thead>
			<tbody>
				<tr>
					<td>
						일지
					</td>
					<td style="width: 100px"> 
						사원명
					</td>
					<td>
						퇴근시간
					</td>
					<td>
						퇴근입력시간(출/퇴근)
					</td>
				</tr>
				<tr>
					<td>
						2019/02/01
					</td>
					<td>
						사용자
					</td>
					<td>
						2019/02/01 오후 6:30
					</td>
					<td>
						2019/02/01 오후 6:31
					</td>
				</tr>
				<tr>
					<td>
						2019/02/01
					</td>
					<td>
						사용자
					</td>
					<td>
						2019/02/01 오후 6:30
					</td>
					<td>
						2019/02/01 오후 6:35
					</td>
				</tr>
			</tbody>
		</table>
		<br> 
		<input type="button" class="btn btn-primary pull-list"
			 value="인쇄" >
	</div>
</body>
</html>