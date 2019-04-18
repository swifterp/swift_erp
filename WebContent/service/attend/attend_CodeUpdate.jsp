<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근태 항목 수정</title>
<%@ include file="../common/ui_common.jsp" %>
</head>
<body>
<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">		
		<%@ include file="../common/left_menu_attend.jsp" %>
		<div class="contents">
			<form action="../attend/attend_CodeUpdate">
				<table class="table">
					<tr>
						<th>근태코드</th>
						<td><input type="text" id="attend_code" name="attend_code" value="${list.get(0).get("ATTEND_CODE")}" class="form-control" readonly ></td>
					</tr>
					<tr>
						<th> 근태명 <span class="essential">*</span></th>	
						<td><input type="text" id="attend_name" name="attend_name" value="${list.get(0).get("ATTEND_NAME")}" class="form-control" required=""></td>
					</tr>
					<tr>
						<th>근태코드상태</th>
						<td>
						<%
							List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
							if(lst.get(0).get("ATTEND_CODE_STATE").equals("사용")){
						%>
							<select id="attend_code_state" name="attend_code_state" class="form-control">
						 		<option value="사용">사용</option>
						  		<option value="중지">중지</option>
						    </select>
						<%
						}
							else if(lst.get(0).get("ATTEND_CODE_STATE").equals("중지")){
						%>
						  <select id="attend_code_state" name="attend_code_state" class="form-control">
						  		<option value="중지">중지</option>
						  		<option value="사용">사용</option>
						  </select>
			    		<%
							}
						%>
						</td>
					</tr>
					<tr>
						<th>비고</th>
						<td><input type="text" id="attend_c_etc" name="attend_c_etc" value="${list.get(0).get("ATTEND_C_ETC")}" class="form-control"></td>
					</tr>
				</table>
				<a class="btn btn-default pull-left" href="../attend/attend_CodeList">목록</a>
				<input type="submit" value="확인" class="btn btn-primary pull-right">
			</form>
		</div>
	</div>
</body>
</html>