<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근태수정페이지</title>
<%@ include file="../common/ui_common.jsp" %>
<!-- 날짜선택 관련 -->
<script>
	$(function() {
	  $( "#datepicker" ).datepicker({
	        showOn: "both", 
	        buttonImage: "../../images/btn_calendar.png", 
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

<style>
	.tb_left td {text-align:left;}
</style>
</head>
<body>
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">		
		<%@ include file="../common/left_menu_attend.jsp" %>
		<div class="contents">
			<form action="../attend/attend_DataUpdate">
				<table class="table tb_left">
					<tr>
						<th>사원번호</th> 
						<td><input type="text" id="empno" class="form-control" name="empno" value="${list.get(0).get("EMPNO")}"></td>
					</tr>
					<tr>
						<th>근태날짜</th> 
						<td><input type="text" id="datepicker" class="form-control" name="attend_date" value="${list.get(0).get("ATTEND_DATE")}" style="width:90%; display:inline-block; margin-right:5px;"></td>
					</tr>
					<tr>
						<th>근태코드</th> 
						<td><input type="text" id="attend_code" class="form-control" name="attend_code" value="${list.get(0).get("ATTEND_CODE")}"></td>
					</tr>
					<tr>
						<th>근태시간</th> 
						<td><input type="text" id="attend_time" class="form-control" name="attend_time" value="${list.get(0).get("ATTEND_TIME")}"></td>
					</tr>

					<tr>
						<th>비고</th> 
						<td><input type="text" id="attend_m_etc" class="form-control" name="attend_m_etc" value="${list.get(0).get("ATTEND_M_ETC")}"></td>
					</tr>
					<tr>
						<th>출근시간</th> 
						<td><input type="time" id="attend_open" class="form-control" name="attend_open" value="${list.get(0).get("ATTEND_OPEN")}"></td>
					</tr>
					<tr>
						<th>퇴근시간</th> 
						<td><input type="time" id="attend_close" class="form-control" name="attend_close" value="${list.get(0).get("ATTEND_CLOSE")}"></td>
					</tr>
				</table>
				<div class="btn_group">
					<input type="submit" class="btn btn-primary pull-right" value="확인">
				</div>
			</form>
		</div>
	</div>
</body>
</html>