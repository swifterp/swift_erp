<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
<%@ include file="../common/ui_common.jsp" %>
<link rel="stylesheet" href="../../css/style.css">
<script type='text/javascript' src='../../js/jquery.particleground.js'></script>
<script type = "text/javascript" src ="../../js/demo.js"></script>
</head>
<body>
	<%@ include file="../common/top_menu.jsp" %>
	<div id="particles">
		 <div id="intro">	
		   <h1>Welcome!<br>This is Swift Corporation.</h1>	  
		  <p>${member}님 환영합니다.</p>	  
		</div>
		
	</div>
</body>
</html>