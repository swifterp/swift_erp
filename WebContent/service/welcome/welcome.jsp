<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
<%@ include file="../common/ui_common.jsp" %>
<style>
body {background:url('../../images/bg_main2.jpg') no-repeat 0 0 #FFF;}
</style>
</head>
<body>
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">	
		<div class="contents">	
			<p style="color:white">Welcome! This is Swift Corporation.</p>
			<h2 style="color"white">${member}님 환영합니다.</h2>
		</div>
	</div>
</body>
</html>