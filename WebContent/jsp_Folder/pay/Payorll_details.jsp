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
<!-- 급여 명세서 -->
<script>

</script>
<script type="text/javascript">
function setDate(){
	var date = new Date();
	var year = date.getFullYear();
	var month = date.getMonth() + 1;
	var day = date.getDate();
	var dateString = "지급일자 : "+ year +"년 "+ month +"월 "+ day +"일";

	var name = "성명";
	var user_name = "홍길순";
	var num = "006";
	var setName = name+" : "+user_name+"("+num+")";

	return dateString+"&nbsp;&nbsp;&nbsp;"+setName; 
}
</script>
<style>
	#setDate{
		font-size: 15px;
	}
</style>
<style type="text/css">
	table td {
		text-align: left;
		font-size: 12px;
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
	<div style="padding-right: 30px" class="contents">
		<a>(주) SWIFT</a>
		<br>
		<p id="setDate"></p>
		<script>
			var tag = document.getElementById("setDate");
				tag.innerHTML =  setDate();
		</script>
		<table class="table" style="margin: auto; text-align:center;">
			<tbody>
				<tr>
					<td style="background-color: #0BA4BC; color: #fff; width: 20%;">지급항목</td>
					<td colspan="4"></td>
				</tr>
				<tr>
					<td>기본급</td>
					<td style="width: 20%"></td>
					<td style="width: 20%">식대</td>
					<td style="width: 20%"></td>
					<td style="width: 20%"></td>
				</tr>
				<tr>
					<td colspan="5" style="text-align: right;
						background-color: #F3F1E6; font-weight: bold;">지급총액 : 
						<input></td>
				</tr>
				<tr>
					<td style="background-color: #0BA4BC; color: #fff;">공제항목</td>
					<td colspan="4"></td>
				</tr>
				<tr>
					<td>소득세</td>
					<td><input></td>
					<td>주민세</td>
					<td><input></td>
					<td></td>
				</tr>
				<tr>
					<td>국민연금</td>
					<td><input>td>
					<td>건강보험</td>
					<td><input></td>
					<td></td>
				</tr>
				<tr>
					<td>고용보험</td>
					<td><input></td>
					<td>장기요양</td>
					<td><input></td>
					<td></td>
				</tr>
				<tr>
					<td colspan="5" style="text-align: right;
						background-color: #F3F1E6; font-weight: bold;">공제총액 : 
						<input></td>
				</tr>
				<tr>
					<td colspan="5" style="text-align: right; 
						background-color: #B8AE8C; font-weight: bold;">지급총액 - 공제총액 = 실지급액 : 
						<input></td>
				</tr>
				<tr>
					<td colspan="5" style="text-align: right;
						font-weight: bold;">※ 수고하셨습니다</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>