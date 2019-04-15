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
	  	$(this).addClass("active"); // 
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
				aria-expanded="false" href="#">기본사항관리</a>
				<ul class="collapse in depth2" id="group1">
					<li><a class="lmenu_1" href="../attend/attend_CodeList">근태항목관리</a></li>
					<li><a class="lmenu_2" href="../attend/attend_DataList">근태관리</a></li>
				</ul>
			</li>
			<li>
				<a data-toggle="collapse" data-target="#group2"
				aria-expanded="false" href="#">출력물</a>
				<ul class="collapse depth2" id="group2">
					<li><a href="#">근태현황</a></li>
					<li><a href="#">근태집계표</a></li>
					<li><a href="#">휴가잔여일수현황</a></li>
					<li><a href="#">휴가사용일현황</a></li>
				</ul>
			</li>
		</ul>
	</nav>	
</html>