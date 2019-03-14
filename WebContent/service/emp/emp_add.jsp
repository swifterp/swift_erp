<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../css/bootstrap.min.css">
<link rel="stylesheet" href="../../css/common.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="../../js/bootstrap.js"></script>
<script>
$(function() {
  $( "#datepicker" ).datepicker({
        showOn: "both", 
        buttonImage: "./images/btn_calendar.png", 
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
	        buttonImage: "./images/btn_calendar.png", 
	        buttonImageOnly: true, 
	        dateFormat: "yy/mm/dd",
	       	changeMonth: true, 
	        dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
	        dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
	        monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
	        monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
	  });
	});

	function EmpAdd(){
		$("#f_empAdd").attr("method","get");
		$("#f_empAdd").attr("action","../../emp/add");
		$("#f_empAdd").submit();
	}
</script> 
  <title>SWIFT ERP</title>
</head>
<body>
	<form id="f_empAdd">
		<table class="table table-striped">
			<thead>
				<tr>
					<td>사원번호</td>
					<td>사원명</td>
					<td>이메일</td>
				</tr>
			</thead>
			<tbody>
				<tr> 
					<td><input type="text" id="empno" name="empno" class="form-control" placeholder="사원번호"></td>
					<td><input type="text" id="emp_name" name="emp_name" class="form-control" placeholder="사원이름"></td>
					<td><input type="text" id="emp_email" name="emp_email" class="form-control" placeholder="사원이메일"></td>		
				</tr>
			</tbody>
		</table>
		<a href="emp_mainpage.jsp" class="btn btn-primary">목록</a>
		<input type="submit" class="btn btn-primary pull-right" onclick="javascript:EmpAdd()" value="등록완료">
	</form>
</body>
</html>