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
					<a class="active" href="#">업무일지조회</a>
				</li>
				<li>
					<a href="#">월별출퇴근기록</a>
				</li>
				<li>
					<a href="#">출퇴근현황</a>
				</li>
				<li>
					<a href="#">일별근무시간조회</a>
				</li>
				<li>
					<a href="#">출퇴근/근태/일정 조회</a>
				</li>
			</ul>
		</nav>
		<div class="contents">
			<h2>업무일지등록</h2>
			<form action="../../work/insertBusinessLog">
				<table class="table">
					<tr>
						<th>업무보고일</th>
						<td><input type="text" class="form-control" name="business_date"></td>
					</tr>
					<tr>
						<th>부서</th>
						<td><input type="text" class="form-control" name="business_dept"></td>
					</tr>
					<tr>
						<th>거래처</th>
						<td><input type="text" class="form-control" name="business_client"></td>
					</tr>
					<tr>
						<th>프로젝트</th>
						<td><input type="text" class="form-control" name="business_project"></td>
					</tr>
					<tr>
						<th>첨부파일</th>
						<td><input type="file" class="form-control" name="file" value="파일첨부"></td>
					</tr>
					<tr>
						<th>업무일지 번호</th>
						<td><input type="text" class="form-control" name="business_no"></td>
					</tr>
					<tr>
						<th>업무 내용</th>
						<td><input type="text" class="form-control" name="business_content"></td>
					</tr>
				</table>
				<div class="btn_group">
					<a class="btn btn-default pull-left" href="../../work/selectBusinessLog">목록</a>
					<input type="submit" class="btn btn-primary pull-right" value="저장">
				</div>
			</form>
		</div>
	</div>
</body>
</html>