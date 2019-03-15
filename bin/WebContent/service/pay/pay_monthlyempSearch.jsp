<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>월별인원현황 페이지</title>
</head>
<body>

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

</body>
</html>