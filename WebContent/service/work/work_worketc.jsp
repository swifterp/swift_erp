<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출퇴근/근태/일정 조회</title>
<%@ include file="../common/ui_common.jsp" %>
</head>
<body>
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">
		<%@ include file="../common/left_menu_work.jsp" %>
		<div class="contents">
			${list.get(0) }
			${list.get(1) }
			${list.get(2) }
		</div>
	</div>
</body>
</html>