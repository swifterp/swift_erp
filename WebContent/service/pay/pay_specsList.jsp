<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ��ȸ ������</title>
</head>
<body>

<table>
	<tr>
		<td>�Ű�ͼ�</td>
		<td>�����ȣ</td>
		<td>�����Ѿ�</td>
	</tr>
	<tr>
		<td>${list.get(0).get("SPECS_REPORT") }</td>
		<td>${list.get(0).get("EMPNO") }</td>
		<td>${list.get(0).get("TOTAL") }</td>
	</tr>
</table>

</body>
</html>