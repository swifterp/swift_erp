<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.ArrayList, java.util.Map" %>
<%

	List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");

	for(int i=0;i<lst.size();i++){
%>
		<input type="hidden" name="<%= String.valueOf(lst.get(i).get("ALLOWANCE_NO")) %>" value="<%= String.valueOf(lst.get(i).get("ALLOWANCE_NAME")) %>">
		
		<%= lst.get(i).get("ALLOWANCE_NAME") %>:<br>
		<input type="text" name="DAILYWORK_TIME<%= String.valueOf(lst.get(i).get("ALLOWANCE_NO")) %>">
		<br>
<%
	}
%>