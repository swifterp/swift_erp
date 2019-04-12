<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<script type = "text/javascript" src ="../../js/jquery-3.3.1.js"></script>
<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>SWIFT ERP</title>
<style>
button {
	vertical-align: middle;
}
	button.img-button_Searc {
	background: url("../../images/btn_Searc.png" ) no-repeat;
    border: none;
    width: 20px;
    height: 20px;
    cursor: pointer;
    }
</style>
<script type="text/javascript">
function pop_deal(){
	var url="../pop/window_deal_code.jsp";
	var windowW = 300;  // 창의 가로 길이
    var windowH = 300;  // 창의 세로 길이
    var left = Math.ceil((window.screen.width - windowW)/2);
    var top = Math.ceil((window.screen.height - windowH)/2);
    window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
}
</script>
<script type="text/javascript">
function pop_account(){
	var url="../pop/window_account_code.jsp";
	var windowW = 300;  // 창의 가로 길이
    var windowH = 300;  // 창의 세로 길이
    var left = Math.ceil((window.screen.width - windowW)/2);
    var top = Math.ceil((window.screen.height - windowH)/2);
    window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
}
</script>
<script type="text/javascript">
function pop_cal(){
	var url="../pop/window_Calculation.jsp";
	var windowW = 300;  // 창의 가로 길이
    var windowH = 300;  // 창의 세로 길이
    var left = Math.ceil((window.screen.width - windowW)/2);
    var top = Math.ceil((window.screen.height - windowH)/2);
    window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
}
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
				<li><a class="active" data-toggle="collapse" data-target="#group1"
					aria-expanded="false" href="#">기본사항등록</a>
					<ul class="collapse in depth2" id="group1">
						<li><a href="Allowance_Item.jsp">수당항목등록</a></li>
						<li><a class="active" href="#">공제항목등록</a></li>
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
		<table class="table" style="margin: auto; text-align:center;">
			<tbody>
				<tr>
					<td>
						공제명칭
					</td>
					<td> 
						표시<br>순서
					</td>
					<td>
						계정코드
					</td>
					<td>
						거래처코드
					</td>
					<td>
						계산식
					</td>
					<td>
						계산항목
					</td>
					<td>
						계산내역
					</td>
					<td>
						비고
					</td>
				</tr>
				<tr>
					<td>
						소득세
					</td>
					<td> 
						1
					</td>
					<td>
						<div class="input-group1">
						<input type="text" style="width: 60px">
							<span>
								<button type="button" class="img-button_Searc" onclick="pop_account();"></button>
							</span>
						<input type="text" style="width: 80px">
						</div>
					</td>
					<td>
						<div class="input-group2">
						<input type="text" style="width: 60px">
							<span>
								<button type="button" class="img-button_Searc" onclick="pop_deal();"></button>
							</span>
						<input type="text" style="width: 80px">
					</div>
					</td>
					<td>
						<div class="input-group" style="width: 100px;">
							<select class="custom-select" id="Search_2">
								<option value="Round">반올림</option>
								<option value="Raising">절상</option>
								<option value="Floor">절사</option>
							</select>
						</div>
					</td>
					<td>
						<input type="radio" name="optionsRadios"
							id="optionsRadios1" value="option1">
					</td>
					<td>
						<a type="button" onclick="pop_cal();">계산내역</a>
					</td>
					<td>
						&nbsp;
					</td>
				</tr>
				<tr>
					<td>
						주인세
					</td>
					<td> 
						2
					</td>
					<td>
						<div class="input-group1">
						<input type="text" style="width: 60px">
							<span>
								<button type="button" class="img-button_Searc" onclick="pop_account();"></button>
							</span>
						<input type="text" style="width: 80px">
						</div>
					</td>
					<td>
						<div class="input-group2">
						<input type="text" style="width: 60px">
							<span>
								<button type="button" class="img-button_Searc" onclick="pop_deal();"></button>
							</span>
						<input type="text" style="width: 80px">
					</div>
					</td>
					<td>
						<div class="input-group" style="width: 100px;">
							<select class="custom-select" id="Search_2">
								<option value="Round">반올림</option>
								<option value="Raising">절상</option>
								<option value="Floor">절사</option>
							</select>
						</div>
					</td>
					<td>
						<input type="radio" name="optionsRadios"
							id="optionsRadios1" value="option1">
					</td>
					<td>
						<a type="button" onclick="pop_cal();">계산내역</a>
					</td>
					<td>
						&nbsp;
					</td>
				</tr>
				<tr>
					<td>
						국민연금
					</td>
					<td> 
						3
					</td>
					<td>
						<div class="input-group1">
						<input type="text" style="width: 60px">
							<span>
								<button type="button" class="img-button_Searc" onclick="pop_account();"></button>
							</span>
						<input type="text" style="width: 80px">
						</div>
					</td>
					<td>
						<div class="input-group2">
						<input type="text" style="width: 60px">
							<span>
								<button type="button" class="img-button_Searc" onclick="pop_deal();"></button>
							</span>
						<input type="text" style="width: 80px">
					</div>
					</td>
					<td>
						<div class="input-group" align="center" style="width: 100px;">
							<select class="custom-select" id="Search_2">
								<option value="Round">반올림</option>
								<option value="Raising">절상</option>
								<option value="Floor">절사</option>
							</select>
						</div>
					</td>
					<td>
						<input type="radio" name="optionsRadios"
							id="optionsRadios1" value="option1">
					</td>
					<td>
						<a type="button" onclick="pop_cal();">계산내역</a>
					</td>
					<td>
						&nbsp;
					</td>
				</tr>
			</tbody>
		</table>
		<br> 
		<input type="button" class="btn btn-primary pull-list"
			 value="저장" >
	</div>
</body>
</html>