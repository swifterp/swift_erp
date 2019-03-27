<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/common.css">
<script type = "text/javascript" src ="../js/jquery.min.js"></script>
<script type = "text/javascript" src ="../js/bootstrap.js"></script>
<script>
	<!--부서수정-->
	function deptView(deptno){
		location.href = "../emp/deptView?deptno="+deptno;	
	}
	<!--부서삭제-->
	function deptDel(deptno){
		location.href = "../emp/deptDel?deptno="+deptno;	
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
				<li class="active"><a href="../emp/read">인사관리</a></li>
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
						aria-expanded="false">설정<span class="caret"></span></a>
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
						<li><a href="./appointRead">인사발령등록</a></li>
						<li><a class="active"  href="./deptRead">부서등록</a></li>
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
			<h3>부서목록</h3>
			<form action="../emp/deptDel">
				<table class="table">
					<thead>
						<tr>
							<th>부서코드</th>
							<th>부서명</th>
							<th>수정</th>
							<th>삭제</th>
						</tr>
					</thead>
					<%
						List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
						if(lst != null){
							for(int i=0;i<lst.size();i++){
					%>
					<tbody>
						<tr>
							<td><%= String.valueOf(lst.get(i).get("DEPTNO")) %></td>
							<td><%= lst.get(i).get("DNAME") %></td>
							<td><a class="btn btn-default" onclick="javascript:deptView(<%= String.valueOf(lst.get(i).get("DEPTNO")) %>)">수정</a></td>
							<td><a class="btn btn-default" onclick="javascript:deptDel(<%= String.valueOf(lst.get(i).get("DEPTNO")) %>)">삭제</a></td>
						</tr>
					</tbody>
					<%
							}
						} 
					%>
				</table>
				<div class="btn_group">
					<a class="btn btn-primary pull-right" href="../service/emp/emp_deptAdd.jsp">등록</a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>