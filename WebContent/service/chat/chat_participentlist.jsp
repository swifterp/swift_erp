<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.ArrayList, java.util.Map" %>
<%	List<Map<String, String>> participent = (List<Map<String, String>>)request.getAttribute("participent"); %>
	<div id="participentList">
<%
	for(int i=0;i<participent.size();i++){
%>
		<input type="text" value="<%= String.valueOf(participent.get(i).get("EMP_NAME")) %>" readonly><br>
<%
	}
%>
	</div>