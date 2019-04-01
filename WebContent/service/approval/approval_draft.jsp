<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기안서 조회 페이지</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/common.css">
<script type ="text/javascript" src ="../js/jquery.min.js"></script>
<script type ="text/javascript" src ="../js/bootstrap.js"></script>
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
				<li class="active"><a href="./selectDraft">결재관리</a></li>
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
						aria-expanded="false">설정<span class="caret"></span></a>
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
					aria-expanded="false" href="#">조회</a>
					<ul class="collapse in depth2" id="group1">
						<li><a href="./selectDraft" class="active">기안서조회</a></li>
						<li><a href="./selectCommon">공통양식조회</a></li>
						<li><a href="./selectApprovalPath">결재라인조회</a></li>
						<li><a href="./selectMyApproval">내 결재 전체 조회</a></li>
					</ul>
				</li>
			</ul>
		</nav>		
		<div class="contents">
			<h2>기안서조회</h2>		
			<form action="../approval/selectDraftDetail">
				<div class="input-group">
					<input type="text" class="form-control" name="draft_num" placeholder="기안서 번호">
					<span class="input-group-btn" style="width:100px;">	
						<input type="submit" class="btn btn-primary" style="margin-bottom:20px;" value="검색">
					</span>
				</div>
			</form> 
			<table class="table">
				<thead>
					<tr> 
						<th>No.</th>
						<th>제목</th>
						<th>기안일자</th>
						<th>기안자</th>
						<th>DRAFT_REFERENCE</th>
						<th>결재자</th>
						<th>DRAFT_STYLE</th>
						<th>구분</th>
						<th>DRAFT_CONTENT</th>
						<th>DRAFT_NAME</th>
					</tr>
				</thead>
			    <tbody>
					<%
						List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
						if(lst != null){
							for(int i=0;i<lst.size();i++){
					%>
					<tr>
						<td><%= Integer.parseInt(String.valueOf(lst.get(i).get("DRAFT_NO"))) %> </td>
						<td><%= lst.get(i).get("DRAFT_TITLE") %> </td>
						<td><%= String.valueOf(lst.get(i).get("DRAFT_DATE")).substring(0,10) %> </td>
						<td><%= lst.get(i).get("DRAFT_WRITER") %> </td>
						<td><%= lst.get(i).get("DRAFT_REFERENCE") %> </td>
						<td><%= lst.get(i).get("DRAFT_OWNER") %> </td>
						<td><%= lst.get(i).get("DRAFT_STYLE") %> </td>
						<td><%= lst.get(i).get("DRAFT_DIVISION") %> </td>
						<td><%= lst.get(i).get("DRAFT_CONTENT") %> </td>
						<td><%= lst.get(i).get("DRAFT_NAME") %> </td>
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