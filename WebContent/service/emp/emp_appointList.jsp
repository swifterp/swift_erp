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
	<!--인사발령등록 페이지로 이동-->
	function goAppointAdd(){
		location.href = "../service/emp/emp_appointAdd.jsp";	
	}
	<!--인사발령상세보기-->
	function appointView(emp_appoint_no){
		location.href = "../emp/appointView?emp_appoint_no="+emp_appoint_no;
	}
	<!--인사발령삭제-->
	function appointDel(emp_appoint_no){
		location.href = "../emp/appointDel?emp_appoint_no="+emp_appoint_no;	
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
				<li class="active"><a href="./read">인사관리</a></li>
				<li><a href="#">급여관리</a></li>		
				<li><a href="#">근태관리</a></li>
				<li><a href="#">결재관리</a></li>
				<li><a href="#">업무관리</a></li>
				<li><a href="#">고객관리</a></li>
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
						<li><a href="./read">인사카드등록</a></li>
						<li><a class="active" href="./appointRead">인사발령등록</a></li>
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
			<table class="table">
				<thead>
					<tr>
						<th>발령일자</th>
						<th>사번</th>
						<th>성명</th>
						<th>발령직급</th>
						<th>발령부서</th>
						<th>수정</th>
						<th>삭제</th>
					</tr>
				</thead>
			    <tbody>
					<%
						List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
						if(lst != null){
							for(int i=0;i<lst.size();i++){
					%>
					<tr>
						<td><%= String.valueOf(lst.get(i).get("EMP_APPOINT_DATE")) %></td>
						<td><%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %></td>
						<td><%= lst.get(i).get("EMP_NAME") %></td>
						<td><%= lst.get(i).get("NEXT_RANK") %></td>
						<td><%= lst.get(i).get("NEXT_DEPT") %></td>
						<td><button class="btn btn-default" onclick="javascript:appointView(<%= String.valueOf(lst.get(i).get("EMP_APPOINT_NO")) %>)">수정</button></td>
						<td><a class="btn btn-default" onclick="javascript:appointDel(<%= String.valueOf(lst.get(i).get("EMP_APPOINT_NO")) %>)">삭제</a></td>
					</tr>
					<%
							}
						}
				 	%>
			    </tbody>
			</table>
			<div class="btn_group">
				<a class="btn btn-primary pull-right" onclick="javascript:goAppointAdd()">등록</a>
			</div>
		</div>
	</div>
</body>
</html>