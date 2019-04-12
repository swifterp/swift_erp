<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.ArrayList, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일별근무기록 등록 페이지</title>
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<script type = "text/javascript" src ="../../js/jquery.min.js"></script>
<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
<%

	List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");

%>
</head>
<body>

<form action="../pay/dailyworkInsert">
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
<%
	for(int i=0;i<lst.size();i++){
%>
		<input type="hidden" name="<%= String.valueOf(lst.get(i).get("ALLOWANCE_NO")) %>" value="<%= String.valueOf(lst.get(i).get("ALLOWANCE_NAME")) %>">
		
		<%= lst.get(i).get("ALLOWANCE_NAME") %>:<br>
		<input type="text" name="DAILYWORK_TIME<%= String.valueOf(lst.get(i).get("ALLOWANCE_NO")) %>">
		<br>
<%
	}
%>
<br>
<input type="submit" value="등록">
</form> 

</body>
</html>