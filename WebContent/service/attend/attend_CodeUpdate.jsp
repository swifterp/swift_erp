<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근태 코드 수정</title>
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
</head>
<body>
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">
		<%@ include file="../common/left_menu_attend.jsp" %>	
		<div class="contents">
			<form action="../attend/attend_CodeUpdate">
				<table class="table">
					<tr>
						<th>근태코드</th>
						<td><input type="text" class="form-control" id="attend_code" name="attend_code" value="${list.get(0).get("ATTEND_CODE")}"></td>
					</tr>
					<tr>
						<th>근태명</th>
						<td><input type="text" class="form-control" id="attend_name" name="attend_name" value="${list.get(0).get("ATTEND_NAME")}"></td>
					</tr>
					<%
					List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
					if(lst.get(0).get("ATTEND_CODE_STATE").equals("사용")){
					%>
					<tr>
						<th>근태코드상태</th>
						<td>
							<select id="attend_code_state" class="form-control" name="attend_code_state">
								<option value="사용">사용</option>
								<option value="중지">중지</option>
							</select>
						</td>
					</tr>
					<%
					}
					else if(lst.get(0).get("ATTEND_CODE_STATE").equals("중지")){
					%>
					<tr>
						<th>근태코드상태</th>
						<td>
							<select id="attend_code_state" class="form-control" name="attend_code_state">
								<option value="중지">중지</option>
								<option value="사용">사용</option>
							</select>
						</td>
					</tr>
					<%
						}
					%>
					<tr>
						<th>비고</th>
						<td><input type="text" class="form-control" id="attend_c_etc" name="attend_c_etc" value="${list.get(0).get("ATTEND_C_ETC")}"></td>
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