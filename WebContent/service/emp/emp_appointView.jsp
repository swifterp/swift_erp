<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emp_mainpage</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/common.css">
<script type = "text/javascript" src ="../js/jquery.min.js"></script>
<script type = "text/javascript" src ="../js/bootstrap.js"></script>
<script type="text/javascript">
	<!--인사발령삭제-->
	function emp_appointDel(emp_number){
		location.href = "../emp/appointDelete?emp_number="+emp_number;	
	}
</script>
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
				<li>
					<a class="active" data-toggle="collapse" data-target="#group1"
					aria-expanded="false" href="#">기본사항등록</a>
					<ul class="collapse in depth2" id="group1">
						<li><a class="active" href="./read">인사카드등록</a></li>
						<li><a href="../emp/deptRead">부서등록</a></li>
					</ul>
				</li>
				<li>
					<a data-toggle="collapse" data-target="#group2"
					aria-expanded="false" href="#">조회/인쇄</a>
					<ul class="collapse depth2" id="group2">
						<li><a href="#">각종증명서인쇄</a></li>
						<li><a href="#">사원명부</a></li>
					</ul>
				</li>
			</ul>
		</nav>		
		<div class="contents">
			<h3>인사발령목록</h3>
			<form action="../emp/empSearchNumName">
				<div class="input-group">
					<input type="text" class="form-control" id="empinfo" name="empinfo" placeholder="성명 또는 부서">
					<span class="input-group-btn" style="width:100px;">
						<button type="submit" class="btn btn-default" style="margin-bottom:20px;">검색</button>
					</span>
				</div>
			</form>
			<form action="../emp/appointUpd">
			<table class="table">
				<thead>
					<tr>
						<th rowspan="2">발령일자</th>
						<th rowspan="2">사번</th>
						<th rowspan="2">성명</th>
						<th rowspan="2">입사구분</th>
						<th colspan="4">발령사항</th>
					</tr>
					<tr>
						<th>이전 직위/직급</th>
						<th>발령 직위/직급</th>
						<th>이전부서</th>
						<th>발령부서</th>
					</tr>
				</thead>
			    <tbody>
					<tr>
						<td><input type="text" value="${list.get(0).get('EMP_APPOINT_DATE')}" name="emp_appoint_date"/></td>
						<td><input type="text" value="${list.get(0).get('EMP_NUMBER')}" name="emp_number"/></td>
						<td><input type="text" value="${list.get(0).get('EMP_NAME')}" name="emp_name"/></td>
						<td><input type="text" value="${list.get(0).get('EMP_JOIN_DIVIDE')}" name="emp_join_divide"/></td>
						<td><input type="text" value="${list.get(0).get('PREV_RANK')}" name="prev_rank"/></td>
						<td><input type="text" value="${list.get(0).get('NEXT_RANK')}" name="next_rank"/></td>
						<td><input type="text" value="${list.get(0).get('PREV_DEPT')}" name="prev_dept"/></td>
						<td><input type="text" value="${list.get(0).get('NEXT_DEPT')}" name="next_dept"/></td>
					</tr>
			    </tbody>
			</table>
			<div class="btn_group">
			<a class="btn btn-default pull-left" href="../emp/appointRead">목록</a>
				<a class="btn btn-primary pull-right" onclick="javascript:emp_appointAdd()">수정완료</a>
			</div>
			</form>
		</div>
	</div>
</body>
</html>