<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>급여계산현황 페이지</title>
</head>
<body>
<table>
	<tr>
		<td>신고귀속</td>
		<td>${list.get(0).get("ALLOWANCE_NAME") }</td>
		<td>${list.get(1).get("ALLOWANCE_NAME") }</td>
	</tr>
	<tr>
		<td></td>
		<td>${list.get(0).get("PERSONALPAY_PAY") }</td>
		<td>${list.get(1).get("PERSONALPAY_PAY") }</td>
	</tr>
	<tr>
		<td>총계</td>
		<td></td>
		<td>${list.get(0).get("PERSONALPAY_PAY") + list.get(1).get("PERSONALPAY_PAY")}</td>
	</tr>
</table>
</body>
</html>