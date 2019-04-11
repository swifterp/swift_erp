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
function pop_dept(){
	var url="../pop/window_dept.jsp";
	var windowW = 300;  // 창의 가로 길이
    var windowH = 300;  // 창의 세로 길이
    var left = Math.ceil((window.screen.width - windowW)/2);
    var top = Math.ceil((window.screen.height - windowH)/2);
    window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
}
</script>
<style>
	td{
		height: 40px;
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

<script>
var col = 9;
var row = 3;
$(function () {
	$('#lblTable').empty();
	var strTable
	 = "<table class='table' style='margin: auto; text-align:center;'>";
	  for (var i = 0; i < row; i++) {
          strTable += "<tr>";
          for (var j = 0; j < col; j++) {
			  if(j == 0){
				  strTable += "<td width='3%'>"
					   + "<input type='checkbox' id='spec_checkbox' class='custom-control-input'>" + "</td>";
			  }
			  else if(j == 1){
				  strTable += "<td width='10%'>" + "날짜" + "</td>"
			  }
			  else if(j == 2){
				  strTable += "<td width='9%' style='text-align:center;'>" + "급여" + "</td>"
			  }
			  else if(j == 3){
				  strTable += "<td width='10%'>" + "003" + "</td>"
			  }
			  else if(j == 4){
				  strTable += "<td width='12%'>" + "홍길순" + "</td>"
			  }
			  else if(j == 5){
				  strTable += "<td width='12%'>" + "영업교육팀" + "</td>"
			  }
			  else if(j == 6){
				  strTable += "<td width='12%'>" + "4,100,000" + "</td>"
			  }
			  else if(j == 7){
				  strTable += "<td width='16%'>" + "578,240" + "</td>"
			  }
			  else if(j == 8){
				  strTable += "<td width='16%'>" + "3,521,760" + "</td>"
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
						<li><a class="active" href="# ">명세서인쇄</a></li>
						<li><a href="Individual_benefits.jsp ">개인별급여내역인쇄</a></li>
						<li><a href="Work_record.jsp">근무기록확정현황인쇄</a></li>
						<li><a href="Monthly_Personnel.jsp">월별인원현황인쇄</a></li>
						<li><a href="Payroll_table.jsp">급여집계표</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</div>
	<div style="width: 1000px"  class="contents">
		<table class="table" style=" text-align: left; background-color: #e0e0e0;" >
			<thead>
			</thead>
			<tbody>
				<tr>
					<td class="line" style="width:80px; text-align: left;">
						신고귀속
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
					<td class="line" style=" text-align: left;">
						차수
					</td>
					<td class="line" style="width: 100px; vertical-align: middle;">
						<div class="input-group">
							<select class="custom-select" style="width: 200px"id="Order">
								<option value="===">===</option>
								<option value="Order_1">1</option>
							</select>
						</div>
					</td>
				</tr>
				<tr>
					<td class="line" style="text-align: left;">
						급여구분
					</td>
					<td class="line" style="width: 100px; vertical-align: middle;">
						<div class="input-group">
							<select class="custom-select" style="width: 200px"id="salary">
								<option value="===">===</option>
								<option value="salary_1">급여</option>
								<option value="salary_2">급(상)여</option>
								<option value="salary_3">상여1회</option>
								<option value="salary_4">상여2회</option>
								<option value="salary_5">상여3회</option>
								<option value="salary_6">상여4회</option>
								<option value="salary_7">상여5회</option>
								<option value="salary_8">상여6회</option>
								<option value="salary_9">상여7회</option>
								<option value="salary_10">상여8회</option>
								<option value="salary_11">상여9회</option>
							</select>
						</div>
					</td>
				</tr>
				<tr>
					<td class="line" style="text-align: left;">
						사원
					</td>
					<td class="line" style="text-align: left;">
						<input type="text" style="width: 200px">
					</td>
				</tr>
				<tr>
					<td class="line" style="text-align: left;">
						부서
					</td>
					<td class="line" style="text-align: left;">
						<input type="text" style="width: 100px;">
						<span>
							<button type="button" class="img-button_Searc" onclick="pop_dept()"></button>
						</span>
						<input type="text" style="width: 100px">
					</td>
				</tr>
				<tr>
					<td class="line" style="text-align: left;">
						부서계층그룹
					</td>
					<td class="line" style="text-align: left;">
						<div class="custom-control custom-checkbox">
							<input type="text" style="width: 100px">
							<span>
								<button type="button" class="img-button_Searc" onclick="pop_dept()"></button>
							</span>
							<input type="text" style="width: 100px">
							&nbsp;
							<input type="checkbox" id="spec_checkbox" class="custom-control-input"
							style="vertical-align: middle; margin: 0px">
							<label class="custom-control-label" for="jb-checkbox" style="margin: 0px;">
								하위그룹 포함검색
							</label>
						</div>
					</td>
				</tr>
				<tr>
					<td class="line" style="width: 155px" colspan="3">
						<input type="submit" class="btn btn-primary pull-left" value="조회">
					</td>
				</tr>
			</tbody>
		</table>
	<hr style="border:solid 1px #888;"> <!-- 중간 가로선  -->
		<table class="table Transparency">
			<thead>
				<tr>
					<td  class="line2" colspan="2" style="text-align: center; font-size: 20pt;">
						명세서 인쇄
					</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td style="text-align: left;">
						회사명 : (주)SWIFT
					</td>
					<td style="text-align: right;">
						<input type="text" style="width: 80px">
						~
						<input type="text" style="width: 80px">
					</td>
				</tr>
			</tbody>
		</table>
		<table class="table" style="margin: auto; text-align: center;">
			<thead>
				<tr style="background-color: #eee">
					<td width='3%'>
						<input type="checkbox" id="spec_checkbox"
							   class="custom-control-input">
					</td>
					<td width='10%'> 신고귀속
					</td>
					<td width='9%'> 구분
					</td>
					<td width='10%'> 사원번호
					</td>
					<td width='12%'> 사원명
					</td>
					<td width='12%'> 부서명
					</td>
					<td width='12%'> 지급총액
					</td>
					<td width='16%'> 공제총액
					</td>
					<td width='16%'> 실지급액
					</td>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
		<div id="lblTable"></div>
	</div>
</body>
</html>