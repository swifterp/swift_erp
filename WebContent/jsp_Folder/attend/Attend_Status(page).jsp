<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<script type = "text/javascript" src ="../../js/jquery-3.3.1.js"></script>
<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<title>SWIFT ERP</title>
</head>
<body>
<!-- 네비게이션 -->
	<nav class="navbar navbar-default" style="z-index: 1">
		<!-- 네비게이션 헤더 -->
		<div class="navbar-header">
			<!-- 네비게이션 오른쪽 헤더 -->
			<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			aria-expanded="false">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
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
				<li><a href="../pay/Allowance_Item.jsp">급여관리</a></li>		
				<li><a href="#">근태관리</a></li>
				<li><a href="../approval/Prospect_write.jsp">결재관리</a></li>
				<li><a href="../work/Work_taskUpdate.jsp">업무관리</a></li>
				<li><a href="../customer/Customer_List.jsp">고객관리</a></li>
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
					aria-expanded="false" href="Attend_Item_Manage.jsp">기본 항목 관리</a>
					<ul class="collapse depth2" id="group1">
						<li><a href="#">근태 항목 관리</a></li>
						<li><a href="#">휴가 항목 관리</a></li>
					</ul>
				</li>
				<li><a data-toggle="collapse"
					data-target="#group2" aria-expanded="false" href="Attend_Input.jsp">근태 관리</a>
					<ul class="collapse depth2" id="group2">
						<li><a href="#">근태 입력</a></li>
						<li><a href="#">근태 조회</a></li>
					</ul>
				</li>
				<li><a class="active" data-toggle="collapse"
					data-target="#group3" aria-expanded="false" href="#">출력물</a>
					<ul class="collapse in depth2" id="group3">
						<li><a class="active" href="Attend_Status.jsp">근태 현황</a></li>
						<li><a href="Attend_Table.jsp">근태 집계표</a></li>
						<li><a href="Vacation_Residual.jsp">휴가 잔여일수 현황</a></li>
						<li><a href="Vacation_Use_Status.jsp">휴가 사용일 현황</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</div>
	<div style="width: 1000px;" class="contents">
		<div style="outline: 1px solid; padding: 20px 20px 300px 20px ">
			<table class="table Transparency">
				<thead>
					<tr>
						<td  class="line2" colspan="2" style="text-align: center; font-size: 20pt;">
							근태현황
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="text-align: left;">
							회사명 : (주)SWIFT
						</td>
						<td style="text-align: right;">
							<input type="text" style="width: 80px">
							~
							<input type="text" style="width: 80px">
						</td>
					</tr>
				</tbody>
			</table>
			<table class="table" style="margin: auto; text-align: center;">
				<thead>
					<tr style="background-color: #eee">
						<td style="width: 100px"> 전표일자
						</td>
						<td> 부서명
						</td>
						<td> 직급
						</td>
						<td> 사원번호
						</td>
						<td> 사원명
						</td>
						<td style="width: 120px"> 근태종류
						</td>
						<td style="width: 120px"> 근태시간
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="color: blue; text-decoration:  underline;"> 
							20190226-1
						</td>
						<td>
							연구개발
						</td>
						<td>
							사원
						</td>
						<td>
							101
						</td>
						<td>
							홍길동
						</td>
						<td>
							예비군
						</td>
						<td>
							0
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>