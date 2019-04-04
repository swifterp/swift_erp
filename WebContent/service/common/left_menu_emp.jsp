<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
$(function(){
	  var depth2 = $(".depth2>li");    // .depth2> li 이를 depth2으로 칭한다. (클릭이벤트는 li에 적용 된다.)
	  $(".lmenu").click(function(){   // depth2에 속해 있는  a 찾아 클릭 하면.
	   $(".lmenu").removeClass("active");     // depth2 속에 (active) 클래스를 삭제 한다.
	   $(this).addClass("active"); // 클릭한 a에 (active)클래스를 넣는다.
	  })
	 })
</script>

<script type="text/javascript">
	$(document).ready(function(){
		$(".contents").load("../emp/read");	
		$(".lmenu_1").click(function () {
			$(".contents").load("../emp/read");	
		});
		$(".lmenu_2").click(function () {
			$(".contents").load("../emp/appointRead");	
		});
		$(".lmenu_3").click(function () {
			$(".contents").load("../emp/deptRead");	
		});
		$(".lmenu_4").click(function () {
			$(".contents").load("../emp/emp_etcCodeAdd.jsp");	
		});
	});
</script>
</head>
<body>
	<!-- 왼쪽 네비게이션 -->
	<nav class="nav-left">	
		<ul class="bg-primary">
			<li>
				<a class="active" data-toggle="collapse" data-target="#group1"
				aria-expanded="false" href="#">기본사항등록</a>
				<ul class="collapse in depth2" id="group1">
					<li><a class="lmenu lmenu_1 active" href="#">인사카드등록</a></li>
					<li><a class="lmenu lmenu_2" href="#">인사발령등록</a></li>
					<li><a class="lmenu lmenu_3" href="#">부서등록</a></li>
					<li><a class="lmenu lmenu_4" href="#">기타코드등록</a></li>
				</ul>
			</li>
			<li>
				<a data-toggle="collapse" data-target="#group2"
				aria-expanded="false" href="#">조회/인쇄</a>
				<ul class="collapse depth2" id="group2">
					<li><a href="#">각종증명서인쇄</a></li>
					<li><a href="#">사원명부</a></li>
				</ul>
			</li>
		</ul>
	</nav>
	<div class="contents">	
	</div>
</body>
</html>