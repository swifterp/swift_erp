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
				aria-expanded="false" href="#">기본사항등록</a>
				<ul class="collapse in depth2" id="group1">
					<li><a href="../emp/read">인사카드등록</a></li>
					<li><a href="../emp/appointRead">인사발령등록</a></li>
					<li><a href="../emp/deptRead">부서등록</a></li>
					<li><a href="../emp/emp_etcCodeAdd.jsp">기타코드등록</a></li>
				</ul>
			</li>
			<li>
				<a data-toggle="collapse" data-target="#group2"
				aria-expanded="false" href="#">조회/인쇄</a>
				<ul class="collapse depth2" id="group2">
					<li><a href="#">각종증명서인쇄</a></li>
					<li><a href="#">사원명부</a></li>
					<li><a href="../emp/emp_chart.jsp">인사관련 통계</a></li>
				</ul>
			</li>
		</ul>
	</nav>
</body>
</html>