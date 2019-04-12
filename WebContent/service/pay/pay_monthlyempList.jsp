<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월별인원현황 조회 페이지</title>
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<script type = "text/javascript" src ="../../js/jquery.min.js"></script>
<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
</head>
<body>
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">
		<%@ include file="../common/left_menu_pay.jsp" %>
		<div class="contents">
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
</div></div>
</body>
</html>