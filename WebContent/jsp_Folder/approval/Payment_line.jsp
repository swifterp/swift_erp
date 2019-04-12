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
<title>Insert title here</title>
<style type="text/css">
	.td{
		background-color: rgba(255,255,255,0);
		border: 0;
	}
</style>
<script>
	function number(){
		var number = document.getElementById('number').value;
			if(number == "순번 ▼"){
				$('#number').val("순번 ▲");
			}else{
				$('#number').val("순번 ▼");
			}
	}
</script>
<script>
	function line_name(){
		var line_name = document.getElementById('line_name').value;
			if(line_name == "결재라인명칭 ▼"){
				$('#line_name').val("결재라인명칭 ▲");
			}else{
				$('#line_name').val("결재라인명칭 ▼");
			}
	}
</script>
<script>
var col = 2;
var row = 5;
var num = 0;
$(function(){
	$('#lbTable').empty();
	var styTable = "<table class='table' width='1000px'>";
		for(var i=0; i<row; i++){
			styTable += "<tr>";
			for(var j=0; j<col; j++){
				if(i == 0){
					if(j == 0){
					styTable += "<td width='10%' style='text-align: left;'>"+ (num+i) + "</td>"
					}
					if(j == 1){
					styTable += "<td width='90%' style='text-align: left;'>"+ "결재라인을 만들어 보세요" + "</td>"
					}
				}
				else{
					if(j == 0){
					styTable += "<td width='10%' style='text-align: left;'>"+ (num+i) + "</td>"
					}
					if(j == 1){
					styTable += "<td width='90%' style='text-align: left;'>"+ "test"+(+i) + "</td>"
					}
				}
			}
			styTable += "</tr>";
		}
		styTable += "</table>"
	$('#lbTable').append(styTable);
	
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
				<li><a href="../pay/Allowance_Item.jsp">급여관리</a></li>			
				<li><a href="../attend/Attend_Item_Manage.jsp">근태관리</a></li>
				<li><a href="#">결재관리</a></li>
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
				<a href="Prospect_write.jsp">기안서 작성</a>
				<a href="My_Progress.jsp">내 결재관리</a>
				<a href="Integrated_Progress.jsp">기안서 통합관리</a>
				<li>
					<a data-toggle="collapse" class="active"
					   data-target="#group1" aria-expanded="false" href="#">기초자료등록</a>
					<ul class="collapse in depth2" id="group3">
						<li><a class="active" href="Payment_line.jsp ">결재라인등록</a></li>
						<li><a href="Common_form.jsp ">공통양식등록</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</div>
	<div style="width: 1000px" class="contents">
		<table class="table">
			<thead>
				<tr>
					<td width="10%">
						<input type="button" class="td" onclick="number();" id="number" value="순번 ▼">
					</td>
					<td width="90%">
						<input type="button" class="td" onclick="line_name();" id="line_name" value="결재라인명칭 ▼">
					</td>
				</tr>
			</thead>				
		</table>
		<div id="lbTable"></div>
		<br>
		<input type="button" class="btn btn-primary" value="등록">
	</div>
</body>
</html>