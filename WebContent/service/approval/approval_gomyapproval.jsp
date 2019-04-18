<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import = "java.util.List,java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title></title>
<script>
window.onload=function() {
	location.href ="./selectMyApproval?EMPNO="+ document.getElementById("hidempno").name;
};   

</script>

</head>
<body>
<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
<!-- <input type="button" onclick="javascript:goapproval()" value="내결재조회"> -->


</body>
</html>