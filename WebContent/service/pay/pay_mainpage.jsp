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
</script>

</head>
<body>
This is pay page.
<br>
<input type="button" onclick="javascript:allowance()" value="수당항목 조회">
<br>
<input type="button" onclick="javascript:deduction()" value="공제항목 조회">
<br>
<input type="button" onclick="javascript:payroll()"   value="급여계산/대장 조회">
<br>
<input type="button" onclick="javascript:specs()"   value="명세서 조회">
</body>
</html>