<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�޿������Ȳ ������</title>

<script type="text/javascript">

	function personalPay(report){
		location.href = "../pay/personalPay?report="+report;
		
	}

</script>

<%

	List list = (List)request.getAttribute("list");
	HashMap map0 = (HashMap)list.get(0);
	String report0 = (String)map0.get("SALARYCALC_REPORT");

%>

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
		<td><input type="button" onclick="javascript:personalPay('<%= report0 %>')" value="���κ��޿�����"></td>
		<td>${list.get(0).get("SALARYCALC_TOTAL") }</td>
	</tr>
	<tr>
		<td>${list.get(1).get("SALARYCALC_REPORT") }</td>
		<td>${list.get(1).get("SALARYCALC_NAME") }</td>
		<td><input type="button" onclick="javascript:personalPay('${list.get(1).get('SALARYCALC_REPORT') }')" value="���κ��޿�����"></td>
		<td>${list.get(1).get("SALARYCALC_TOTAL") }</td>
	</tr>
</table>

</body>
</html>