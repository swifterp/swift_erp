<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월별인원현황 페이지</title>
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
<form action="../../pay/monthlyemp">
기준일자(년):<br>
<input type="text" name="year">
<br>

기준일자(월):<br>
<input type="text" name="month">
<br>

<br>
<input type="submit" value="Submit">
</form> 
</div></div>
</body>
</html>