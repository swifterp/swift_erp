<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.List,java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결재하기</title>
<%@ include file="../common/ui_common.jsp" %>

<script>
function goUpdateReturn(draft_code){
	location.href="./updateDraftState?draft_code="+draft_code + "&state=0&empno="+document.getElementById("hidempno").name;
}
function goUpdateAccept(draft_code){
	location.href="./updateDraftState?draft_code="+draft_code + "&state=1&empno="+document.getElementById("hidempno").name;
}


</script>
</head>
<body>
<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); 
	String draft_code = request.getParameter("draft_code"); 
%>
<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">		
		<%@ include file="../common/left_menu_approval.jsp" %>
		<div class="contents">
			<div id="draft">
		<%
			String draft = String.valueOf(request.getAttribute("list"));
		%>
			
		<%
			out.print(draft);
		%>
		</div>
		<div id="update">
			<input type="button" value="반려" onclick="javascript:goUpdateReturn(<%=draft_code%>) " class="btn btn-outline-primary"">
			<input type="button" value="결재" onclick="javascript:goUpdateAccept(<%=draft_code%>)" class="btn btn-outline-primary" style="margin-left:20px;">
		
		</div>
			
		
		
		
		</div>
	</div>

</body>
</html>