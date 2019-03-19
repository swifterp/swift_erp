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
<script>
jQuery(function($){
	$('#modal-project').footable({
		"useParentWidth": true,
		"columns": $.get('columns.json'),
		"rows": $.get('rows.json')
	});
});
</script>
<script>
jQuery(function($){
	$('#modal-Working_attitude').footable({
		"useParentWidth": true,
		"columns": $.get('columns.json'),
		"rows": $.get('rows.json')
	});
});
</script>
<script>
jQuery(function($){
	$('#modal-vacation').footable({
		"useParentWidth": true,
		"columns": $.get('columns.json'),
		"rows": $.get('rows.json')
	});
});
</script>
<script>
jQuery(function($){
	$('#modal-Working_group').footable({
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
				<li><a href="../Pay/Pay.jsp">급여관리</a></li>		
				<li><a href="../attend/Attend.jsp">근태관리</a></li>
				<li><a href="../approval/Approval.jsp">결재관리</a></li>
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
					aria-expanded="false" href="Work_taskUpdate.jsp">업무일지</a>
					<ul class="collapse depth2" id="group1">
						<li><a href="Work_taskUpdate.jsp">업무일지 작성</a></li>
						<li><a href="Work_task.jsp">업무일지 조회</a></li>
					</ul>
				</li>
				<li><a class="active" data-toggle="collapse"
					data-target="#group2" aria-expanded="false" href="#">출/퇴근</a>
					<ul class="collapse in depth2" id="group2">
						<li><a href="Work_on_off.jsp">출/퇴근 기록부</a></li>
						<li><a href="Work_Search.jsp">출/퇴근현황 조회</a></li>
						<li><a href="Work_time.jsp"  >근무시간 조회</a></li>
						<li><a class="active" href="#">출퇴근/근태/일정 조회</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</div>
	<div style="width: 60%;"  class="contents">
		<table class="table" style="margin: auto; text-align: left;">
			<thead>
			</thead>
			<tbody>
				<tr>
					<td style="width: 10%; vertical-align: middle;" >기간</td>
					<td colspan="3">
					<input type="text" id="datepicker" class="form-control input-sm"
						style="width: 130px; height: 50%; display: inline-block"></td>
					<td style="width: 15px; vertical-align: middle; padding: 0px;">~</td>
					<td  colspan="2">
					<input type="text" id="datepicker2"	class="form-control input-sm"
						style="width: 130px; height: 50%; display: inline-block"></td>
					<td ></td>
				</tr>
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
						<input type="button" class="img-button" data-toggle="modal" data-target="#dept_name">
						<input type="text" class="form-control input-sm"
							   style="width:80%; height: 50%; display: inline-block">
					</td>
				</tr>
				<tr>
					<td style=" vertical-align: middle;">내/외근</td>
					<td style="width:10px">
						<div class="radio">
							<label> <input type="radio" name="optionsRadios"
								id="optionsRadios1" value="option1" checked>
								전체
							</label>
						</div>
					</td>
					<td style="width:15px;"	>
						<div class="radio">
							<label><input type="radio" name="optionsRadios"
									id="optionsRadios2" value="option2" checked>
									내근
							</label>
						</div>
					</td>
					<td colspan="3" style="width:20px;">
						<div class="radio">
							<label> <input type="radio" name="optionsRadios"
									id="optionsRadios3" value="option3" checked>
									외근
							</label>
						</div>
					</td>
					<td colspan="2"></td>
				</tr>
				<tr>
					<td style="vertical-align: middle;">기타</td>
					<td colspan="7" >
						<div class="custom-control custom-checkbox">
							<input type="checkbox" id="jb-All_checkbox"
								class="custom-control-input">
							<label class="custom-control-label" for="jb-checkbox">
							전체
							</label>
							<input type="checkbox" id="jb-Work_checkbox"
								class="custom-control-input">
							<label class="custom-control-label" for="jb-checkbox">
							정상근무
							</label>
							<input type="checkbox" id="jb-Late_checkbox"
								class="custom-control-input">
							<label class="custom-control-label" for="jb-checkbox">
							지각
							</label>
							<input type="checkbox" id="jb-Leave_checkbox"
								class="custom-control-input">
							<label class="custom-control-label" for="jb-checkbox">
							조기퇴근
							</label>
							<input type="checkbox" id="jb-absence_checkbox"
								class="custom-control-input">
							<label class="custom-control-label" for="jb-checkbox">
							결근
							</label>
						</div>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: middle;">근무구분</td>
					<td>
						<div class="radio">
							<label> <input type="radio" name="optionsRadios"
								id="optionsRadios4" value="option4" checked>
								전체
							</label>
						</div>
					</td>
					<td>
						<div class="radio">
							<label><input type="radio" name="optionsRadios"
									id="optionsRadios5" value="option5" checked>
									업무일
							</label>
						</div>
					</td>
					<td colspan="3">
						<div class="radio">
							<label> <input type="radio" name="optionsRadios"
									id="optionsRadios6" value="option6" checked>
									휴일
							</label>
						</div>
					</td>
					<td colspan="2"></td>
				</tr>
				<tr>
					<td>프로젝트</td>
					<td colspan="7">
						<input type="button" class="img-button" data-toggle="modal" data-target="#project">
						<input type="text" class="form-control input-sm"
							   style="width:80%; height: 50%; display: inline-block">
					</td>
				</tr>
				<tr>
					<td>근태항목</td>
					<td colspan="7">
						<input type="button" class="img-button" data-toggle="modal" data-target="#Working_attitude">
						<input type="text" class="form-control input-sm"
							   style="width:80%; height: 50%; display: inline-block">
					</td>
				</tr>
				<tr>
					<td>휴가항목</td>
					<td colspan="7">
						<input type="button" class="img-button" data-toggle="modal" data-target="#vacation">
						<input type="text" class="form-control input-sm"
							   style="width:80%; height: 50%; display: inline-block">
					</td>
				</tr>
				
				<tr>
					<td>근태그룹</td>
					<td colspan="7">
						<input type="button" class="img-button" data-toggle="modal" data-target="#Working_group">
						<input type="text" class="form-control input-sm"
							   style="width:80%; height: 50%; display: inline-block">
					</td>
				</tr>
				<tr>
					<td>적요</td>
					<td colspan="7">
						<input type="text" class="form-control input-sm"
							   style="width:80%; height: 50%; display: inline-block">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: middle;">상태</td>
					<td>
						<div class="radio">
							<label> <input type="radio" name="optionsRadios"
								id="optionsRadios4" value="option4" checked>
								전체
							</label>
						</div>
					</td>
					<td>
						<div class="radio">
							<label><input type="radio" name="optionsRadios"
									id="optionsRadios5" value="option5" checked>
									UserPay
							</label>
						</div>
					</td>
					<td colspan="3">
						<div class="radio">
							<label> <input type="radio" name="optionsRadios"
									id="optionsRadios6" value="option6" checked>
									확인
							</label>
						</div>
					</td>
					<td colspan="2"></td>
				</tr>
				<tr>
					<td colspan="2" style="vertical-align: middle;">
						<div class="input-group" style="width: 20%">
							<select class="custom-select">
								<option value="Work_on_time">출/퇴근,근태,일정 현황</option>
							</select>
						</div>
					</td>
					<td colspan="6">
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
<div class="modal fade" id="project" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-body">
				<table id="modal-project" class="table table-striped" data-paging="true" data-filtering="true" data-sorting="true">
					<thead class="thead-dark">
						<tr>
							<td scope="col">프로젝트 코드</td>
							<td scope="col">프로젝트 명</td>
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
<div class="modal fade" id="Working_attitude" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-body">
				<table id="modal-project" class="table table-striped" data-paging="true" data-filtering="true" data-sorting="true">
					<thead class="thead-dark">
						<tr>
							<td scope="col">근태 코드</td>
							<td scope="col">근태 코드 명</td>
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
<div class="modal fade" id="vacation" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-body">
				<table id="modal-project" class="table table-striped" data-paging="true" data-filtering="true" data-sorting="true">
					<thead class="thead-dark">
						<tr>
							<td scope="col">휴가 코드</td>
							<td scope="col">휴가 명</td>
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
<div class="modal fade" id="Working_group" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-body">
				<table id="modal-project" class="table table-striped" data-paging="true" data-filtering="true" data-sorting="true">
					<thead class="thead-dark">
						<tr>
							<td scope="col">근룹 코드</td>
							<td scope="col">근룹 코드 명</td>
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