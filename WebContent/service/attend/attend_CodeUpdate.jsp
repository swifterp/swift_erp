<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근태 코드 수정</title>
</head>
<body>

	<form action="../attend/attend_CodeUpdate">
		근태코드 : <input type="text" id="attend_code" name="attend_code" value="${list.get(0).get("ATTEND_CODE")}"><br><br>
		근태명 : <input type="text" id="attend_name" name="attend_name" value="${list.get(0).get("ATTEND_NAME")}"><br><br>
		<%
			List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
			if(lst.get(0).get("ATTEND_CODE_STATE").equals("사용")){
		%>
		근태코드상태 : <select id="attend_code_state" name="attend_code_state">
				  <option value="사용">사용</option>
				  <option value="중지">중지</option>
				  </select><br><br>
		<%
			}
			else if(lst.get(0).get("ATTEND_CODE_STATE").equals("중지")){
		%>
		근태코드상태 : <select id="attend_code_state" name="attend_code_state">
				  <option value="중지">중지</option>
				  <option value="사용">사용</option>
				  </select><br><br>
	    <%
			}
		%>
		비고 : <input type="text" id="attend_c_etc" name="attend_c_etc" value="${list.get(0).get("ATTEND_C_ETC")}"><br><br>
		<input type="submit" value="확인">
	</form>

</body>
</html>