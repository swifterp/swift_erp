<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�޿������Ȳ ������</title>

<script type="text/javascript">

	function personalPay(salaryCalc_no){
		location.href = "../pay/personalPay?salaryCalc_no="+salaryCalc_no;
	}

</script>

</head>
<body>

<table>
	<tr>
		<td>�Ű�ͼ�</td>
		<td>����</td>
		<td>���κ��޿�����</td>
		<td>�����Ѿ�</td>
	</tr>
	<tr>
		<td>${list.get(0).get("SALARYCALC_REPORT") }</td>
		<td>${list.get(0).get("SALARYCALC_NAME") }</td>
		<td><input type="button" onclick="javascript:personalPay(${list.get(0).get('SALARYCALC_NO') })" value="���κ��޿�����"></td>
		<td>${list.get(0).get("SALARYCALC_TOTAL") }</td>
	</tr>
	<tr>
		<td>${list.get(1).get("SALARYCALC_REPORT") }</td>
		<td>${list.get(1).get("SALARYCALC_NAME") }</td>
		<td><input type="button" onclick="javascript:personalPay(${list.get(1).get('SALARYCALC_NO') })" value="���κ��޿�����"></td>
		<td>${list.get(1).get("SALARYCALC_TOTAL") }</td>
	</tr>
</table>

</body>
</html>