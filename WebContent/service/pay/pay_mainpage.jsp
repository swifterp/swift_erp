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

		location.href = "./pay_monthlyempSearch.jsp";
		
	}

</script>

</head>
<body>
This is pay page.
<br>
<input type="button" onclick="javascript:allowance()" value="�����׸� ��ȸ">
<br>
<input type="button" onclick="javascript:deduction()" value="�����׸� ��ȸ">
<br>
<input type="button" onclick="javascript:payroll()" value="�޿����/���� ��ȸ">
<br>
<input type="button" onclick="javascript:specs()" value="���� ��ȸ">
<br>
<input type="button" onclick="javascript:underyear()" value="1��̸��ڻ����޷����">
<br>
<input type="button" onclick="javascript:monthlyemp()" value="�����ο���Ȳ ��ȸ">
</body>
</html>