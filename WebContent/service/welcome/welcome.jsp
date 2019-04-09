<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
<%@ include file="../common/ui_common.jsp" %>
</head>
<body>
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">	
		<div class="contents">	
			Welcome! This is Swift Corporation.<p>
			<a href="../mem/logout">로그아웃</a>
			<h2>${member}님 환영합니다.</h2>
		</div>
	</div>
</body>
</html>