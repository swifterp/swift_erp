<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
			<a class="navbar-brand" href="../welcome/welcome.jsp"><img class="logo" src="../../images/logo.png"></a>
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
					<a class="active" href="../../client/selectClientInfo">거래처정보관리</a>
				</li>
				<li>
					<a href="../../client/selectNameCardInfo">명함관리</a>
				</li>
			</ul>
		</nav>
		<div class="contents">
			<h2>거래처정보등록</h2>
			<form action="../../client/insertClientInfo">
				<table class="table">
					<tr>
						<th>업체구분</th>
						<td><input type="text" name="CLIENT_DIVISION" class="form-control"></td>
					</tr>
				    <tr>
						<th>잠재거래처명</th>
						<td><input type="text" name="CLIENT_NAME" class="form-control"></td>
					</tr>
					<tr>
						<th>전화</th>
						<td><input type="text" name="CLIENT_TEL" class="form-control"> </td>
					</tr>
					<tr>
						<th>모바일</th>
						<td><input type="text" name="CLIENT_PHONE" class="form-control"> </td>
					</tr>
					<tr>
						<th>팩스</th>
						<td><input type="text" name="CLIENT_FAX" class="form-control"> </td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input type="text" name="CLIENT_EMAIL" class="form-control"></td>
					</tr>
					<tr>
						<th>홈페이지</th>
						<td><input type="text" name="CLIENT_HOMEPAGE" class="form-control"></td>
					</tr>
					<tr>
						<th>기타</th>
						<td><input type="text" name="CLIENT_ETC" class="form-control"></td>
					</tr>
					<tr>
						<th>주소</th>
						<td><input type="text" name="CLIENT_ADDRESS" class="form-control"></td>
					</tr>
					<tr>
						<th>적요</th>
						<td><input type="text" name="CLIENT_CONTENT" class="form-control"></td>
					</tr>
				</table>
				<div class="btn_group">
					<a href="../../client/selectClientInfo" class="btn btn-default pull-left">목록</a>
					<input type="submit" class="btn btn-primary pull-right" value="저장">
				</div>
			</form> 
		</div>
	</div>
</body>
</html>