<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�����ο���Ȳ ��ȸ ������</title>
</head>
<body>

<table>
	<tr>
		<td>��������</td>
		<td>�Ի�</td>
		<td>���</td>
		<td>���ο�</td>
	</tr>
	<tr>
		<td>${list.get(0).get("MONTHLY_DATE") }</td>
		<td>${list.get(0).get("MONTHLY_JOIN") }</td>
		<td>${list.get(0).get("MONTHLY_LEAVE") }</td>
		<td>${list.get(0).get("MONTHLY_TOTAL") }</td>
	</tr>
</table>

</body>
</html>