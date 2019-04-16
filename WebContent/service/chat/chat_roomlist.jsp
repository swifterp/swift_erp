<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.ArrayList, java.util.Map" %>
<style>
	a.roomlist {background:url('../../images/img_chatroom.png') no-repeat 0 10px #FFF; padding:10px 0 10px 30px; display:block;}
</style>
<p style="background:url(../../images/img_chat_title.png) no-repeat 0 4px; padding:5px 0px 5px 28px; font-size:15px;">채팅방 목록</p>
<%	List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list"); %>
<div style="background-color:white; padding:10px; height:300px; overflow-y:scroll;">
<%
	for(int i=0;i<lst.size();i++){
%>
		<a onclick="createRoom('<%= String.valueOf(lst.get(i).get("CHATROOM_CODE")) %>')"><%= String.valueOf(lst.get(i).get("CHATROOM_NAME")) %></a>
<%
	}
%>
</div>