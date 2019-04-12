<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<script type = "text/javascript" src ="../../js/jquery-3.3.1.js"></script>
<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>Insert title here</title>
<!-- 개인별급여상세내역 -->
<style>
	table td{text-align: left;}
</style>
<script type="text/javascript">
	function timer4() {
		var date = new Date();
		var year = date.getFullYear();
		var month = date.getMonth() + 1;
		var day = date.getDate();
		var dateString = year+"년 "+month+"월 "+day+"일 ";
		
		var hour = date.getHours();
		var ampm = (hour < 12 || hour == 24) ? " 오전" : " 오후";
		hour = hour % 12 || 12;
		var minute = date.getMinutes();
		minute = (minute > 9) ? minute : "0" + minute;
		var second = date.getSeconds();
		second = (second > 9) ? second : "0" + second;
		var timeString = ampm + " " + hour + ":" + minute + ":" + second;
		
		return "최근 급여 계산일 : "+dateString+" "+timeString;
	}
</script>
<style type="text/css">
	#setTimer {
		font-size: 15px;
	}
</style>
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
				<li><a href="../attend/Attend_Item_Manage.jsp">근태관리</a></li>
				<li><a href="../approval/Prospect_write.jsp">결재관리</a></li>
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
					<a  class="active" data-toggle="collapse"
					data-target="#group2" aria-expanded="false" href="#">급여작업</a>
					<ul class="collapse in depth2" id="group2">
						<li><a class="active" href="Payroll.jsp">급여계산/대장</a></li>
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
	<div style="padding-right: 30px; text-align: right;" class="contents">
		<a id="setTimer" ></a>
		 <script type="text/javascript">
		 var tag = document.getElementById( "setTimer" ); 
		     tag.innerHTML =  timer4(); 
		</script>
		<table class="table" style="margin: auto; text-align:center;">
			<thead>
			</thead>
			<tbody>
				<tr>
					<td style="width: 200px">귀속연월</td>
					<td><input></td>
					<td style="width: 200px">성명</td>
					<td><input></td>
				</tr>
				<tr>
					<td>기본급</td>
					<td><input></td>
					<td>야근수당</td>
					<td><input></td>
				</tr>
				<tr>
					<td>주말근무수당</td>
					<td><input></td>
					<td>연차수당</td>
					<td><input></td>
				</tr>
				<tr>
					<td>출산보육수당</td>
					<td><input></td>
					<td>부양가족수당</td>
					<td><input></td>
				</tr>
				<tr>
					<td>식대</td>
					<td><input></td>
					<td>차량유지비</td>
					<td><input></td>
				</tr>
				<tr>
					<td>상여</td>
					<td colspan="3"><input></td>
				</tr>
				<tr>
					<td>지급총액</td>
					<td colspan="3"><input></td>
				</tr>
				<tr>
					<td>소득세</td>
					<td><input></td>
					<td>주민세</td>
					<td><input></td>
				</tr>
				<tr>
					<td>국민연금</td>
					<td><input></td>
					<td>건강보험</td>
					<td><input></td>
				</tr>
				<tr>
					<td>고용보험</td>
					<td><input></td>
					<td>장기요양</td>
					<td><input></td>
				</tr>
				<tr>
					<td>연말정산</td>
					<td><input></td>
					<td>사우회비</td>
					<td><input></td>
				</tr>
				<tr>
					<td>공제항목 추가기능</td>
					<td colspan="3"><input></td>
				</tr>
				<tr>
					<td>공제총액</td>
					<td colspan="3"><input></td>
				</tr>
				<tr>
					<td>수령액</td>
					<td colspan="3"><input></td>
				</tr>
			</tbody>
		</table>
		<div id="lblTable"></div>
		<br>
		<div style="text-align: left;">
		<input type="button" class="btn btn-primary pull-list"
			   onClick="Save" value="저장" >
		<input type="button" class="btn btn-primary pull-list"
			   onClick="Calculation" value="세금재 계산" >
		<input type="button" class="btn btn-primary pull-list"
			   onClick="print" value="명세서 인쇄" >
		<input type="button" class="btn btn-primary pull-list"
			   onClick="Delete" value="삭제" >
		</div> 
	</div>
</body>
</html>