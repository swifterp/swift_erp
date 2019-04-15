<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.ArrayList, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근무기록확정현황 페이지</title>
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<script type = "text/javascript" src ="../../js/jquery.min.js"></script>
<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
</head>
<body>
<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
	<script type="text/javascript">
	$(document).ready(function(){
		$("#chat").load("../common/top_menu.jsp")
	});
	</script>
	<div id="chat"></div>
	<div class="container">
		<%@ include file="../common/left_menu_pay.jsp" %>
		<div class="contents">
<form action="../pay/insertworkconfirm">
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

<br>
<input type="submit" value="등록">
</form>
<br>
<br>

	<%
		List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
		List<String> empno = new ArrayList<String>();
		List<String> workdate = new ArrayList<String>();
		
	%>
<table>
	<%
		big1 : for(int i=0;i<lst.size();i++){
			
			for(int j=0;j<empno.size();j++){
				if(empno.get(j).equals(String.valueOf(lst.get(i).get("EMPNO")))){
					if(lst.get(i).get("DAILYWORK_DATE").equals(workdate.get(j))){
						continue big1;
					}
				}
			}
	%>
	<tr>
	<td>
		<%= lst.get(i).get("DAILYWORK_DATE") %>
	</td>
	<td>
		<%= String.valueOf(lst.get(i).get("EMPNO")) %>
	</td>
	</tr>
	<tr>
	<%
			if(lst != null){
				for(int j=0;j<lst.size();j++){
					if(String.valueOf(lst.get(i).get("EMPNO")).equals(String.valueOf(lst.get(j).get("EMPNO")))) {
						if(lst.get(i).get("DAILYWORK_DATE").equals(lst.get(j).get("DAILYWORK_DATE"))){
	%>
						<td><%= lst.get(j).get("ALLOWANCE_NAME") %></td>					
	<%
						}
					}
				}
			}
	%>
	
	</tr>
	<tr>
	<%
			if(lst != null){
				for(int j=0;j<lst.size();j++){
					if(String.valueOf(lst.get(i).get("EMPNO")).equals(String.valueOf(lst.get(j).get("EMPNO")))) {
						if(lst.get(i).get("DAILYWORK_DATE").equals(lst.get(j).get("DAILYWORK_DATE"))){
	%>
						<td><%= String.valueOf(lst.get(j).get("DAILYWORK_TIME")) %></td>
	<%
						}
					}
				}
			}
	%>
	</tr>
	<%
			empno.add(String.valueOf(lst.get(i).get("EMPNO")));
			workdate.add(lst.get(i).get("DAILYWORK_DATE"));
		}
	%>
</table>
</div></div>
</body>
</html>