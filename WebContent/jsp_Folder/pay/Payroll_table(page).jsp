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
		<div style="width: 2000px; padding-right: 30px"  class="contents">
		<table class="table line" style="margin: auto; text-align:center;">
			<thead class="line">
				<tr>
					<td style="width: 200px">
					</td>
					<td style="font-size: 24px; text-align: center;">
						급여집계표
					</td>
					<td style="width: 200px; vertical-align: bottom; ">
						시간(년/월) ~ 시간(년/월)
					</td>
				</tr>
			</thead>
		</table>
		<table class="table" style="margin: auto; text-align:center;">
			<thead>
			</thead>
			<tbody>
				<tr>
					<td>
						사원
					</td>
					<td> 
						기본급
					</td>
					<td>
						야근수당
					</td>
					<td>
						주말근무수당
					</td>
					<td>
						연차수당
					</td>
					<td> 
						출산보육수당
					</td>
					<td>
						식대
					</td>
					<td>
						차량유지비
					</td>
					<td>
						상여
					</td>
					<td>
						소득세
					</td>
					<td> 
						주민세
					</td>
					<td>
						국민연금
					</td>
					<td>
						건강보험
					</td>
					<td>
						고용보험
					</td>
					<td>
						장기요양
					</td>
					<td>
						연말정산
					</td>
					<td> 
						사우회비
					</td>
					<td>
						공제항목<br>추가가능
					</td>
					<td>
						지급총액
					</td>
					<td>
						공제총액
					</td>
					<td>
						실지급액
					</td>
				</tr>
				<tr>
					<td>
						홍길동
					</td>
					<td> 
						0
					</td>
					<td>
						0
					</td>
					<td>
						0
					</td>
					<td>
						0
					</td>
					<td> 
						0
					</td>
					<td>
						0
					</td>
					<td>
						0
					</td>
					<td>
						0
					</td>
					<td>
						0
					</td>
					<td> 
						0
					</td>
					<td>
						0
					</td>
					<td>
						0
					</td>
					<td>
						0
					</td>
					<td>
						0
					</td>
					<td>
						0
					</td>
					<td> 
						0
					</td>
					<td>
						0
					</td>
					<td>
						0
					</td>
					<td>
						0
					</td>
					<td>
						0
					</td>
				</tr>
				<tr>
					<td>
						총계
					</td>
					<td> 
						0
					</td>
					<td> 
						0
					</td>
					<td>
						0
					</td>
					<td>
						0
					</td>
					<td> 
						0
					</td>
					<td>
						0
					</td>
					<td>
						0
					</td>
					<td>
						0
					</td>
					<td>
						0
					</td>
					<td> 
						0
					</td>
					<td>
						0
					</td>
					<td>
						0
					</td>
					<td>
						0
					</td>
					<td>
						0
					</td>
					<td>
						0
					</td>
					<td> 
						0
					</td>
					<td>
						0
					</td>
					<td>
						0
					</td>
					<td>
						0
					</td>
					<td>
						0
					</td>
				</tr>
			</tbody>
		</table>
		<div style=" text-align: right;">
			<a style="width: 100px; vertical-align: bottom;">
				시간(년/ 월/ 일   오전 시:분:초)
			</a>
		</div>
		<br> 
		<input type="button" class="btn btn-primary pull-list"
			 value="인쇄" >
	</div>
</body>
</html>