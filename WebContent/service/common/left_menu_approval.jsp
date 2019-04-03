<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../common/ui_common.jsp" %>
</head>
<body>
	<!-- 왼쪽 네비게이션 -->
	<nav class="nav-left">	
		<ul class="bg-primary">
			<li>
				<a class="active" data-toggle="collapse" data-target="#group1"
				aria-expanded="false" href="#">조회</a>
				<ul class="collapse in depth2" id="group1">
					<li><a href="../approval/selectDraft" class="active">기안서조회</a></li>
					<li><a href="../approval/selectCommon">공통양식조회</a></li>
					<li><a href="../approval/selectApprovalPath">결재라인조회</a></li>
					<li><a href="../approval/selectMyApproval">내 결재 전체 조회</a></li>
				</ul>
			</li>
		</ul>
	</nav>
</body>
</html>