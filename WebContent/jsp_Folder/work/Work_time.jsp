<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<style>
	table td {text-align:left;}
</style>
<script>
	function Work_Search(){
		var select = document.getElementById("Work_on_time").value;
		location.href=select;
	}
</script>
<script>
	$(function() {
		$("#datepicker").datepicker(
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
  input.img-button {
    background: url("../../images/btn_Searc.png" ) no-repeat;
    border: none;
    width: 20px;
    height: 20px;
    cursor: pointer;
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
		<!-- 네비게이션 헤더-->
		<div class="navbar-header">
			<!-- 네비게이션 오른쪽 헤더-->
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
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
				<li><a href="../pay/Allowance_Item.jsp">급여관리</a></li>		
				<li><a href="../attend/Attend_Item_Manage.jsp">근태관리</a></li>
				<li><a href="../approval/Prospect_write.jsp">결재관리</a></li>
				<li><a href="#">업무관리</a></li>
				<li><a href="../customer/Customer_List.jsp">고객관리</a></li>
			</ul>
			<!-- 드롭다운 기능 -->
			<ul class="nav navbar-nav navbar-right">
				<!-- 드롭다운 -->
				<li class="dropdown">
					<!-- 누르기전 이미지 --> <a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원관리<span class="caret"></span>
				</a> <!-- 눌렀을때 이미지 -->
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
					aria-expanded="false" href="Work_task.jsp">업무일지</a>
					<ul class="collapse depth2" id="group1">
						<li><a href="Work_taskUpdate.jsp">업무일지 작성</a></li>
						<li><a href="Work_task.jsp">업무일지 조회</a></li>
					</ul></li>
				<li><a class="active" data-toggle="collapse"
					data-target="#group2" aria-expanded="false" href="#">출/퇴근</a>
					<ul class="collapse in depth2" id="group2">
						<li><a href="Work_on_off.jsp">출/퇴근 기록부</a></li>
						<li><a href="Work_Search.jsp">출/퇴근현황 조회</a></li>
						<li><a class="active" href="#">근무시간 조회</a></li>
						<li><a href="Work_All_Search.jsp">출퇴근/근태/일정 조회</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</div>
	<div style="width: 1000px" class="contents">
		<table class="table" style=" margin: auto; text-align: left;">
			<thead>
			</thead>
			<tbody>
				<tr>
					<td style="width:90px; vertical-align: middle;">기간</td>
					<td  colspan="2">
					<input type="text" id="datepicker" class="form-control input-sm"
						style="width:170px; height: 50%; display: inline-block">
					&nbsp;&nbsp;~&nbsp;&nbsp;
					<input type="text" id="datepicker2"	class="form-control input-sm"
						style="width:170px; height: 50%; display: inline-block"></td>
					<td style="width:220px;"></td>
					<td colspan="4"></td>
				<tr>
					<td style="vertical-align: middle;">사원명</td>
					<td colspan="7">
						<input type="button" class="img-button" data-toggle="modal" data-target="#user_name">
						<input type="text" class="form-control input-sm"
							   style="width:80%; height: 50%; display: inline-block">
					</td>
				</tr>
				<tr>
					<td>부서</td>
					<td colspan="7">
						<input type="button" class="img-button" data-toggle="modal" data-target="#user_name">
						<input type="text" class="form-control input-sm"
							   style="width:80%; height: 50%; display: inline-block">
					</td>
				</tr>
				<tr>
					<td colspan="2" style="vertical-align: middle;">
						<div class="input-group" >
							<select class="custom-select" id="Work_on_time">
								<option value="Work_time(on).jsp">근무시간현황</option>
							</select>
						</div>
					</td>
					<td colspan="6" style=" vertical-align: middle;">
						<div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
						  <div class="btn-group mr-2" role="group" aria-label="First group">
						    <text type="button" class="btn btn-sm">금일</text>
						    <text type="button" class="btn btn-sm">전일</text>
						    <text type="button" class="btn btn-sm">금주(~오늘)</text>
						    <text type="button" class="btn btn-sm">전주</text>
						    <text type="button" class="btn btn-sm">금월(~오늘)</text>
						    <text type="button" class="btn btn-sm">전월</text>
						    <text type="button" class="btn btn-sm">종료일</text>
						  </div>
						   <div class="btn-group mr-2" role="group" aria-label="Second group">
						  	<text type="button" class="btn btn-sm">설정</text>
						    <text type="button" class="btn btn-sm">다시작성</text>
						  </div>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		<br> 
		<input type="submit" id="Work_Search" class="btn btn-primary pull-right"
			value="검색" onClick="Work_Search()">
	</div>
<!-- Modal 소스코드  -->	
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