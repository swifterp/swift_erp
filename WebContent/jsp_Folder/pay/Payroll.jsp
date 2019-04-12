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
<!--

추가 버튼 클릭 -> 팝업창 생성 -> 신고귀속 ~ 지급총액 입력 -> 팝업창 저장 버튼 클릭 -> row 자동 생성

근무기록 확정, 금액 직접입력, 급여계산, 급여대장  input로 작성

-->
<style type="text/css">
	.text-font{
		font-size: 12px;
	}
</style>

<script>
var col = 9;
var row = 2;
$(function () {
	$('#lblTable').empty();
	var strTable
	 = "<table id='set_table' class='table text-font' style='margin: auto; text-align:center;'>";
	  for (var i = 0; i < row; i++) {
          strTable += "<tr>";
          for (var j = 0; j < col; j++) {
              if(i%2 == 0){
	              if(j == 0){
		              strTable += "<td rowspan='2'width='10%' >" + (i+1) + ", 신고귀속, " + (j + 1) + "</td>";
	              }
	              else if(j == 1){
	            	  strTable += "<td rowspan='2'width='10%' >" + (i+1) + ", 구분, " + (j + 1) + "</td>";
	              }
	              else if(j == 2){
	            	  strTable += "<td rowspan='2'width='15%' >" + (i+1) + ", 대장명칭, " + (j + 1) + "</td>";
	              }
	              else if(j == 3){
	            	  strTable += "<td rowspan='2'width='10%' >" + (i+1) + ", 지급일, " + (j + 1) + "</td>";
	              }
	              else if(j == 4){
	            	  strTable += "<td rowspan='2'width='10%' >" + (i+1) + ", 지급연월, " + (j + 1) + "</td>";
	              }
	              else if(j == 5){
	            	  strTable += "<td width='15%'>" +  "<a href='Payroll_records.jsp'>근무기록 확정" + "</td>";
	              }
	              else if(j == 6){
	            	  strTable += "<td rowspan='2'width='10%'>" + 
	            	  "<a href='Payroll_inquiry.jsp'>전체계산"+"<br>"+
	            	  "<a href='Payroll_Salary_calculation.jsp'>개인별계산"+"<br>"+
	            	  "수정"+ 
	            	  "</td>";
	              }
	              else if(j == 7){
	            	  strTable += "<td rowspan='2'width='10%'>" + 
	            	  "<a href='Payroll_inquiry.jsp'>조회"+"<br>"+
	            	  "<a href='Payroll_Print_statement.jsp'>명세서"+"<br>"+
	            	  "확정"+"<br>"+
	            	  "삭제" + 
	            	  "</td>";            	  
	              }
	              else if(j == 8){
	            	  strTable += "<td rowspan='2'width='10%' >" + (i+1) + ", 지급총액, " + (j + 1) + "</td>";
	              }
              }
              else if(i%2 == 1){
                  if(j == 1){
                      strTable += "<td>" +  "<a href='Payroll_Direct_input.jsp'>금액 직접입력" + "</td>";
                  }
              }
          }
     	strTable += "</tr>";
      }
    strTable += "</table>";

	$('#lblTable').append(strTable);
});
</script>
</head>
<body>
	<!-- 네비게이션 -->
	<nav class="navbar navbar-default" style="z-index: 1;">
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
						<li><a class="active" href="#">급여계산/대장</a></li>
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
		<table class="table" style="margin: auto; text-align:center;">
			<thead>
				<tr>
					<td width="10%">신고귀속</td>
					<td width="10%">구분</td>
					<td width="15%">대장명칭</td>
					<td width="10%">지급일</td>
					<td width="10%">지급연월</td>
					<td width="15%">사전작업</td>
					<td width="10%">급여계산(인원)</td>
					<td width="10%">급여대장</td>
					<td width="10%">지급총액</td>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
		<div id="lblTable"></div>
		<br> 
		<input type="button" class="btn btn-primary pull-list"
			   onClick="Save" value="저장" >
		<input type="button" class="btn btn-primary pull-list"
			   onClick="add_row()" value="추가" >
	</div>
</body>
</html>