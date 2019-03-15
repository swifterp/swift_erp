<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>일별근무기록 등록 페이지</title>
</head>
<body>

<form action="../../pay/dailyworkInsert">
기준일자(년):<br>
<input type="text" name="year">
<br>

기준일자(월):<br>
<input type="text" name="month">
<br>

기준일자(일):<br>
<input type="text" name="day">
<br>

사원번호:<br>
<input type="text" name="empno">
<br>

야근수당 시간:<br>
<input type="text" name="night">
<br>

주말근무수당 시간:<br>
<input type="text" name="weekend">
<br>

연차수당 일수:<br>
<input type="text" name="annualAllowance">
<br>

<br>
<input type="submit" value="등록">
</form> 

</body>
</html>