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
		<td>신고귀속</td>
		<td>사원번호</td>
		<td>지급총액</td>
	</tr>
	<tr>
		<td>${list.get(0).get("SPECS_REPORT") }</td>
		<td>${list.get(0).get("EMPNO") }</td>
		<td>${list.get(0).get("TOTAL") }</td>
	</tr>
</table>

</body>
</html>