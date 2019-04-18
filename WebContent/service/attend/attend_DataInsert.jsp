<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근태 등록</title>
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
<script type="text/javascript">
	$(document).ready(function() {
	    $('#pop_attendcode').on("click", function() {	
	    	var url="../attend/pop_attendCodeRead";
	    	var windowW = 300;  // 창의 가로 길이
	        var windowH = 300;  // 창의 세로 길이
	        var left = Math.ceil((window.screen.width - windowW)/2);
	        var top = Math.ceil((window.screen.height - windowH)/2);
	  window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
	    });
	});
</script>
<style>
table td {text-align:left;}
</style>
</head>
<body>
<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">		
		<%@ include file="../common/left_menu_attend.jsp" %>
		<div class="contents">
			<h3>근태등록</h3>
			<form action="../attend/attend_DataInsert">
				<input type="hidden" id="empno" class="form-control" name="empno" value="<%= String.valueOf(sess.get(0).get("EMPNO")) %>" readonly>
				<table class="table">
					<tr>
						<th> 근태날짜 <span class="essential">*</span></th>
						<td><input type="text" id="datepicker" class="form-control" name="attend_date" style="width:90%; display:inline-block; margin-right:5px;" required=""></td>
					</tr>
					<tr>
						<th> 근태코드 <span class="essential">*</span></th>				
						<td id="pop_attendcode" class="input-group">
							<input type="hidden" id="attend_code" name="attend_code" class="form-control" required="">
							<input type="text" id="attend_name" class="form-control" required="">
							<span class="input-group-btn">
								 <button class="btn btn-default" type="button" data-toggle="modal" data-target="#exampleModal">보기</button>
							</span>
						</td>
					</tr>
					<tr>
						<th> 근무시간 <span class="essential">*</span></th>
						<td><input type="text" id="attend_time" class="form-control" name="attend_time" required=""></td>
					</tr>
					<tr>
						<th> 비고 </th>
						<td><input type="text" id="attend_m_etc" class="form-control" name="attend_m_etc"></td>
					</tr>
					<tr>
						<th> 출근시간 <span class="essential">*</span></th>
						<td><input type="time" id="attend_open" class="form-control" name="attend_open" required=""></td>
					</tr>
					<tr>
						<th> 퇴근시간 <span class="essential">*</span></th>
						<td><input type="time" id="attend_close" class="form-control" name="attend_close"></td>
					</tr>
				</table>
				<div class="btn_group">
					<a class="btn btn-default pull-left" href="../attend/attend_DataList">목록</a>
					<input type="submit" class="btn btn-primary pull-right" value="확인">
				</div>
			</form>
		</div>
	</div>
</body>
</html>