<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>명세서 조회 페이지</title>
<%@ include file="../common/ui_common.jsp" %>
</head>
<body>
<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
	<script type="text/javascript">
	$(document).ready(function(){
		$("#chat").load("../common/top_menu.jsp")
	});
	</script>
	<div id="chat"></div>
	<div class="container">
		<%@ include file="../common/left_menu_pay.jsp" %>
		<div class="contents">
<table>
	<tr>
		<td>신고귀속</td>
		<td>사원번호</td>
		<td>지급총액</td>
	</tr>
	<tr>
		<td>${list.get(0).get("SPECS_REPORT") }</td>
		<td>${list.get(0).get("EMPNO") }</td>
		<td>${list.get(0).get("TOTAL") }</td>
	</tr>
</table>
</div></div>
</body>
</html>