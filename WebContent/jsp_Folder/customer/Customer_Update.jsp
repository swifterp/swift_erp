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
<script>
	$(function() {
		$("#datepicker").datepicker(
				{
					showOn : "both",
					buttonImage : "../../images/btn_calendar2.png",
					buttonImageOnly : true,
					dateFormat : "yy/mm/dd",
					changeMonth : true,
					dayNames : [ '월요일', '화요일', '수요일', '목요일', '금요일', '토요일',
							'일요일' ],
					dayNamesMin : [ '월', '화', '수', '목', '금', '토', '일' ],
					monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7', '8',
							'9', '10', '11', '12' ],
					monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
							'8월', '9월', '10월', '11월', '12월' ]
				});
	});
</script>
<title>SWIFT ERP</title>
</head>
<body>
	<!-- 네비게이션 -->
	<nav class="navbar navbar-default">
		<!-- 네비게이션 헤더-->
		<div class="navbar-header">
			<!-- 네비게이션 오른쪽 헤더-->
			<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			aria-expanded="false">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
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
				<li><a href="../work/Work_taskUpdate.jsp">업무관리</a></li>
				<li><a href="#">고객관리</a></li>
			</ul>
			<!-- 드롭다운 기능 -->
			<ul class="nav navbar-nav navbar-right">
				<!-- 드롭다운 -->
				<li class="dropdown">
					<!-- 누르기전 이미지 -->
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button"
						aria-haspopup="true"
						aria-expanded="false">회원관리<span class="caret"></span>
					</a>
					<!-- 눌렀을때 이미지 -->
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
				<ul id="group1">
						<a class="active" href="#">거래처정보관리</a>
						<a  href="Name_Card_List.jsp">명함관리</a>
				</ul>
			</ul>	
		</nav>
		<div class="contents">
			<a class="btn btn-default" href="Customer_List.jsp" >거래처 리스트</a>
			<a class="btn btn-primary" href="#" >거래처 등록</a>
			<p></p> 
			<table class="table table-striped" style="margin: auto; text-align: left;">
				<thead>
				</thead>
				<tbody>
					<tr>
						<td style="width:120px; vertical-align: middle;">잠재 거래처코드</td>
						<td><input type="text" class="form-control input-sm"
							 	  style="width:40%; height: 50%; display: inline-block"></td>
						<td style="width:80px; vertical-align: middle;">업체구분</td>
						<td>
							<div class="input-group" style="width: 80%">
								<select class="custom-select" id="WorkOnOffTime">
									<option value="Line_Splitting">
									===============</option>
								</select>
								<input type="button" class="btn btn-link btn-sm"
									   style="height: 50%" value="추가">
							</div>
						</td>
					</tr>
					<tr>
						<td style="vertical-align: middle;">잠재 거래처 명</td>
						<td><input type="text" class="form-control input-sm"
							 	  style="width:80%; height: 50%; display: inline-block"></td>
						<td style="vertical-align: middle;">전화</td>
						<td><input type="text" class="form-control input-sm"
							   style="width:80%; height: 50%; display: inline-block"></td>
					</tr>
					<tr>
						<td style="vertical-align: middle;">모바일</td>
						<td><input type="text" class="form-control input-sm"
							   style="width:80%; height: 50%; display: inline-block"></td>
						<td style="vertical-align: middle;">Fax</td>
						<td><input type="text" class="form-control input-sm"
							   style="width:80%; height: 50%; display: inline-block"></td>
					</tr>
					<tr>
						<td style="vertical-align: middle;">Email</td>
						<td><input type="text" class="form-control input-sm"
							   style="width:80%; height: 50%; display: inline-block"></td>
						<td style="vertical-align: middle;">홈페이지</td>
						<td><input type="text" class="form-control input-sm"
							   style="width:80%; height: 50%; display: inline-block"></td>
					</tr>
					<tr>
						<td>기타</td>
						<td colspan="3">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" id="jb-checkbox"
										class="custom-control-input"> 
									<label class="custom-control-label" for="jb-checkbox">
										공유여부 &nbsp; &nbsp;
									</label>
									<input type="checkbox" id="jb-checkbox"
										class="custom-control-input"> 
									<label class="custom-control-label" for="jb-checkbox">
										회계/재고 거래처
									</label>
								</div>
						</td>
					</tr>
					<tr>
						<td style="vertical-align: middle;">관리 거래처코드</td>
						<td><input type="text" class="form-control input-sm"
							   style="width:80%; height: 50%; display: inline-block"></td>
						<td style="vertical-align: middle;">대표자 명</td>
						<td><input type="text" class="form-control input-sm"
							   style="width:80%; height: 50%; display: inline-block"></td>
					</tr>
					<tr>
						<td style="vertical-align: middle;">업체</td>
						<td><input type="text" class="form-control input-sm"
							   style="width:80%; height: 50%; display: inline-block"></td>
						<td style="vertical-align: middle;">종목</td>
						<td><input type="text" class="form-control input-sm"
							   style="width:80%; height: 50%; display: inline-block"></td>
					</tr>
					<tr>
						<td style="vertical-align: middle;">주소</td>
						<td colspan="3">
							<input type="button" style="color: black;" class="btn btn-link" value="우편번호 검색"> 
							<!-- ↑ 모달로 변경하기  -->
							<input type="text" class="form-control input-sm"
								   style="width:100px; height: 50%; display: inline-block">
						<br>
							<input type="textarea" class="form-control input-gl"
								   style="width:250px; height: 50px; display: inline-block">
						</td>
					</tr>
					<tr>
						<td style="vertical-align: middle;">적요</td>
						<td colspan="3"><input type="textarea" class="form-control input-sm"
							   style="width:90%; height: 80px; display: inline-block"></td>
					</tr>
				</tbody>
			</table>
			<br>
			<table class="table" style=" text-align: left;">
				<thead>
					<tr>
						<td colspan="5" style=" padding-left: 20px">추가항목</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="vertical-align: middle;">CSM번호</td>
						<td><input type="text" class="form-control input-sm"
							   style="width:80%; height: 50%; display: inline-block"></td>
						<td style="vertical-align: middle;">문의날짜</td>
						<td><input type="text" id="datepicker" class="form-control input-sm"
							   style="width:80%; height: 50%; display: inline-block">
							<input type="button" style="color: red;" class="btn btn-link" value="삭제">   
						</td>
					</tr>
				</tbody>
			</table>
			<input type="button" class="btn btn-primary pull-right" 
				   style="height: 50%; " value="등록">
		</div>
	</div>
</body>
</html>