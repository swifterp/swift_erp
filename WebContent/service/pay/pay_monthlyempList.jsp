<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>월별인원현황 조회 페이지</title>
</head>
<body>

<table>
	<tr>
		<td>기준일자</td>
		<td>입사</td>
		<td>퇴사</td>
		<td>총인원</td>
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