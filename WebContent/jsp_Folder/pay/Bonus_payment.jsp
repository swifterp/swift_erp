</html><%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<script type = "text/javascript" src ="../../js/jquery-3.3.1.js"></script>
<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>SWIFT ERP</title>
<script>
var jbAry = Array();
jbAry[0] = '1';
jbAry[1] = '2';
jbAry[2] = '3';
jbAry[3] = '4';
jbAry[4] = '5';
jbAry[5] = '6';
jbAry[6] = '7';
jbAry[7] = '8';
jbAry[8] = '9';
jbAry[9] = '10';
jbAry[10] = '11';
jbAry[11] = '12';
</script>
<script>
$(function () {
	$('#lblTable').empty();
	var row = 12;
	var col = 3;
	var strTable = "<table class='table' style='margin: auto;'>";
	
	for (var i = 0; i < row; i++) {
	     strTable += "<tr>";
	    for (var j = 0; j < col; j++) {
			if(j == 0){
	    		strTable += "<td style='width: 50%; text-align: left; padding-left: 60px'>" + (jbAry[i]) +"</td>";
			}
			if(j == 1) {
				strTable += "<td style='width: 1%'>" + "." + "</td>"
			}
			if(j == 2) {
				strTable += "<td style='width: 49%; text-align: left;'>" +
				 "<input type='text' class='form-control' style='width:100px; height: 50%; display: inline-block'/>"+ "%" + "</td>"
			}
	    }
	    strTable += "</tr>";
	    strTable += "</tbody>"
	}
	strTable += "</table>";
	
	$('#lblTable').append(strTable);
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
				<li><a class="active" data-toggle="collapse" data-target="#group1"
					aria-expanded="false" href="#">기본사항등록</a>
					<ul class="collapse in depth2" id="group1">
						<li><a href="Allowance_Item.jsp">수당항목등록</a></li>
						<li><a href="Deductible_Item.jsp">공제항목등록</a></li>
						<li><a class="active" href="#">1년미만자<br>상여지급률등록</a></li>
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
				<li><a data-toggle="collapse"
					data-target="#group3" aria-expanded="false" href="Specification.jsp">출력물</a>
					<ul class="collapse depth2" id="group3">
						<li><a href="Specification.jsp ">명세서인쇄</a></li>
						<li><a href="Individual_benefits.jsp ">개인별급여내역인쇄</a></li>
						<li><a href="Work_record.jsp">근무기록확정현황인쇄</a></li>
						<li><a href="Monthly_Personnel.jsp">월별인원현황인쇄</a></li>
						<li><a href="Payroll_table.jsp">급여집계표</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</div>
	<div style="width: 1200px" class="contents">
		<table class="table" style="margin: auto;">
			<tbody>
				<tr>
					<td style="width: 50%; text-align: left; padding-left: 40px">
						근속월
					</td>
					<td style="width: 1%"> 
					</td>
					<td style="width: 49%; text-align: left; padding-left: 40px"> 
						지급률
					</td>
				</tr>
			</tbody>
		</table>
		<div id="lblTable">
		</div>
		<br> 
		<input type="button" class="btn btn-primary pull-list"
			 value="인쇄" >
	</div>
</body>
</html>