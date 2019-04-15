<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emp_mainpage</title>
<%@ include file="../common/ui_common.jsp" %>
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
<!-- 팝업창 -->
<script>
$(document).ready(function() {
    $('#pop_emp').on("click", function() {	
    	var url="../emp/pop_empRead";
    	var windowW = 300;  // 창의 가로 길이
        var windowH = 300;  // 창의 세로 길이
        var left = Math.ceil((window.screen.width - windowW)/2);
        var top = Math.ceil((window.screen.height - windowH)/2);
  window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
    });
});
$(document).ready(function() {
    $('#pop_rank').on("click", function() {	
    	var url="../emp/pop_rankRead";
    	var windowW = 300;  // 창의 가로 길이
        var windowH = 300;  // 창의 세로 길이
        var left = Math.ceil((window.screen.width - windowW)/2);
        var top = Math.ceil((window.screen.height - windowH)/2);
  window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
    });
});
$(document).ready(function() {
    $('#pop_dept').on("click", function() {	
    	var url="../emp/pop_deptRead";
    	var windowW = 300;  // 창의 가로 길이
        var windowH = 300;  // 창의 세로 길이
        var left = Math.ceil((window.screen.width - windowW)/2);
        var top = Math.ceil((window.screen.height - windowH)/2);
  window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
    });
});
</script>
</head>
<body>
<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">		
		<%@ include file="../common/left_menu_emp.jsp" %>
		<div class="contents">
			<h1>인사발령등록</h1>
			<form action="../emp/appointAdd">
				<table class="table">
					<colgroup>
						<col width="20%">
						<col width="15%">
						<col width="10%">
						<col width="10%">
						<col width="10%">
						<col width="10%">
						<col width="10%">
					</colgroup>
					<thead>
						<tr>
							<th rowspan="2">발령일자</th>
							<th rowspan="2">사번</th>
							<th rowspan="2">성명</th>
							<th colspan="4">발령사항</th>				
						</tr>
						<tr>
							<th>이전직급</th>
							<th>발령직급</th>
							<th>이전부서</th>
							<th>발령부서</th>
						</tr>
					</thead>
				    <tbody>
						<tr>
							<td><input type="text" class="form-control" name="emp_appoint_date" id="datepicker" style="width:80%; display:inline-block;"/></td>
							<td class="input-group"  id="pop_emp">
								<input type="hidden" id="p_emp_no" name="empno" />
								<input type="text" id="p_emp_number" class="form-control" readonly />
								<span name="emp_number" class="input-group-btn">
									<button type="button" class="btn btn-primary" style="width:40px;"><img src="../../images/icon_plus.png"/></button> 
								</span>
							</td>
							<td><input type="text" id="p_emp_name" class="form-control" name="emp_name" readonly /></td>
							<td><input type="text" id="p_emp_rank_name" class="form-control" name="prev_rank" readonly /></td>
							<td id="pop_rank">
								<input type="hidden" id="p_rank_no" name="rank_no" />
								<input type="text" id="p_rank_name" class="form-control" name="next_rank" readonly/>
							</td>
							<td><input type="text" id="p_emp_dept_name" class="form-control" name="prev_dept" readonly /></td>
							<td id="pop_dept">
								<input type="hidden" id="p_dept_no" name="deptno" />
								<input type="text" id="p_dept_name" class="form-control" name="next_dept" readonly />
							</td>
						</tr>
				    </tbody>
				</table>
				<div class="btn_group">
					<a class="btn btn-default pull-left" href="../emp/appointRead">목록</a>
					<button type="submit" class="btn btn-primary pull-right" >등록완료</button>
				</div>
			 </form>
		</div>
	</div>
</body>
</html>