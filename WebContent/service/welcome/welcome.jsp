<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.ArrayList, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
<%@ include file="../common/ui_common.jsp" %>
<!-- 메인화면 -->
<script type='text/javascript' src='../../js/jquery.particleground.js'></script>
<script type = "text/javascript" src ="../../js/demo.js"></script>
<link rel="stylesheet" href="../../css/welcome.css">
<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
<script type="text/javascript">
	$(document).ready(function(){
		$("#chat").load("../common/top_menu.jsp")
	});
</script> 
</head>
<body class="welcome">
	<div id="chat"></div>
	<div id="particles">
		 <div id="intro">	
		   <h1>Welcome!<br>This is Swift Corporation.</h1>	  
		  <p>${member.get(0).get("MEM_NAME")}님 환영합니다.</p>	  
		</div>
		<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
	</div>
	
</body>
</html>