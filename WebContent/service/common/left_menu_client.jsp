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
				<a href="../client/selectClientInfo">거래처정보관리</a>
			</li>
			<li>
				<a href="../client/selectNameCardInfo">명함관리</a>
			</li>
		</ul>
	</nav>
</body>
</html>