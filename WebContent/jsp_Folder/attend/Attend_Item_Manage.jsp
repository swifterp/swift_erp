<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<script type = "text/javascript" src ="../../js/jquery.min.js"></script>
<script type = "text/javascript" src ="../../js/jquery-3.3.1.js"></script>
<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
jQuery(function($){
	$('#modal-New_Update').footable({
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
						<li><a class="active" href="#">근태 항목 관리</a></li>
						<li><a href="Vacation_Item_Manage.jsp">휴가 항목 관리</a></li>
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
		<table class="table" style=" text-align:center;">
			<thead >
				<tr	style="background-color: #eee">
					<td style="width: 50px;" >
						<div class="custom-control custom-checkbox">
							<input type="checkbox" id="jb-checkbox"
								class="custom-control-input">
						</div>
					</td>
					<td style="width: 150px"> 근태코드
					</td>
					<td style="width: 150px"> 근태명칭
					</td>
					<td style="width: 200px"> 휴가코드관리여부
					</td>
					<td style="width: 150px"> 사용
					</td>
					<td style="width: 350px"> 적요
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
								<td style="width: 270px;vertical-align: middle;" >근태코드</td>
								<td><input type="text" class="form-control input-sm" style="width: 99%"></td>
							</tr>
							<tr>
								<td style="vertical-align: middle;">근태명칭</td>
								<td><input type="text" class="form-control input-sm" style="width: 99%"></td>
							</tr>
							<tr>
								<td style="vertical-align: middle;">휴가코드</td>
								<td>
								<input type="button" class="img-button" data-toggle="modal" data-target="#Working_attitude">
								<input type="text" class="form-control input-sm" style="width: 95%; display: inline-block"></td>
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
</body>
</html>