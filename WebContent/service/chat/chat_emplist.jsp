<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.ArrayList, java.util.Map" %>
<style>
   a.roomlist {background:url('../../images/img_chatroom.png') no-repeat 0 10px #FFF; padding:10px 0 10px 30px; display:block;}
</style>
<style>
   .btnset {width: 100%;}
</style>
<style>
   .color {color: #4BACC6}
</style>
<p style="background:url(../../images/img_chat_title.png) no-repeat 0 4px; padding:5px 0px 5px 28px; font-size:15px; margin-bottom: 0px;">사용자 목록</p>
<p>대화방에<span class="color">초대할 멤버</span>를 선택하세요</p>
<div class="input-group">
   <input type="text" id="searchEmpText" class="form-control" placeholder="멤버 및 팀명">
   <span class="input-group-btn" style="width:34px; margin-bottom: 0px">
      <button type="button" onclick="searchEmp()" class="btn btn-default" style="margin-bottom:10px;">검색</button>
   </span>
</div>
<%   List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list"); %>
<div id="checkdiv" style="background-color:white; padding:10px; height:100px; overflow-y:scroll;">
<%
   for(int i=0;i<lst.size();i++){
%>
   <div>
   <input type="checkbox" id="checkbox<%= String.valueOf(lst.get(i).get("EMPNO")) %>" >
   <input type="text" id="checkteam<%= String.valueOf(lst.get(i).get("EMPNO")) %>" style="width:50px; background-color: #cfffff; border: 0 solid black; border-radius: 6px;">
   <input type="text" id="checktext<%= String.valueOf(lst.get(i).get("EMPNO")) %>" value="<%= String.valueOf(lst.get(i).get("EMP_NAME")) %>" style="border:none; background:none; width: 100px;">
   </div>
<%
   }
%>
</div>
&nbsp;
<p style="background:url(../../images/img_chat_title.png) no-repeat 0 4px; padding:5px 0px 5px 28px; font-size:15px; margin-bottom: 0px">채팅방 제목</p>
<input type="text" id="chatroom_name_text" class="form-control">
<input type="button" id="ccb" value="대화방만들기" class="btn btnset btn-outline-info" onclick="createChat()">