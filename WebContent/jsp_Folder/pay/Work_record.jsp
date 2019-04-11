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
	td{
		height: 40px;
	}
</style>
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
<script type="text/javascript">
function pop_user_number(){
	var url="../pop/window_user_number.jsp";
	var windowW = 300;  // 창의 가로 길이
    var windowH = 300;  // 창의 세로 길이
    var left = Math.ceil((window.screen.width - windowW)/2);
    var top = Math.ceil((window.screen.height - windowH)/2);
    window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
}
</script>
<script type="text/javascript">
function pop_project(){
	var url="../pop/window_project.jsp";
	var windowW = 300;  // 창의 가로 길이
    var windowH = 300;  // 창의 세로 길이
    var left = Math.ceil((window.screen.width - windowW)/2);
    var top = Math.ceil((window.screen.height - windowH)/2);
    window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
}
</script>
<script type="text/javascript">
function Today(year,mon,day){
    if(year == "null"){       
    today = new Date();
    this_year=today.getFullYear();
}
else{  
    var this_year = eval(year);
    }
document.writeln("<select name='year' size=1 onChange='dateSelect(this.form,this.form.month.selectedIndex);'>");
    for(i=this_year-5;i<this_year+1;i++){//현재 년도에서 과거로 5년까지 현재까지를 표시함
        if(i==this_year) document.writeln("<OPTION VALUE="+i+ " selected >" +i); 
        else document.writeln("<OPTION VALUE="+i+ ">" +i); 
    }    
document.writeln("</select>년");      
}
</script>
<script>
var col = 6;
var row = 2;
$(function() {
	$('#lbTable').empty();
	var strTable = "<table class='table' style='margin: auto; text-align:center;'>";
		for(var i=0; i<row; i++){
			strTable += "<tr>";
			for(var j=0;j<col;j++){
				if(j==0){
				strTable += "<td style='width:10%'>" +"날짜"+ "</td>"
				}
				else if(j==1){
				strTable += "<td width='5%'>" +"a"+ "</td>"
				}
				else if(j==2){
				strTable += "<td width='30%'>" +"a"+ "</td>"
				}
				else if(j==3){
				strTable += "<td width='13%'>" +"a"+ "</td>"
				}
				else if(j==4){
				strTable += "<td width='7%'>" +"a"+ "</td>"
				}
				else if(j==5){
				strTable += "<td width='5%'>" +"a"+ "</td>"
				}
			}
			strTable += "</tr>";
		}
		strTable += "</table>";
	$('#lbTable').append(strTable);
});	
</script>
<title>Insert title here</title>
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
						<li><a class="active" href="#">근무기록확정현황인쇄</a></li>
						<li><a href="Monthly_Personnel.jsp">월별인원현황인쇄</a></li>
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
						기준연도
					</td>
					<td class="line" style="text-align: left;">
						<form name="form1">
						<script language="javascript"> Today('null'); </script>
						</form>
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
						<input type="text" style="width: 100px">
						<span>
							<button type="button" class="img-button_Searc" onclick="pop_dept()"></button>
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
							<button type="button" class="img-button_Searc" onclick="pop_project()"></button>
						</span>
						<input type="text" style="width: 100px">
					</td>
				</tr>
				<tr>
					<td class="line" style="text-align: left;">
						사원번호
					</td>
					<td class="line" style="text-align: left;">
						<input type="text" style="width: 100px">
						<span>
							<button type="button" class="img-button_Searc" onclick="pop_user_number()"></button>
						</span>
						<input type="text" style="width: 100px">
					</td>
				</tr>
				<tr>
					<td class="line" style="text-align: left;">
						구분
					</td>
					<td class="line" style="text-align: left;">
						<div class="radio" style="margin: 0px;">
							<label> 
								<input type="radio" name="optionsRadios"
									   id="optionsRadios1" value="option1">
									      개인별
							</label>
							&nbsp;&nbsp;
							<label>
								<input type="radio" name="optionsRadios"
									   id="optionsRadios2" value="option2">
									      부서별
							</label>
							&nbsp;&nbsp;
							<label> 
								<input type="radio" name="optionsRadios"
									   id="optionsRadios3" value="option3">
								              프로젝트별
							</label>
						</div>
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
					<td class="line" style="width: 155px" colspan="2">
						<input type="submit" class="btn btn-primary pull-left" value="검색">
					</td>
				</tr>
			</tbody>
		</table>
	<hr style="border:solid 1px #888;"> <!-- 중간 가로선  -->
		<table class="table Transparency">
			<thead>
				<tr>
					<td  class="line2" colspan="2" style="text-align: center; font-size: 20pt;">
						근무기록확정 현황 인쇄
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
					<td style='width: 10%'> 신고귀속
					</td>
					<td width='5%'> 구분
					</td>
					<td width='30%'> 대장명칭
					</td>
					<td width='13%'> 지급일
					</td>
					<td width='7%'> 인원(명)
					</td>
					<td width='5%'> 인쇄
					</td>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
		<div id="lbTable"></div>
	</div>
</body>
</html>