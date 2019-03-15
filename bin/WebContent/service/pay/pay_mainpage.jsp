<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>pay_mainpage</title>

<script type="text/javascript">
	function allowance(){
		location.href = "../../pay/allowance";		
	}
	function deduction(){
		location.href = "../../pay/deduction";	
	}
	function payroll(){
		location.href = "../../pay/payroll";	
	}
	function specs(){
		location.href = "./pay_specsSearch.jsp";
	}
	function underyear(){
		location.href = "./pay_underyearSearch.jsp";	
	}
	function monthlyemp(){
<<<<<<< HEAD

		location.href = "./pay_monthlyempSearch.jsp";
		
	}

	function dailywork(){
		
		var d = new Date();
		location.href = "../../pay/dailyworkList?year="+ d.getFullYear() +"&month="+ (parseInt(d.getMonth())+1).toString() +"&day="+d.getDate();
		
	}

=======
		location.href = "./pay_monthlyempSearch.jsp";	
	}
>>>>>>> refs/heads/kkyu_branch
</script>

</head>
<body>
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
</body>
</html>