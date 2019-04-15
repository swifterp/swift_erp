<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.ArrayList, java.util.Map" %>
<%	List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list"); %>
<%
	for(int i=0;i<lst.size();i++){
%>
		<input type="button" value="<%= String.valueOf(lst.get(i).get("CHATROOM_NAME")) %>" onclick="createRoom('<%= String.valueOf(lst.get(i).get("CHATROOM_CODE")) %>')">
		<br>
<%
	}
%>