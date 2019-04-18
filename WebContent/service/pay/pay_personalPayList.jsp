<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map, java.util.HashMap, java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>급여계산현황 페이지</title>
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

	<%
		List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
		List<Map<String, String>> deduc = (List<Map<String, String>>)request.getAttribute("deduc");
		int total = 0;
		List<String> empno = new ArrayList<String>();
	%>
<table>
	<%
		big1 : for(int i=0;i<lst.size();i++){
			
			Map<String, String> allowance = new HashMap<String, String>();
			Map<String, String> deduction = new HashMap<String, String>();
			
			for(int j=0;j<empno.size();j++){
				if(empno.get(j).equals(String.valueOf(lst.get(i).get("EMPNO")))){
					continue big1;
				}
			}
	%>
	<tr>
	<td>
		<%= String.valueOf(lst.get(i).get("EMPNO")) %>
	</td>
	</tr>
	<%
			if(lst != null){
				for(int j=0;j<lst.size();j++){
					if(String.valueOf(lst.get(i).get("EMPNO")).equals(String.valueOf(lst.get(j).get("EMPNO")))) {
						allowance.put(String.valueOf(lst.get(j).get("ALLOWANCE_NAME")), "0");
					}
				}
			}

			if(lst != null){
				for(int j=0;j<lst.size();j++){
					if(String.valueOf(lst.get(i).get("EMPNO")).equals(String.valueOf(lst.get(j).get("EMPNO")))) {
						allowance.replace(String.valueOf(lst.get(j).get("ALLOWANCE_NAME")), String.valueOf(Integer.parseInt(allowance.get(String.valueOf(lst.get(j).get("ALLOWANCE_NAME")))) + Integer.parseInt(String.valueOf(lst.get(j).get("PERSONALPAY_PAY")))));
						String tmp = String.valueOf(lst.get(j).get("PERSONALPAY_PAY"));
						total += Integer.parseInt(tmp);
					}
				}
			}
			
			for(int j=0;j<deduc.size();j++){
				if(String.valueOf(lst.get(i).get("EMPNO")).equals(String.valueOf(deduc.get(j).get("EMPNO")))) {
					deduction.put(String.valueOf(deduc.get(j).get("DEDUCTION_NAME")), "0");
				}
			}
			
			for(int j=0;j<deduc.size();j++){
				if(String.valueOf(lst.get(i).get("EMPNO")).equals(String.valueOf(deduc.get(j).get("EMPNO")))) {
					deduction.replace(String.valueOf(deduc.get(j).get("DEDUCTION_NAME")), String.valueOf(Integer.parseInt(deduction.get(String.valueOf(deduc.get(j).get("DEDUCTION_NAME")))) + Integer.parseInt(String.valueOf(deduc.get(j).get("PERSONALDEDUC_DEDUC")))));
					String tmp = String.valueOf(deduc.get(j).get("PERSONALDEDUC_DEDUC"));
					total -= Integer.parseInt(tmp);	
				}
			}
	%>
	<tr>
	<%
			for(int j=0;j<allowance.size();j++){
	%>
				<td><%= allowance.keySet().toArray()[j] %></td>
	<%
			}
	%>
	</tr>
	<tr>
	<%
			for(int j=0;j<allowance.size();j++){
	%>
				<td><%= allowance.get(allowance.keySet().toArray()[j]) %></td>
	<%
			}
	%>
	</tr>
	<tr>
	<%
			for(int j=0;j<deduction.size();j++){
	%>
				<td><%= deduction.keySet().toArray()[j] %></td>
	<%
			}
	%>
	</tr>
	<tr>
	<%
			for(int j=0;j<deduction.size();j++){
	%>
				<td><%= deduction.get(deduction.keySet().toArray()[j]) %></td>
	<%
			}
	%>
	</tr>
	<%		
			empno.add(String.valueOf(lst.get(i).get("EMPNO")));
		}
	%>
	<tr>
		<td colspan="<%= total %>"></td>
		<td><%= total %></td>
	</tr>
</table>
</div></div>
</body>
</html>