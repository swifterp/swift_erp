<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<script type = "text/javascript" src ="../../js/jquery-3.3.1.js"></script>
<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
var col = 6;
var row = 3;
$(function() {
	$('#lbTable').empty();
	var strTable = "<table class='table' style='margin: auto; text-align:center;'>";
		for(var i=0; i<row; i++){
			strTable += "<tr>";
			for(var j=0;j<col;j++){
				if(j==0){
				strTable += "<td style='width:15%'>" + "001" + "</td>"
				}
				else if(j==1){
				strTable += "<td width = '20%'>" + "1" + "</td>"
				}
				else if(j==2){
				strTable += "<td width = '10%'>" + "홍길" + "</td>"
				}
				else if(j==3){
				strTable += "<td width = '15%'>" + "영업부서" + "</td>"
				}
				else if(j==4){
				strTable += "<td width = '20%'>" + "사원" + "</td>"
				}
				else if(j==5){
				strTable += "<td width = '20%'>" + "2004/04/14" + "</td>"
				}
			}
			strTable += "</tr>";
		}
		strTable += "</table>";
	$('#lbTable').append(strTable);
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
						<li><a class="active" href="# ">개인별급여내역인쇄</a></li>
						<li><a href="Work_record.jsp">근무기록확정현황인쇄</a></li>
						<li><a href="Monthly_Personnel.jsp">월별인원현황인쇄</a></li>
						<li><a href="Payroll_table.jsp">급여집계표</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</div>
	<div style="width: 1000px"  class="contents">
		<div style="text-align: right;">
			<input style="width: 100px;">
			<button type="button">검색</button>
			&nbsp;
			<input type="checkbox" id="jb-checkbox"
				class="custom-control-input">
			<label class="custom-control-label" for="jb-checkbox">
			퇴사자 포함
			</label>
		</div>
		<table class="table" style="margin: auto; text-align: center;">
			<thead>
				<tr>
					<td width='15%'>사번
					</td>
					<td width='20%'>급여차수
					</td>
					<td width='10%'>성명
					</td>
					<td width='15%'>부서
					</td>
					<td width='20%'>직위/직급
					</td>
					<td width='20%'>입시일자
					</td>
				</tr>
			</thead>			
		</table>
		<div id="lbTable"></div>
		<div style="text-align: right;">
			<a>인원(명):<input type="text" style="width: 20px"></a>
		</div>
	</div>
</body>
</html>