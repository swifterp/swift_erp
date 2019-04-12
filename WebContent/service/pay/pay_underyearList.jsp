<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>명세서 조회 페이지</title>
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
</div></div>
</body>
</html>