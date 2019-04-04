<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근태코드상세조회</title>
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
						<td>근태코드</td>
						<td>근태명</td>
						<td>근태코드상태</td>
						<td>비고</td>
						<td>    </td>
						<td>    </td>
					</tr>
				</thead>	
				<tbody>
			   <%
			      List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
			   
			      if(lst != null){
			         for(int i=0;i<lst.size();i++){
			   %>
			            <tr>
			               <td><%= String.valueOf(lst.get(i).get("ATTEND_CODE")) %> </td>
			               <td><%= lst.get(i).get("ATTEND_NAME") %> </td>
			               <td><%= lst.get(i).get("ATTEND_CODE_STATE") %> </td>
			               <td><%= lst.get(i).get("ATTEND_C_ETC") %> </td>
			               <td> 
			               <form action="../attend/attend_CodeDelete">
			               <input type="hidden" id="attend_code" name="attend_code" value="<%= String.valueOf(lst.get(i).get("ATTEND_CODE")) %>">
			               <input type="submit" value="삭제">
			               </form>
			               </td><td>
			               <form action="../attend/attend_CodeLow">
			               <input type="hidden" id="attend_code" name="attend_code" value="<%= String.valueOf(lst.get(i).get("ATTEND_CODE")) %>">
			               <input type="submit" value="수정">
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