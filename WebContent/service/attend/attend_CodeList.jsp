<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근태 코드 페이지</title>
<script type="text/javascript">
	function attendCodeInsert(){
		location.href = "../service/attend/attend_CodeInsert.jsp";
	}
</script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/common.css">
<script type ="text/javascript" src ="../js/jquery.min.js"></script>
<script type ="text/javascript" src ="../js/bootstrap.js"></script>

<!-- 날짜선택 관련 -->
<link rel="stylesheet" href="../css/datepicker.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
	  $( "#datepicker" ).datepicker({
	        showOn: "both", 
	        buttonImage: "../images/btn_calendar.png", 
	        buttonImageOnly: true, 
	        dateFormat: "yy/mm/dd",
	       	changeMonth: true, 
	        dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
	        dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
	        monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
	        monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
		});
	});
</script>
</head>
<body>
	<!-- 네비게이션 -->
	<nav class="navbar navbar-default" style="z-index:9999">
		<!-- 네비게이션 헤더 -->
		<div class="navbar-header">
			<!-- 네비게이션 왼쪽 헤더(로고) -->
			<a class="navbar-brand" href="../service/welcome/welcome.jsp"><img class="logo" src="../images/logo.png"></a>
		</div>
		
		<!-- 네비게이션 본메뉴 -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<!-- 네비게이션 본메뉴 엘리먼트 -->
			<ul class="nav navbar-nav">
				<li><a href="../emp/read">인사관리</a></li>
				<li><a href="#">급여관리</a></li>		
				<li class="active"><a href="../attend/attend_DataList">근태관리</a></li>
				<li><a href="../approval/selectDraft">결재관리</a></li>
				<li><a href="../work/selectBusinessLog">업무관리</a></li>
				<li><a href="../client/selectClientInfo">고객관리</a></li>
			</ul>
			<!-- 드롭다운 기능 -->
			<ul class="nav navbar-nav navbar-right">
				<!-- 드롭다운 -->
				<li class="dropdown">
					<!-- 누르기 전 이미지 -->
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">회원관리<span class="caret"></span></a>
					<!-- 눌렀을 때 -->
					<ul class="dropdown-menu">
						<li><a href="#">로그아웃</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	
	<div class="container">
		<!-- 왼쪽 네비게이션 -->
		<nav class="nav-left">	
			<ul class="bg-primary">
				<li>
					<a class="active" data-toggle="collapse" data-target="#group1"
					aria-expanded="false" href="#">기본사항관리</a>
					<ul class="collapse in depth2" id="group1">
						<li><a class="active" href="../attend/attend_CodeList">근태항목관리</a></li>
						<li><a href="../attend/attend_DataList">근태관리</a></li>
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
		<div class="contents">
			<form action="../attend/attend_DetailCode">
				<table class="table" style="text-align:left; margin-bottom:20px; background:#eee;">
					<colgroup>
						<col width="20%">
						<col width="80%">
					</colgroup>
					<tr>
						<th>근태코드</th>
						<td><input type="text" id="attend_code" name="attend_code" class="form-control" style="width:200px;"></td>
					</tr>
					<tr>
						<th>근태명</th>
						<td><input type="text" id="attend_name" name="attend_name" class="form-control" style="width:200px;"></td>
					</tr>
					<tr>
						<th>근태코드상태</th>
						<td>
							<select id="attend_code_state" name="attend_code_state" class="form-control" style="width:200px;">
								<option value="">전체</option>			  
								<option value="사용">사용</option>
								<option value="중지">중지</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>비고</th>
						<td><input type="text" id="attend_c_etc" name="attend_c_etc" class="form-control" style="width:200px;"></td>
					</tr>
					<tr>
						<td class="line" style="width:155px" colspan="2">
							<div class="input-group pull-right">
								<input type="submit" class="btn btn-primary" value="조회">
							</div>
						</td>
					</tr>
				</table>
			</form>
			<table class="table">
				<thead>
					<tr>
						<th>근태코드</th>
						<th>근태명</th>
						<th>근태코드상태</th>
						<th>비고</th>
						<th>수정</th>
						<th>삭제</th>
					</tr>
				</thead>	
				<tbody>
			   <%
			      List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
			   
			      if(lst != null){
			         for(int i=0;i<lst.size();i++){
			   %>
			            <tr>
			               <td><%= String.valueOf(lst.get(i).get("ATTEND_CODE")) %> </td>
			               <td><%= lst.get(i).get("ATTEND_NAME") %> </td>
			               <td><%= lst.get(i).get("ATTEND_CODE_STATE") %> </td>
			               <td><%= lst.get(i).get("ATTEND_C_ETC") %> </td>
			               <td>
				               <form action="../attend/attend_CodeLow">
				               <input type="hidden" id="attend_code" name="attend_code" value="<%= String.valueOf(lst.get(i).get("ATTEND_CODE")) %>">
				               <input type="submit" class="btn btn-default" value="수정">
				               </form>
			               </td>
			               <td> 
				               <form action="../attend/attend_CodeDelete">
				               <input type="hidden" id="attend_code" name="attend_code" value="<%= String.valueOf(lst.get(i).get("ATTEND_CODE")) %>">
				               <input type="submit" class="btn btn-default" value="삭제">
				               </form>
			               </td>
			            </tr>
			   <%
			         }
			      }
			    %>
			    </tbody>
			</table>
			<div class="btn_group">
				<input type="button" class="btn btn-primary pull-right" onclick="javascript:attendCodeInsert()" value="등록">
			</div>
		</div>
	</div>
</body>
</html>