<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근태내역상세조회</title>
<%@ include file="../common/ui_common.jsp" %>
</head>
<body>
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">
		<%@ include file="../common/left_menu_attend.jsp" %>	
		<div class="contents">
			<table style="border:1px solid #ccc; text-align:center;">
				<thead>
					<tr>
						<td>NO</td>
						<td>근태날짜</td>
						<td>근무시간</td>
						<td>근태코드</td>
						<td>출근시간</td>	
						<td>퇴근시간</td>	
						<td>비고</td>	
						<td>수정</td>
						<td>삭제</td>
					</tr>
				</thead>	
				<tbody>
			   <%
			      List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
			   
			      if(lst != null){
			         for(int i=0;i<lst.size();i++){
			   %>
			            <tr>
			               <td><%= String.valueOf(lst.get(i).get("ROWNUM")) %> </td>
			               <td><%= String.valueOf(lst.get(i).get("ATTEND_DATE")) %> </td>
			               <td><%= String.valueOf(lst.get(i).get("ATTEND_TIME")) %> </td>
			               <td><%= lst.get(i).get("ATTEND_NAME") %> </td>
			               <td><%= lst.get(i).get("ATTEND_OPEN") %> </td>
			               <td><%= lst.get(i).get("ATTEND_CLOSE") %> </td>
			               <td><%= lst.get(i).get("ATTEND_M_ETC") %> </td>
			               <td>
			               <form action="../attend/attend_DataListLow">
			               <input type="hidden" id="attendno" name="attendno" value="<%= String.valueOf(lst.get(i).get("ATTEND_NO")) %>">
			               <input type="submit" value="수정">
			               </form>
			               </td>
			               <td> 
			               <form action="../attend/attend_DataDelete">
			               <input type="hidden" id="attend_no" name="attend_no" value="<%= String.valueOf(lst.get(i).get("ATTEND_NO")) %>">
			               <input type="submit" value="삭제">
			               </form>
			               </td>
			            </tr>
			   <%
			         }
			      }
			    %>
			    </tbody>
			</table>
		</div>
	</div>
</body>
</html>