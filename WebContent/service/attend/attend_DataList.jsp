<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근태 관리 페이지</title>
<%@ include file="../common/ui_common.jsp" %>
<script type="text/javascript">
function attendDataInsert(){
	$(document).ready(function(){
		$(".wrap").load("../attend/attend_DataInsert.jsp");
	});
}
function attendDataInsert(){
	$(document).ready(function(){
		$(".wrap").load("../attend/attend_DataInsert.jsp");
	});
}
</script>
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
	$(function() {
	  $( "#datepicker2" ).datepicker({
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
			<form action="../attend/attend_DetailData">
				<table class="table" style="text-align:left; margin-bottom:20px; background:#eee;">
					<colgroup>
						<col width="20%">
						<col width="80%">
					</colgroup>
					<tbody>
						<tr>
							<th class="line">사원번호</th>
							<td class="line">
								<input type="text" id="empno" name="empno" class="form-control" style="width:200px;">
							</td>
						</tr>
						<tr>
							<th class="line">근무시간</th>
							<td class="line">
								<div class="input-group">
									<input type="text" class="form-control" id="attend_time" name="attend_time" placeholder="근무시간 입력" style="width:200px;">
								</div>
							</td>
						</tr>
						<tr>
							<th class="line" style="width:150px;">
								근태날짜
							</th>
							<td class="line" style="text-align: left;">
							<input type="text" id="datepicker" name="attend_date" class="form-control"
								style="width:200px; display:inline-block">
							&nbsp;~&nbsp;
							<input type="text" id="datepicker2" name="attend_date2" class="form-control"
								style="width:200px; display:inline-block">
							</td>
						</tr>
						<tr>
							<th class="line">
								근태명
							</th>
							<td class="line">
								<div class="input-group">
									<input type="text" id="attend_name" name="attend_name" class="form-control"
										   style="width:200px; display:inline-block">
								</div>
							</td>
						</tr>
						<tr>
							<td class="line" style="width: 155px" colspan="2">
								<div class="input-group pull-right">
									<input type="submit" class="btn btn-primary" value="조회">
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
			<table class="table">
				<thead>
					<tr>
						<th>근태번호</th>
						<th>사원번호</th>
						<th>근태날짜</th>
						<th>근태명</th>
						<th>근무시간</th>
						<th>비고</th>	
						<th>출근시간</th>	
						<th>퇴근시간</th>	
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
			<%--           <td><input type="checkbox" value="<%= String.valueOf(lst.get(i).get("ATTEND_NO")) %>"></td> --%>
			               <td><%= String.valueOf(lst.get(i).get("ATTEND_NO")) %> </td>
			               <td><%= String.valueOf(lst.get(i).get("EMPNO")) %> </td>
			               <td><%= lst.get(i).get("ATTEND_DATE") %> </td>
			               <td><%= String.valueOf(lst.get(i).get("ATTEND_NAME")) %> </td>
			               <td><%= String.valueOf(lst.get(i).get("ATTEND_TIME")) %> </td>
			               <td><%= lst.get(i).get("ATTEND_M_ETC") %> </td>
			               <td><%= lst.get(i).get("ATTEND_OPEN") %> </td>
			               <td><%= lst.get(i).get("ATTEND_CLOSE") %> </td>
			               <td>
				               <form action="../attend/attend_DataListLow">
				               		<input class="form-control" type="hidden" id="attendno" name="attendno" value="<%= String.valueOf(lst.get(i).get("ATTEND_NO")) %>">
				               		<input class="form-control btn btn-default" type="submit" value="수정">
				               </form>
			               </td>
			               <td> 
				               <form action="../attend/attend_DataDelete">
				              	 <input class="form-control" type="hidden" id="attend_no" name="attend_no" value="<%= String.valueOf(lst.get(i).get("ATTEND_NO")) %>">
				             	  <input class="form-control btn btn-default" type="submit" value="삭제">
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
				<input type="button" class="btn btn-primary pull-right" onclick="javascript:attendDataInsert()" value="등록">
			</div>
		</div>
	</div>
</body>
</html>