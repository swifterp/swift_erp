<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type = "text/javascript" src ="../../js/jquery-3.3.1.js"></script>
<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css"> /* 테이블 선에 색상주기  */
  .line{border-bottom: 1px solid #AAA;}
</style>
<style> /* 테이블 선에 투명도 주기  */
  .Transparency{border-right: none;
   				border-left:none;
				border-top:none;
				border-bottom:none;
  				}
</style>
<style>
  .line2{border-bottom: 1px solid #fff;}
</style>
<style>
	.a{
		color: blue;
	}
	.a:hover{
		color: blue;
		text-decoration: underline;
	}
</style>
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
				dayNames : [ '월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일' ],
				dayNamesMin : [ '월', '화', '수', '목', '금', '토', '일' ],
				monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7', '8',	'9', '10', '11', '12' ],
				monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월' ]
			});
	});
</script>
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
				<li><a href="#">급여관리</a></li>		
				<li><a href="../attend/Attend.jsp">근태관리</a></li>
				<li><a href="../approval/Approval.jsp">결재관리</a></li>
				<li><a href="../work/Work_taskUpdate.jsp">업무관리</a></li>
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
					aria-expanded="false" href="Allowance_Item.jsp">기본사항등록</a>
					<ul class="collapse depth2" id="group1">
						<li><a href="Allowance_Item.jsp">수당항목등록</a></li>
						<li><a href="Deductible_Item.jsp">공제항목등록</a></li>
						<li><a href="Bonus_payment.jsp">1년미만자<br>상여지급률등록</a></li>
					</ul>
				</li>
				<li>
					<a data-toggle="collapse"
					data-target="#group2" aria-expanded="false" href="Payroll.jsp">급여작업</a>
					<ul class="collapse depth2" id="group2">
						<li><a href="Payroll.jsp">급여계산/대장</a></li>
						<li><a href="Daily_work.jsp">일별근무기록등록</a></li>
					</ul>
				</li>
				<li><a class="active" data-toggle="collapse"
					data-target="#group3" aria-expanded="false" href="#">출력물</a>
					<ul class="collapse in depth2" id="group3">
						<li><a href="Specification.jsp ">명세서인쇄</a></li>
						<li><a href="Individual_benefits.jsp ">개인별급여내역인쇄</a></li>
						<li><a href="Work_record.jsp">근무기록확정현황인쇄</a></li>
						<li><a class="active" href="#">월별인원현황인쇄</a></li>
						<li><a href="Payroll_table.jsp">급여집계표</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</div>
	<div style="width: 1000px;"  class="contents">
		<table class="table" style=" text-align: left; background-color: #e0e0e0;" >
			<thead>
			</thead>
			<tbody>
				<tr>
					<td class="line" style="width:150px; text-align: left;">
						기준일자
					</td>
					<td class="line" style="text-align: left;">
						<input type="text" id="datepicker" class="form-control input-sm"
						style="width: 200px; height: 100%; display: inline-block;">
						&nbsp;&nbsp;~&nbsp;&nbsp;
						<input type="text" id="datepicker2" class="form-control input-sm"
						style="width: 200px; height: 100%; display: inline-block">
					</td>
				</tr>
				<tr>
					<td class="line" style="text-align: left;">
						부서
					</td>
					<td class="line" style="text-align: left;">
						<input type="text" style="width: 100px;">
						<span>
							<button type="button"></button>
						</span>
						<input type="text" style="width: 100px">
					</td>
				</tr>
				<tr>
					<td class="line" style="text-align: left;">
						부서계층그룹
					</td>
					<td class="line" style="text-align: left;">
						<input type="text" style="width: 100px">
						<span>
							<button type="button"></button>
						</span>
						<input type="text" style="width: 100px">
						&nbsp;
						<input type="checkbox" id="jb-checkbox1" class="custom-control-input"
							style="vertical-align: middle; margin: 0px">
						<label class="custom-control-label" for="jb-checkbox" style="margin: 0px;">
							하위그룹 포함검색
						</label>
					</td>
				</tr>
				<tr>
					<td class="line" style="text-align: left;">
						프로젝트
					</td>
					<td class="line" style="text-align: left;">
						<input type="text" style="width: 100px">
						<span>
							<button type="button"></button>
						</span>
						<input type="text" style="width: 100px">
					</td>
				</tr>
				<tr>
					<td class="line" style="text-align: left;">
						기타
					</td>
					<td class="line" style="text-align: left; margin: 0px">
						<input type="checkbox" id="jb-checkbox2" class="custom-control-input"
							   style="vertical-align: middle; margin: 0px">
						<label class="custom-control-label" for="jb-checkbox" style="margin: 0px">
						결재방표시
						</label>
					</td>
				</tr>
				<tr>
					<td class="line" style="text-align: left;">
						간편검색
					</td>
					<td class="line" style="text-align: left;">
						<a class="a">금월</a>&nbsp;
						<a class="a">전월</a>&nbsp;
						<a class="a">당년도</a>&nbsp;
						<a class="a">전년도</a>&nbsp;
						<a class="a">종료월</a>
					</td>
				</tr>
			</tbody>
		</table>
		<br>
		<input type="submit" class="btn btn-primary pull-left" value="검색">
	</div>
</body>
</html>