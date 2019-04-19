<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.ArrayList, java.util.Map" %>
<p style="background:url(../../images/img_chat_title.png) no-repeat 0 4px; padding:5px 0px 5px 28px; font-size:15px; margin-bottom: 0px; text-align:left;">참여자 목록</p>
<%	List<Map<String, String>> participent = (List<Map<String, String>>)request.getAttribute("participent"); %>
	<div id="participentList">
<%
	for(int i=0;i<participent.size();i++){
%>
		<input type="text" value="<%= String.valueOf(participent.get(i).get("EMP_NAME")) %>" readonly style="border:none;"><br>
<%
	}
%>
	</div>