<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.ArrayList, java.util.Map" %>
<%	List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("log"); %>
<%
	for(int i=0;i<lst.size();i++){
		out.print(String.valueOf(lst.get(i).get("EMPNO")) + " : " + String.valueOf(lst.get(i).get("MSG")) + "(" + String.valueOf(lst.get(i).get("LOG_TIME")) + ")" +"\n");
	}
%>