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
				<a href="../work/selectBusinessLog">업무일지조회</a>
			</li>
			<li>
				<a href="../work/work_monthwork.jsp">월별출퇴근기록</a>
			</li>
			<li>
				<a href="../work/selectWorkState">출퇴근현황</a>
			</li>
			<li>
				<a href="../work/work_worktime.jsp">일별근무시간조회</a>
			</li>
			<li>
				<a href="../work/selectWorkEtc">출퇴근/근태/일정 조회</a>
			</li>
		</ul>
	</nav>
</body>
</html>