<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.util.Map, java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>일별근무시간 페이지</title>
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
			<a class="navbar-brand" href="../../service/welcome/welcome.jsp"><img class="logo" src="../../images/logo.png"></a>
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
						<li><a href="../../service/mem/login.jsp">로그아웃</a></li>
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
					<a href="../../work/selectBusinessLog">업무일지조회</a>
				</li>
				<li>
					<a href="./work_monthwork.jsp">월별출퇴근기록</a>
				</li>
				<li>
					<a href="../../work/selectWorkState">출퇴근현황</a>
				</li>
				<li>
					<a class="active" href="./work_worktime.jsp">일별근무시간조회</a>
				</li>
				<li>
					<a href="../../work/selectWorkEtc">출퇴근/근태/일정 조회</a>
				</li>
			</ul>
		</nav>
		<div class="contents">
			<h2>일별 출퇴근 기록</h2>
			<form id="search_day" action="../../work/selectWorkTime">
				<div class="input-group">
					<input type="date" class="form-control" name="search_day" min="2018-01-01" >
					<span class="input-group-btn" style="width:100px;">
						<input type="submit" class="btn btn-default" value="조회" style="margin-bottom:20px;">	
					</span>
				</div>
			</form>
			<table class="table">
				<thead>
					<tr>
						<th>근무일자</th>
						<th>사원이름</th>
						<th>attend_open</th>
						<th>attend_close</th>
					</tr>
				</thead>
			    <tbody>
					<%
						List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
						if(lst != null){
							for(int i=0;i<lst.size();i++){
					%>
					<tr>
						<td><%= String.valueOf(lst.get(i).get("ATTEND_DATE")).substring(0,10) %> </td>
						<td><%= String.valueOf(lst.get(i).get("EMP_NAME")) %> </td>
						<td><%= lst.get(i).get("ATTEND_OPEN") %> </td>
						<td><%= lst.get(i).get("ATTEND_CLOSE") %> </td>
					</tr>
					<%
							}
						}
				 	%>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>