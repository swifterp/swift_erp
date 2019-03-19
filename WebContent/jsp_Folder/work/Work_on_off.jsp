<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<script type = "text/javascript" src ="../../js/jquery.min.js"></script>
<script type = "text/javascript" src ="../../js/jquery-3.3.1.js"></script>
<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<style type="text/css">
table {
	width: 100%;
	border: 1px solid #444444;
	border-collapse: collapse;
	border-color: black;
}
td {
	 width: 60px;
	 height: 60px;
	 text-align: center;
	 font-size: 20px;
	 border:2px solid #444444;
	 border-radius:8px;
}
</style>

<style>
#calendar {
	max-width: 900px;
	margin: 0 auto;
}
</style>


<title>SWIFT ERP</title>

<script language="javascript" type="text/javascript">
	var today = new Date(); // 오늘 날짜//지신의 컴퓨터를 기준으로
	//today 에 Date객체를 넣어줌 //ex)5일  
	function prevCalendar() {
		today = new Date(today.getFullYear(), today.getMonth() - 1, today
				.getDate());
		buildCalendar(); // 현재 달 
	}

	function nextCalendar() {
		today = new Date(today.getFullYear(), today.getMonth() + 1, today
				.getDate());
		buildCalendar();
	}

	function buildCalendar() {// 현재 달fur
		var nMonth = new Date(today.getFullYear(), today.getMonth(), 1); // 이번 달의 첫째 날
		var lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0); // 이번 달의 마지막 날
		var tblCalendar = document.getElementById("calendar"); // 테이블 달력을 만들 테이블
		var tblCalendarYM = document.getElementById("calendarYM"); // yyyy년 m월 출력할 곳
		tblCalendarYM.innerHTML = today.getFullYear() + "년 "
				+ (today.getMonth() + 1) + "월"; // yyyy년 m월 출력
		// 기존 테이블에 뿌려진 줄, 칸 삭제

		while (tblCalendar.rows.length > 2) {
			tblCalendar.deleteRow(tblCalendar.rows.length - 1);
		}
		var row = null;
		row = tblCalendar.insertRow();
		var cnt = 0;
		// 1일이 시작되는 칸을 맞추어 줌
		for (i = 0; i < nMonth.getDay(); i++) {
			cell = row.insertCell();
			cnt = cnt + 1;
		}

		for (i = 1; i <= lastDate.getDate(); i++) {
			cell = row.insertCell();
			cell.innerHTML = i;
			cnt = cnt + 1;
			if (cnt % 7 == 0)// 1주일이 7일 이므로
				row = calendar.insertRow();// 줄 추가
		}
		function onClick() {
			for
		}		
	}
</script>

</head>
<body>
	<!-- 네비게이션 -->
	<nav class="navbar navbar-default" style="z-index: 1">
		<!-- 네비게이션 헤더-->
		<div class="navbar-header">
			<!-- 네비게이션 오른쪽 헤더-->
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<!-- 네비게이션 왼쪽 헤더(로고) -->
			<a class="navbar-brand" href="../welcome/welcome.jsp">
			<img class="logo" src="../../images/logo.png"></a>
		</div>
		
		<!-- 네비게이션 본메뉴 -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<!-- 네비게이션 본메뉴 엘리먼트 -->
			<ul class="nav navbar-nav">
				<li><a href="../emp/Emp_memList.jsp">인사관리</a></li>
				<li><a href="../Pay/Pay.jsp">급여관리</a></li>		
				<li><a href="../attend/Attend_Item_Manage.jsp">근태관리</a></li>
				<li><a href="../approval/Approval.jsp">결재관리</a></li>
				<li><a href="#">업무관리</a></li>
				<li><a href="../customer/Customer_List.jsp">고객관리</a></li>
			</ul>
			<!-- 드롭다운 기능 -->
			<ul class="nav navbar-nav navbar-right">
				<!-- 드롭다운 -->
				<li class="dropdown">
					<!-- 누르기전 이미지 --> <a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원관리<span class="caret"></span>
				</a> <!-- 눌렀을때 이미지 -->
					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그아웃</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<!-- 왼쪽 네비게이션 -->
		<nav class="nav-left">
			<ul class="bg-primary">
				<li><a data-toggle="collapse" data-target="#group1"
					aria-expanded="false" href="Work_task.jsp">업무일지</a>
					<ul class="collapse depth2" id="group1">
						<li><a href="Work_taskUpdate.jsp">업무일지 작성</a></li>
						<li><a href="Work_task.jsp">업무일지 조회</a></li>
					</ul></li>
				<li><a class="active" data-toggle="collapse"
					data-target="#group2" aria-expanded="false" href="#">출/퇴근</a>
					<ul class="collapse in depth2" id="group2">
						<li><a class="active" href="#">출/퇴근 기록부</a></li>
						<li><a href="Work_Search.jsp">출/퇴근현황 조회</a></li>
						<li><a href="Work_time.jsp">근무시간 조회</a></li>
						<li><a href="Work_All_Search.jsp">출퇴근/근태/일정 조회</a></li>
					</ul></li>
			</ul>
		</nav>
		<div class="contents">
			<a class="btn btn-primary" href="#">출/퇴근 기록부</a> <a
				class="btn btn-default" href="Work_write.jsp">출/퇴근 작성</a>
			<p />
		</div>
	</div>
	<!-- 본문내용 -->
	<div onclick="">
		<table id="calendar" boarder="3" align="center">
			<tr>
				<td><label onclick="prevCalendar()"><<</label></td>
				<td colspan="5" align="center" id="calendarYM">yyyy년 m월</td>
				<td><label onclick="nextCalendar()">>></label></td>
			</tr>
			<tr>
				<td align="center">일</td>
				<td align="center">월</td>
				<td align="center">화</td>
				<td align="center">수</td>
				<td align="center">목</td>
				<td align="center">금</td>
				<td align="center">토</td>
			</tr>
		</table>
		<script language="javascript" type="text/javascript">
			buildCalendar();
		</script>
	</div>
</body>
</html>