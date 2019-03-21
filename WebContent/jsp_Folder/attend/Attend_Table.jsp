<%@page import="resources.mapper.selectListMapper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type = "text/javascript" src ="../../js/jquery.min.js"></script>
<script type = "text/javascript" src ="../../js/jquery-3.3.1.js"></script>
<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#datepicker").datepicker(
			{
				showOn : "both",
				buttonImage: "../../images/btn_calendar.png", 
				buttonImageOnly : true,
				dateFormat : "yy/mm/dd",
				changeMonth : true,
				dayNames : [ '월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일' ],
				dayNamesMin : [ '월', '화', '수', '목', '금', '토', '일' ],
				monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7', '8',	'9', '10', '11', '12' ],
				monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월' ]
			});
	});
</script>
<script>
	$(function() {
		$("#datepicker2").datepicker(
			{
				showOn : "both",
				buttonImage: "../../images/btn_calendar.png", 
				buttonImageOnly : true,
				dateFormat : "yy/mm/dd",
				changeMonth : true,
				dayNames : [ '월요일', '화요일', '수요일', '목요일', '금요일', '토요일',
						'일요일' ],
				dayNamesMin : [ '월', '화', '수', '목', '금', '토', '일' ],
				monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7', '8',
						'9', '10', '11', '12' ],
				monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
						'8월', '9월', '10월', '11월', '12월' ]
			});
	});
</script>
<script>
	$(function() {
		$("#datepicker3").datepicker(
			{
				showOn : "both",
				buttonImage: "../../images/btn_calendar.png", 
				buttonImageOnly : true,
				dateFormat : "yy/mm/dd",
				changeMonth : true,
				dayNames : [ '월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일' ],
				dayNamesMin : [ '월', '화', '수', '목', '금', '토', '일' ],
				monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7', '8',	'9', '10', '11', '12' ],
				monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월' ]
			});
	});
</script>
<script>
	$(function() {
		$("#datepicker4").datepicker(
			{
				showOn : "both",
				buttonImage: "../../images/btn_calendar.png", 
				buttonImageOnly : true,
				dateFormat : "yy/mm/dd",
				changeMonth : true,
				dayNames : [ '월요일', '화요일', '수요일', '목요일', '금요일', '토요일',
						'일요일' ],
				dayNamesMin : [ '월', '화', '수', '목', '금', '토', '일' ],
				monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7', '8',
						'9', '10', '11', '12' ],
				monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
						'8월', '9월', '10월', '11월', '12월' ]
			});
	});
</script>
<script>
jQuery(function($){
	$('#modal-user_name').footable({
		"useParentWidth": true,
		"columns": $.get('columns.json'),
		"rows": $.get('rows.json')
	});
});
</script>
<script>
jQuery(function($){
	$('#modal-dept_name').footable({
		"useParentWidth": true,
		"columns": $.get('columns.json'),
		"rows": $.get('rows.json')
	});
});
</script>
<style>
input {
    vertical-align: middle;
  }
  input.img-button_print {
    background: url("../../images/btn_print.png") no-repeat;
    border: none;
    width: 20px;
    height: 20px;
    cursor: pointer;
    }
  input.img-button_Searc {
    background: url("../../images/btn_Searc.png") no-repeat;
    border: none;
    width: 20px;
    height: 20px;
    cursor: pointer;
   }
</style>
<title>SWIFT ERP</title>
</head>
<body>
	<!-- 네비게이션 -->
	<nav class="navbar navbar-default" style="z-index: 1">
		<!-- 네비게이션 헤더 -->
		<div class="navbar-header">
			<!-- 네비게이션 오른쪽 헤더 -->
			<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			aria-expanded="false">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
			</button>
			<!-- 네비게이션 왼쪽 헤더(로고) -->
			<a class="navbar-brand" href="../welcome/welcome.jsp">
			<img class="logo" src="../../images/logo.png"></a>
		</div>
		
		<!-- 네비게이션 본메뉴 -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<!-- 네비게이션 본메뉴 엘리먼트 -->
			<ul class="nav navbar-nav">
				<li><a href="../emp/Emp_memList.jsp">인사관리</a></li>
				<li><a href="../Pay/Pay.jsp">급여관리</a></li>		
				<li><a href="#">근태관리</a></li>
				<li><a href="../approval/Approval.jsp">결재관리</a></li>
				<li><a href="../work/Work_taskUpdate.jsp">업무관리</a></li>
				<li><a href="../customer/Customer_List.jsp">고객관리</a></li>
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
				<li><a data-toggle="collapse" data-target="#group1"
					aria-expanded="false" href="Attend_Item_Manage.jsp">기본 항목 관리</a>
					<ul class="collapse depth2" id="group1">
						<li><a href="#">근태 항목 관리</a></li>
						<li><a href="#">휴가 항목 관리</a></li>
					</ul>
				</li>
				<li><a data-toggle="collapse"
					data-target="#group2" aria-expanded="false" href="Attend_Input.jsp">근태 관리</a>
					<ul class="collapse depth2" id="group2">
						<li><a href="#">근태 입력</a></li>
						<li><a href="#">근태 조회</a></li>
					</ul>
				</li>
				<li><a class="active" data-toggle="collapse"
					data-target="#group3" aria-expanded="false" href="#">출력물</a>
					<ul class="collapse in depth2" id="group3">
						<li><a href="Attend_Status.jsp">근태 현황</a></li>
						<li><a class="active" href="#">근태 집계표</a></li>
						<li><a href="Vacation_Residual.jsp">휴가 잔여일수 현황</a></li>
						<li><a href="Vacation_Use_Status.jsp">휴가 사용일 현황</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</div>
<div style="width: 65%;"  class="contents">
		<table class="table" style=" text-align: left;">
			<thead>
			</thead>
			<tbody>
				<tr>
					<td style="width:150px;">
						기준일자
					</td>
					<td style="text-align: left;" colspan="2">
						<input type="text" id="datepicker" class="form-control input-sm"
						style="width: 200px; height: 50%; display: inline-block">
						&nbsp; ~ &nbsp;
						<input type="text" id="datepicker2" class="form-control input-sm"
						style="width: 200px; height: 50%; display: inline-block">
					</td>
				</tr>
				<tr>
					<td style="width:150px;">
						근태일자
					</td>
					<td style="text-align: left;" colspan="2">
						<input type="text" id="datepicker3" class="form-control input-sm"
						style="width: 200px; height: 50%; display: inline-block">
						&nbsp; ~ &nbsp;
						<input type="text" id="datepicker4" class="form-control input-sm"
						style="width: 200px; height: 50%; display: inline-block">
					</td>
				</tr>
				<tr>
					<td>검색조건1</td>
						<td style="width: 100px">
							<div class="input-group" style="width: 100px">
								<select class="custom-select" id=".">
									<option id="not_used" value="#">사용안함</option>
									<option id="user" value="#">사원</option>
									<option id="dept" value="#">부서명</option>
								</select>
							</div>
						</td>
					<td>
						<input type="text" class="form-control input-sm"
							   style="width:150px; height: 50%; display: inline-block">
						<input type="button" class="img-button_Searc" data-toggle="modal" data-target="#vacation">
						<input type="text" class="form-control input-sm"
							   style="width:150px; height: 50%; display: inline-block">
					</td>
				</tr>
				<tr>
					<td>검색조건2</td>
					<td>
						<div class="input-group" style="width: 100px">
							<select class="custom-select" id=".">
								<option id="not_used" value="#">사용안함</option>
								<option id="user" value="#">사원</option>
								<option id="dept" value="#">부서명</option>
							</select>
						</div>
					</td>
					<td>
						<input type="text" class="form-control input-sm"
							   style="width:150px; height: 50%; display: inline-block">
						<input type="button" class="img-button_Searc" data-toggle="modal" data-target="#vacation">
						<input type="text" class="form-control input-sm"
							   style="width:150px; height: 50%; display: inline-block">
					</td>
				</tr>
				<tr>
					<td>검색조건3</td>
						<td>
							<div class="input-group" style="width: 100px">
								<select class="custom-select" id=".">
									<option id="not_used" value="#">사용안함</option>
									<option id="user" value="#">사원</option>
									<option id="dept" value="#">부서명</option>
								</select>
							</div>
						</td>
					<td>
						<input type="text" class="form-control input-sm"
							   style="width:150px; height: 50%; display: inline-block">
						<input type="button" class="img-button_Searc" data-toggle="modal" data-target="#vacation">
						<input type="text" class="form-control input-sm"
							   style="width:150px; height: 50%; display: inline-block">
					</td>
				</tr>
				<tr>
					<td style="width: 155px" colspan="3">
						<input type="submit" class="btn btn-primary pull-right" value="조회">
					</td>
				</tr>
			</tbody>
		</table>
	<hr style="border:solid 1px black;">
		<span style="float:right">
			<input style="text-align: right;" type="button" class="img-button_print" data-toggle="modal" data-target="#copy">
		</span>
		<table class="table">
			<thead>
				<tr>
					<td colspan="2" style="text-align: center; font-size: 24pt;">
						근태현황
					</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td style="text-align: left;">
						회사명 : (주)SWIFT
					</td>
					<td style="text-align: right;">
						<input type="text" style="width: 80px">
						~
						<input type="text" style="width: 80px">
					</td>
				</tr>
			</tbody>
		</table>
		<table class="table" style="margin: auto; text-align: center;">
			<thead>
				<tr>
					<td> 사원
					</td>
					<td> 근태수
					</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>
					</td>
					<td>
					</td>
				</tr>
			</tbody>
		</table>
		<br> 
		<input type="submit" id="Work_Search" class="btn btn-primary pull-right"
			value="검색">
	</div>
<!-- modal 소스코드 -->
	<div class="modal fade" id="user_name" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-body">
					<table id="modal-user_name" class="table table-striped" data-paging="true" data-filtering="true" data-sorting="true">
						<thead class="thead-dark">
							<tr>
								<th scope="col">소속부서</th>
								<th scope="col">성명</th>
								<th scope="col">ID</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>&nbsp</td>
								<td>&nbsp</td>
								<td>&nbsp</td>
							</tr>
							<tr>
								<td>&nbsp</td>
								<td>&nbsp</td>
								<td>&nbsp</td>
							</tr>
							<tr>
								<td>&nbsp</td>
								<td>&nbsp</td>
								<td>&nbsp</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="dept_name" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-body">
					<table id="modal-dept_name" class="table table-striped" data-paging="true" data-filtering="true" data-sorting="true">
						<thead class="thead-dark">
							<tr>
								<td scope="col">부서코드</td>
								<td scope="col">부서 명</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>&nbsp</td>
								<td>&nbsp</td>
							</tr>
							<tr>
								<td>&nbsp</td>
								<td>&nbsp</td>
							</tr>
							<tr>
								<td>&nbsp</td>
								<td>&nbsp</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>