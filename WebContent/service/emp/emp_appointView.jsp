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
<!-- 날짜선택 관련 -->
<link rel="stylesheet" href="../css/datepicker.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
	  $( "#datepicker" ).datepicker({
	        showOn: "both", 
	        buttonImage: "../images/btn_calendar.png", 
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
<!-- 팝업창 -->
<script>
$(document).ready(function() {
    $('#pop_emp').on("click", function() {	
    	var url="../emp/pop_empRead";
    	var windowW = 300;  // 창의 가로 길이
        var windowH = 300;  // 창의 세로 길이
        var left = Math.ceil((window.screen.width - windowW)/2);
        var top = Math.ceil((window.screen.height - windowH)/2);
  window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
    });
});
$(document).ready(function() {
    $('#pop_rank').on("click", function() {	
    	var url="./pop_rankRead";
    	var windowW = 300;  // 창의 가로 길이
        var windowH = 300;  // 창의 세로 길이
        var left = Math.ceil((window.screen.width - windowW)/2);
        var top = Math.ceil((window.screen.height - windowH)/2);
  window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
    });
});
$(document).ready(function() {
    $('#pop_dept').on("click", function() {	
    	var url="./pop_deptRead";
    	var windowW = 300;  // 창의 가로 길이
        var windowH = 300;  // 창의 세로 길이
        var left = Math.ceil((window.screen.width - windowW)/2);
        var top = Math.ceil((window.screen.height - windowH)/2);
  window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
    });
});
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
						<li><a href="./deptRead">부서등록</a></li>
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
			<h3>인사발령 조회/수정</h3>
			<form action="./appointUpd">
			<table class="table">
				<colgroup>
					<col width="15%">
					<col width="15%">
					<col width="10%">
					<col width="15%">
					<col width="15%">
					<col width="15%">
					<col width="15%">
				</colgroup>
				<thead>
					<tr>
						<th rowspan="2">발령일자</th>
						<th rowspan="2">사번</th>
						<th rowspan="2">성명</th>
						<th colspan="4">발령사항</th>
					</tr>
					<tr>
						<th>이전 직위/직급</th>
						<th>발령 직위/직급</th>
						<th>이전부서</th>
						<th>발령부서</th>
					</tr>
				</thead>
			    <tbody>
					<tr>
						<td><input type="text" class="form-control" value="${list.get(0).get('EMP_APPOINT_DATE')}"  name="emp_appoint_date" id="datepicker" style="width:80%; display:inline-block; margin-right:5px;"/></td>
						<td class="input-group"  id="pop_emp">
							<input type="hidden" name="emp_appoint_no" value="${list.get(0).get('EMP_APPOINT_NO')}" />
							<input type="hidden" id="p_emp_no" name="empno" value="${list.get(0).get('EMPNO')}" />
							<input type="text" id="p_emp_number" class="form-control" value="${list.get(0).get('EMP_NUMBER')}" readonly />
							<span name="emp_number" class="input-group-btn">
								<button type="button" class="btn btn-default">조회</button> 
							</span>
						</td>
						<td><input type="text" class="form-control" value="${list.get(0).get('EMP_NAME')}" id="p_emp_name" readonly /></td>
						<td><input type="text" class="form-control" value="${list.get(0).get('PREV_RANK')}" name="prev_rank" id="p_emp_rank_name"/></td>
						<td id="pop_rank">
							<input type="hidden" id="p_rank_no" name="next_rank_no"/>
							<input type="text" id="p_rank_name" class="form-control" value="${list.get(0).get('NEXT_RANK')}" name="next_rank" readonly />
						</td>
						<td><input type="text" class="form-control" value="${list.get(0).get('PREV_DEPT')}" name="prev_dept" id="p_emp_dept_name"/></td>
						<td id="pop_dept">
							<input type="hidden" id="p_dept_no" name="next_dept_no" />
							<input type="text" id="p_dept_name" class="form-control" value="${list.get(0).get('NEXT_DEPT')}" name="next_dept" readonly /></td>
					</tr>
			    </tbody>
			</table>
			<div class="btn_group">
			<a class="btn btn-default pull-left" href="../emp/appointRead">목록</a>
				<button type="submit" class="btn btn-primary pull-right">수정완료</button>
			</div>
			</form>
		</div>
	</div>
</body>
</html>