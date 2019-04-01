<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근태등록</title>
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<script type ="text/javascript" src ="../../js/jquery.min.js"></script>
<script type ="text/javascript" src ="../../js/bootstrap.js"></script>

<!-- 날짜선택 관련 -->
<link rel="stylesheet" href="../../css/datepicker.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
	  $( "#datepicker" ).datepicker({
	        showOn: "both", 
	        buttonImage: "../../images/btn_calendar.png", 
	        buttonImageOnly: true, 
	        dateFormat: "yy/mm/dd",
	       	changeMonth: true, 
	        dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
	        dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
	        monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
	        monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
		});
	});
</script>
<style>
 table td {text-align:left;}
</style>
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
				<li><a href="../../emp/read">인사관리</a></li>
				<li><a href="#">급여관리</a></li>		
				<li class="active"><a href="../../attend/attend_DataList">근태관리</a></li>
				<li><a href="../../approval/selectDraft">결재관리</a></li>
				<li><a href="../../work/selectBusinessLog">업무관리</a></li>
				<li><a href="../../client/selectClientInfo">고객관리</a></li>
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
					aria-expanded="false" href="#">기본사항관리</a>
					<ul class="collapse in depth2" id="group1">
						<li><a href="../../attend/attend_CodeList">근태항목관리</a></li>
						<li><a class="active" href="../../attend/attend_DataList">근태관리</a></li>
					</ul>
				</li>
				<li>
					<a data-toggle="collapse" data-target="#group2"
					aria-expanded="false" href="#">출력물</a>
					<ul class="collapse depth2" id="group2">
						<li><a href="#">근태현황</a></li>
						<li><a href="#">근태집계표</a></li>
						<li><a href="#">휴가잔여일수현황</a></li>
						<li><a href="#">휴가사용일현황</a></li>
					</ul>
				</li>
			</ul>
		</nav>		
		<div class="contents">
			<h3>근태등록</h3>
			<form action="../../attend/attend_DataInsert">
				<table class="table">
					<tr>
						<th>사원번호</th>
						<td><input type="text" id="empno" class="form-control" name="empno"></td>
					</tr>
					<tr>
						<th>근태날짜</th>
						<td><input type="text" id="datepicker" class="form-control" name="attend_date" style="width:90%; display:inline-block; margin-right:5px;"></td>
					</tr>
					<tr>
						<th>근태코드</th>
						<td><input type="text" id="attend_code" class="form-control" name="attend_code" ></td>
					</tr>
					<tr>
						<th>근무시간</th>
						<td><input type="text" id="attend_time" class="form-control" name="attend_time"></td>
					</tr>
					<tr>
						<th>비고</th>
						<td><input type="text" id="attend_m_etc" class="form-control" name="attend_m_etc"></td>
					</tr>
					<tr>
						<th>출근시간</th>
						<td>
							<span>출발시간</span>
							<select id="si" class="form-control" style="width:50px; display:inline-block;">
								<option>1</option>				
							</select>	
							<span>시</span>	
							<select id="bun" class="form-control" style="width:50px; display:inline-block;">
								<c:set var="n" value="0" />
								<c:forEach begin="0" end="59">
								<option value="" >${n }</option>
								<c:set var="n" value="${n+1}" />
								</c:forEach>
							</select>
							<span>분</span>
						</td>
					</tr>
					<tr>
						<th>퇴근시간</th>
						<td><input type="text" id="attend_close" class="form-control" name="attend_close"></td>
					</tr>
				</table>
				<div class="btn_group">
					<input type="submit" class="btn btn-primary pull-right" value="확인">
				</div>
			</form>
		</div>
	</div>
</body>
</html>