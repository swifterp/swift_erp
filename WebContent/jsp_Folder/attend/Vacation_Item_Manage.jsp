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
<script type = "text/javascript" src ="../../js/jquery-3.3.1.js"></script>
<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<style type="text/css"> /* 테이블 선에 색상주기  */
  .line{border-bottom: 1px solid #AAA;}
</style>

<script>
	$(function() {
		$("#datepicker").datepicker({
			showOn:"both",
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
<script>
	$(function() {
		$("#datepicker2").datepicker({
			showOn:"both",
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
<script>
	$(function() {
		$("#datepicker3").datepicker({
			showOn:"both",
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
<script>
	$(function() {
		$("#datepicker4").datepicker({
			showOn:"both",
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
button {
	vertical-align: middle;
}
	button.img-button_Searc {
	background: url("../../images/btn_Searc.png" ) no-repeat;
    border: none;
    width: 20px;
    height: 20px;
    cursor: pointer;
    }
</style>

<style>/* modal 중앙에 띄우기  */
  .modal {
          text-align: center;
        }
        @media screen and (min-width: 768px) {
          .modal:before {
            display: inline-block;
            vertical-align: middle;
            content: " ";
            height: 100%;
          }
        }
        .modal-dialog {
          display: inline-block;
          text-align: left;
          vertical-align: middle;
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
				<li><a class="active" data-toggle="collapse" data-target="#group1"
					aria-expanded="false" href="#">기본 항목 관리</a>
					<ul class="collapse in depth2" id="group1">
						<li><a href="Attend_Item_Manage.jsp">근태 항목 관리</a></li>
						<li><a class="active" href="#">휴가 항목 관리</a></li>
					</ul>
				</li>
				<li><a data-toggle="collapse"
					data-target="#group2" aria-expanded="false" href="Attend_Input.jsp">근태 관리</a>
					<ul class="collapse depth2" id="group2">
						<li><a href="#">근태 입력</a></li>
						<li><a href="#">근태 조회</a></li>
					</ul>
				</li>
				<li><a data-toggle="collapse"
					data-target="#group3" aria-expanded="false" href="Attend_Status.jsp">출력물</a>
					<ul class="collapse depth2" id="group3">
						<li><a href="#">근태 현황</a></li>
						<li><a href="#">근태 집계표</a></li>
						<li><a href="#">휴가 잔여일수 현황</a></li>
						<li><a href="#">휴가 사용일 현황</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</div>
	<div style="width: 65%;"  class="contents">
		<table class="table" style=" text-align: left;  background-color: #e0e0e0">
			<thead>
			</thead>
			<tbody>
				<tr>
					<td class="line" style="width:150px; text-align: left;">
						기준일자
					</td>
					<td class="line" style="text-align: left;">
						<input type="text" id="datepicker" class="form-control input-sm"
						style="width: 200px; height: 50%; display: inline-block">
						&nbsp;~&nbsp;
						<input type="text" id="datepicker2" class="form-control input-sm"
						style="width: 200px; height: 50%; display: inline-block">
					</td>
				</tr>
				<tr>
					<td class="line" style="text-align: left;">휴가코드</td>
					<td class="line" style="text-align: left;">
							<input type="text" class="form-control input-sm"
								   style="width:85%; height: 50%; display: inline-block">
					</td>
				</tr>
				<tr>
					<td class="line" style="text-align: left;">휴가명</td>
					<td class="line" style="text-align: left;">
							<input type="text" class="form-control input-sm"
								   style="width:85%; height: 50%; display: inline-block">
					</td>
				</tr>
				<tr>
					<td class="line" style="text-align: left;">
						사용구분
					</td>
					<td class="line"  style="text-align: left;">
						<div class="radio">
							<label> <input type="radio" name="optionsRadios"
								id="optionsRadios1" value="option1" checked>
								전체
							</label>
							&nbsp;&nbsp;
							<label> <input type="radio" name="optionsRadios"
								id="optionsRadios2" value="option2" checked>
								사용
							</label>
							&nbsp;&nbsp;
							<label> <input type="radio" name="optionsRadios"
								id="optionsRadios3" value="option3" checked>
								사용안함
							</label>
						</div>
					</td>
				</tr>
				<tr>
					<td class="line"  style="text-align: left;">
						적요
					</td>
					<td class="line"  style="text-align: left;">
						<input type="text" class="form-control input-sm"
							   style="width:85%; height: 50%; display: inline-block">
					</td>
				</tr>
				<tr>
					<td colspan="2" class="line" style="text-align: right;">
						<input type="submit" class="btn btn-primary" value="조회">
					</td>
				</tr>
			</tbody>
		</table>
		<hr style="border:solid 1px #888;"> <!-- 중간 가로선  -->
		<table class="table" style=" text-align:center;">
			<thead >
				<tr	style="background-color: #eee">
					<td style="width: 50px;" >
						<div class="custom-control custom-checkbox">
							<input type="checkbox" id="jb-checkbox"
								class="custom-control-input">
						</div>
					</td>
					<td style="width: 150px"> 휴가코드
					</td>
					<td style="width: 150px"> 휴가명
					</td>
					<td style="width: 200px"> 사용기간
					</td>
					<td style="width: 150px"> 사용
					</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
			</tbody>
		</table>
		<button type="button" class="btn btn-primary pull-left" id="Delete">선택삭제</button>
		<button type="button" class="btn btn-primary pull-right" data-toggle="modal" data-target="#New_Update">신규등록</button>
	</div>
	<div class="modal fade" id="New_Update" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-body">
					<table id="modal-New_Update" class="table table-striped" data-paging="true" data-filtering="true" data-sorting="true">
						<tbody style=" text-align: left; ">
							<tr>
								<td style="width: 270px;vertical-align: middle;" >휴가코드</td>
								<td><input type="text" class="form-control input-sm" style="width: 99%"></td>
							</tr>
							<tr>
								<td style="vertical-align: middle;">휴가명칭</td>
								<td><input type="text" class="form-control input-sm" style="width: 99%"></td>
							</tr>
							<tr>
								<td style="vertical-align: middle;">기간</td>
								<td>
									<input type="text" id="datepicker3" class="form-control input-sm"
									style="width: 200px; height: 50%; display: inline-block">
									&nbsp;&nbsp;~&nbsp;&nbsp;
									<input type="text" id="datepicker4" class="form-control input-sm"
									style="width: 200px; height: 50%; display: inline-block">
								</td>
							</tr>
							<tr>
								<td style="vertical-align: middle;">적요</td>
								<td><input type="text" class="form-control input-sm" style="width: 99%; "></td>
							</tr>
							<tr>
								<td colspan="2">
								<button type="button" class="btn btn-primary pull-right" id="Update">등록</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>