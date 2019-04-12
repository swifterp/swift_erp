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
	function order(){
		var Order = document.getElementById('order').value;
			if(Order == "정렬순서 ▼"){
				$('#order').val("정렬순서 ▲");
			}else{
				$('#order').val("정렬순서 ▼");
			}
	}
</script>
<script type="text/javascript">
	function form_name(){
		var Form_name = document.getElementById('form_name').value;
			if(Form_name == "양식명 ▼"){
				$('#form_name').val("양식명 ▲");
			}else{
				$('#form_name').val("양식명 ▼");
			}
	}
</script>
<script>
	function division(){
		var Division = document.getElementById('division').value;
			if(Division == "구분 ▼"){
				$('#division').val("구분 ▲");
			}else{
				$('#division').val("구분 ▼");
			}
	}
</script>
<script>
var col = 4;
var row = 200;
$(function(){
	$('#lbTable').empty();
	var styTable = "<table class='table' width='1000px'>";
		for(var i=0; i<row; i++){
			styTable += "<tr>";
			for(var j=0; j<col; j++){
					if(j == 0){
					styTable += "<td width='15%'>"+ (+i) + "</td>"
					}
					if(j == 1){
					styTable += "<td width='45%'>"+ "명" + "</td>"
					}
					if(j == 2){
					styTable += "<td width='25%'>"+ "구분" + "</td>"
					}
					if(j == 3){
					styTable += "<td width='15%'>"+ "전표명" + "</td>"
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
						<li><a href="Payment_line.jsp ">결재라인등록</a></li>
						<li><a class="active" href="Common_form.jsp ">공통양식등록</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</div>
		<div style="width: 1000px"  class="contents">
	<ul class="pagination">
		<li class="page-item"><a class="page-link" href="#">Previous</a></li>
		<li class="page-item"><a class="page-link" href="#">1</a></li>
		<li class="page-item"><a class="page-link" href="#">2</a></li>
		<li class="page-item"><a class="page-link" href="#">3</a></li>
		<li class="page-item"><a class="page-link" href="#">3</a></li>
		<li class="page-item"><a class="page-link" href="#">Next</a></li>
	</ul>
		<table class="table">
			<thead>
				<tr>
					<td width='15%'>
						<input type="button" class="td" onclick="order();" 	  id="order" 	value="정렬순서 ▼">
					</td>
					<td width='45%'>
					  	<input type="button" class="td" onclick="form_name();" 	  id="form_name" 	value="양식명 ▼">
					</td>
					<td width='25%'>
						<input type="button" class="td" onclick="division();" id="division" value="구분 ▼">
					</td>
					<td width='15%'>ERP전표</td>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
		<div id="lbTable"></div>
	</div>
</body>
</html>