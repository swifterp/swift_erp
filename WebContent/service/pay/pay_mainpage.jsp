<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pay_mainpage</title>
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<script type = "text/javascript" src ="../../js/jquery.min.js"></script>
<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
<script type="text/javascript">

	function allowance(){
		location.href = "../pay/allowance";		
	}
	
	function deduction(){
		location.href = "../pay/deduction";	
	}
	
	function payroll(){
		location.href = "../pay/payroll";	
	}
	
	function specs(){
		location.href = "./pay_specsSearch.jsp";
	}
	
	function underyear(){
		location.href = "../pay/underyearSearch";
	}
	
	function monthlyemp(){
		location.href = "./pay_monthlyempSearch.jsp";
	}

	function dailywork(){
		var d = new Date();
		location.href = "../pay/dailyworkList?selectedDate="+ d.getFullYear() +"/"+ (parseInt(d.getMonth())+1).toString() +"/"+d.getDate();
	}

	function monthlyemp(){
		location.href = "./pay_monthlyempSearch.jsp";	
	}

	function workconfirm(){
		location.href = "../pay/selectworkconfirm";
	}
	
</script>

</head>
<body>
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">
		<%@ include file="../common/left_menu_pay.jsp" %>
		<div class="contents">
This is pay page.
<br>
<input type="button" onclick="javascript:allowance()" value="수당항목 조회">
<br>
<input type="button" onclick="javascript:deduction()" value="공제항목 조회">
<br>
<input type="button" onclick="javascript:payroll()" value="급여계산/대장 조회">
<br>
<input type="button" onclick="javascript:specs()" value="명세서 조회">
<br>
<input type="button" onclick="javascript:underyear()" value="1년미만자상여지급률 등록">
<br>
<input type="button" onclick="javascript:monthlyemp()" value="월별인원현황 조회">
<br>
<input type="button" onclick="javascript:dailywork()" value="일별근무기록 조회">
<br>
<input type="button" onclick="javascript:workconfirm()" value="근무기록확정 조회">
</div></div>
</body>
</html>