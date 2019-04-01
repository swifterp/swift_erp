<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<li><a href="../attend/attend_DataList">근태관리</a></li>
				<li><a href="../approval/selectDraft">결재관리</a></li>
				<li><a href="../work/selectBusinessLog">업무관리</a></li>
				<li class="active"><a href="../client/selectClientInfo">고객관리</a></li>
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
					<a class="active" href="./selectClientInfo">거래처정보관리</a>
				</li>
				<li>
					<a href="./selectNameCardInfo">명함관리</a>
				</li>
			</ul>
		</nav>
		<div class="contents">
			<h2>거래처정보수정</h2>
			<form action="../client/updateClientInfo">
				<table class="table">
					<tr>
						<th>업체명</th>
						<td><input type="text" class="form-control" name="CLIENT_NAME" class="form-control" value="${map.get("CLIENT_NAME")}"></td>
					</tr>
					<tr>
						<th>업체구분</th>
						<td><input type="text" class="form-control" name="CLIENT_DIVISION" value="${map.get("CLIENT_DIVISION")}"></td>
					</tr>
					<tr>
						<th>전화</th>
						<td><input type="text" class="form-control" name="CLIENT_TEL" value="${map.get("CLIENT_TEL")}"></td>
					</tr>
					<tr>
						<th>모바일</th>
						<td><input type="text" class="form-control" name="CLIENT_PHONE" value="${map.get("CLIENT_PHONE")}"></td>
					</tr>
					<tr>
						<th>팩스</th>
						<td><input type="text" class="form-control" name="CLIENT_FAX" value="${map.get("CLIENT_FAX")}"></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input type="text" class="form-control" name="CLIENT_EMAIL" value="${map.get("CLIENT_EMAIL")}"></td>
					</tr>
					<tr>
						<th>홈페이지</th>
						<td><input type="text" class="form-control" name="CLIENT_HOMEPAGE" value="${map.get("CLIENT_HOMEPAGE")}"></td>
					</tr>
					<tr>
						<th>기타</th>
						<td><input type="text" class="form-control" name="CLIENT_ETC" value="${map.get("CLIENT_ETC")}"></td>
					</tr>
					<tr>
						<th>주소</th>
						<td><input type="text" class="form-control" name="CLIENT_ADDRESS" value="${map.get("CLIENT_ADDRESS")}"></td>
					</tr>
					<tr>
						<th>적요</th>
						<td><input type="text" class="form-control" name="CLIENT_CONTENT" value="${map.get("CLIENT_CONTENT")}"></td>
					</tr>
				</table>
				<div class="btn_group">
					<input type="hidden" name="CLIENT_CODE" value="${map.get("CLIENT_CODE")}">
					<a href="./selectClientInfo" class="btn btn-default pull-left">목록</a>
					<input type="submit" class="btn btn-primary pull-right" value="수정 ">
				</div>
			</form>
		</div>
	</div>
</body>
</html>