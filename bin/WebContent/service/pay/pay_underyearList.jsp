<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>명세서 조회 페이지</title>
</head>
<body>

<table>
	<tr>
		<td>1월</td>
		<td>2월</td>
		<td>3월</td>
	</tr>
	<tr>
		<td>${list.get(0).get("JAN") }</td>
		<td>${list.get(0).get("FEB") }</td>
		<td>${list.get(0).get("MAR") }</td>
	</tr>
</table>

</body>
</html>