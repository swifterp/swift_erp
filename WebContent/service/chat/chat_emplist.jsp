<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.ArrayList, java.util.Map" %>
<%	List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list"); %>
	<div id="checkdiv">
<%
	for(int i=0;i<lst.size();i++){
%>
		<input type="checkbox" id="checkbox<%= String.valueOf(lst.get(i).get("EMPNO")) %>" >
		<input type="text" id="checktext<%= String.valueOf(lst.get(i).get("EMPNO")) %>" value="<%= String.valueOf(lst.get(i).get("EMP_NAME")) %>">
		<br>
<%
	}
%>
	</div>
	<input type="text" id="chatroom_name_text">
	<br>
	<input type="button" id="ccb" value="대화방만들기" onclick="createChat()">
