<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
$(function(){
	  $("a").click(function(){ 
	  	$("a").removeClass("active"); 
	  	$(this).addClass("active");
	  })
	 })
</script>
</head>
<body>
	<!-- 왼쪽 네비게이션 -->
	<nav class="nav-left">	
		<ul class="bg-primary">
			<li>
				<a data-toggle="collapse" data-target="#group1"
				aria-expanded="false" href="#">조회</a>
				<ul class="collapse in depth2" id="group1">
					<li><a href="../approval/selectDraft">결재 조회</a></li>
					<li><a href="../approval/selectCommon">공통양식조회</a></li>
					<li><a href="../approval/selectApprovalPath">결재라인조회</a></li>
					<li><a href="../approval/approval_gomyapproval.jsp">내 결재 전체 조회</a></li>
				</ul>
			</li>
		</ul>
	</nav>
</body>
</html>