<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
				<li><a href="#">근태관리</a></li>
				<li><a href="#">결재관리</a></li>
				<li><a href="#">업무관리</a></li>
				<li class="active"><a href="#">고객관리</a></li>
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
					<a href="./selectClientInfo">거래처정보관리</a>
				</li>
				<li>
					<a class="active" href="./selectNameCardInfo">명함관리</a>
				</li>
			</ul>
		</nav>
		<div class="contents">
				<% Map<String, String> map = (Map<String,String>)request.getAttribute("map");
				%>
				<h2>명함수정</h2>
				<form  action="../client/updateNameCardInfo">
				<table class="table">
					<tr>
						<th>이름</th>
						<td><input type="text" class="form-control" name="NAMECARD_NAME" value="${map.get("NAMECARD_NAME")}"></td>
					</tr>
					<tr>
						<th>부서</th>
						<td><input type="text" class="form-control" name="NAMECARD_DIVISION" value="${map.get("NAMECARD_DIVISION")}"></td>
					</tr>
					<tr>
						<th>직급</th>
						<td><input type="text" class="form-control" name="NAMECARD_POSITION" value="${map.get("NAMECARD_POSITION")}"></td>
					</tr>
					<tr>
						<th>생년월일</th>
						<td><input type="text" class="form-control" name="NAMECARD_BIRTH" value=<%= String.valueOf(map.get("NAMECARD_BIRTH")).substring(0,10) %>></td>
						
					</tr>
					<tr>
						<th>전화</th>
						<td><input type="text" class="form-control" name="NAMECARD_TEL" value="${map.get("NAMECARD_TEL")}"></td>
					</tr>
					<tr>
						<th>모바일</th>
						<td><input type="text" class="form-control" name="NAMECARD_PHONE" value="${map.get("NAMECARD_PHONE")}"></td>			
					</tr>
					<tr>
						<th>FAX</th>
						<td><input type="text" class="form-control" name="NAMECARD_FAX" value="${map.get("NAMECARD_FAX")}"></td>		
					</tr>
					<tr>
						<th>EMAIL</th>
						<td><input type="text" class="form-control" name="NAMECARD_EMAIL" value="${map.get("NAMECARD_EMAIL")}"></td>
					</tr>
					<tr>
						<th>홈페이지</th>
						<td><input type="text" class="form-control" name="NAMECARD_HOMEPAGE" value="${map.get("NAMECARD_HOMEPAGE")}"></td>		
					</tr>
					<tr>
						<th>잠재거래처</th>
						<td><input type="text" class="form-control" name="NAMECARD_CLIENT" value="${map.get("NAMECARD_CLIENT")}"></td>			
					</tr>
					<tr>
						<th>명함그룹코드</th>
						<td><input type="text" class="form-control" name="NAMECARD_GROUP_CODE" value="${map.get("NAMECARD_GROUP_CODE")}"></td>
					</tr>
					<tr>
						<th>명함그룹이름</th>
						<td><input type="text" class="form-control" name="NAMECARD_GROUP_NAME" value="${map.get("NAMECARD_GROUP_NAME")}"></td>			
					</tr>
					<tr>
						<th>주소</th>
						<td><input type="text" class="form-control" name="NAMECARD_ADDRESS" value="${map.get("NAMECARD_ADDRESS")}"></td>	
					</tr>
					<tr>
						<th>적요</th>
						<td><input type="text" class="form-control" name="NAMECARD_CONTENT" value="${map.get("NAMECARD_CONTENT")}"></td>
					</tr>
			</table>
			<div class="btn_group">
				<input type="hidden" name="NAMECARD_CODE" value="${map.get("NAMECARD_CODE")}" >
				<a class="btn btn-default pull-left" href="./selectNameCardInfo">목록</a>
				<input type="submit" class="btn btn-primary pull-right" value="수정 ">
			</div>
			</form>
		</div>
	</div>
</body>
</html>