<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<script type = "text/javascript" src ="../../js/jquery-3.3.1.js"></script>
<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>Insert title here</title>
<script>
	$(document).ready(function(){
		var textareaVal = $("textarea[name=txtarea]").text();
		 console.log(textareaVal);
		 $("textarea[name=txtarea]").text("값을 변경합니다.");
	});
</script>
<script>
	$('.click').click(function(){
		alert($(this).attr('value'));
		
	});

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
				<li><a href="../pay/Allowance_Item.jsp">급여관리</a></li>			
				<li><a href="../attend/Attend_Item_Manage.jsp">근태관리</a></li>
				<li><a href="#">결재관리</a></li>
				<li><a href="../work/Work_taskUpdate.jsp">업무관리</a></li>
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
				<a href="Prospect_write.jsp">기안서 작성</a>
				<a href="My_Progress.jsp">내 결재관리</a>
				<a class="active" href="#">기안서 통합관리</a>
				<li>
					<a data-toggle="collapse"
					   data-target="#group1" aria-expanded="false" href="Payment_line.jsp">기초자료등록</a>
					<ul class="collapse depth2" id="group3">
						<li><a href="Payment_line.jsp ">결재라인등록</a></li>
						<li><a href="Common_form.jsp ">공통양식등록</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</div>
	<div class="contents" style="width: 1000px">
		<form role="form">
			<div class="form-group" style="text-align: left;">
				<a style="width: 10%" class="btn btn-primary click" href="#">전체 </a>
				<a style="width: 10%" class="btn btn-default click" href="Integrated_Prospect.jsp">기안중</a>
				<a style="width: 10%" class="btn btn-default click" href="Integrated_Progress.jsp">진행중</a>
				<a style="width: 10%" class="btn btn-default click" href="Integrated_Return.jsp">반려 </a>
				<a style="width: 10%" class="btn btn-default click" href="Integrated_Approval.jsp">결재 </a>
				<a style="width: 10%" class="btn btn-default click" href="Integrated_Delete.jsp">삭제 </a>
			</div>
		</form>
		<div>
		</div>
		<p/>
		<table class="table">
			<thead>
				<tr id="info">
					<td>
						<input type="checkbox" id="jb-checkbox2" class="custom-control-input"
							   style="vertical-align: middle; margin: 0px">
					</td>
					<td class="setText">기안일자 ▼
					</td>
					<td>제목
					</td>
					<td>구분
					</td>
					<td>기안자
					</td>
					<td>결재자
					</td>
					<td>진행상태
					</td>
					<td>결재
					</td>
					<td>기안서복사
					</td>
					<td>조회
					</td>
					<td>연결전표
					</td>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
	</div>
</body>
</html>