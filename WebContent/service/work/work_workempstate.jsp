<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원별 출퇴근현황</title>
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
				<li><a href="../emp/read">인사관리</a></li>
				<li><a href="#">급여관리</a></li>		
				<li><a href="../attend/attend_DataList">근태관리</a></li>
				<li><a href="../approval/selectDraft">결재관리</a></li>
				<li class="active"><a href="../work/selectBusinessLog">업무관리</a></li>
				<li><a href="../client/selectClientInfo">고객관리</a></li>
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
					<a href="../work/selectBusinessLog">업무일지조회</a>
				</li>
				<li>
					<a href="../service/work/work_monthwork.jsp">월별출퇴근기록</a>
				</li>
				<li>
					<a class="active" href="../work/selectWorkState">출퇴근현황</a>
				</li>
				<li>
					<a href="../service/work/work_worktime.jsp">일별근무시간조회</a>
				</li>
				<li>
					<a href="../work/selectWorkEtc">출퇴근/근태/일정 조회</a>
				</li>
			</ul>
		</nav>
		<div class="contents">
			<h2>사원별 출퇴근현황조회</h2>
			<table class="table">
				<thead>
					<tr>
						<th>ATTEND_DATE</th>
						<th>사원번호</th>
						<th>사원이름</th>
						<th>ATTEND_TIME</th>
						<th>ATTEND_OPEN</th>
						<th>ATTEND_CLOSE</th>
						
					</tr>
				</thead>
			    <tbody>
					<%
						List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
						if(lst != null){
							for(int i=0;i<lst.size();i++){
					%>
					<tr>
						<td><%= String.valueOf(lst.get(i).get("ATTEND_DATE")) %> </td>
						<td><%= String.valueOf(lst.get(i).get("EMPNO")) %> </td>
						<td><%= lst.get(i).get("EMP_NAME") %> </td>
						<td><%= String.valueOf(lst.get(i).get("ATTEND_TIME")) %> </td>
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