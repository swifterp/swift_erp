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
</script> 
  <title>SWIFT ERP</title>
</head>
<body>

	<form action="../../emp/add">
		<table class="table table-striped">
			<thead>
				<tr>
					<td>사원번호</td>
					<td>사원명</td>
					<td>이메일</td>
					<td>주민등록번호</td>
					<td>전화번호</td>
				</tr>
				<tr>
					<td>모바일</td>
					<td>우편번호</td>
					<td>상세주소</td>
					<td>입사일자</td>
					<td>퇴사일자</td>
				</tr>
				<tr>
					<td>퇴사사유</td>
					<td>부서</td>
					<td>직급</td>
					<td>직책</td>
					<td>은행명</td>
				</tr>
				<tr>
					<td>계좌번호</td>
					<td>예금주</td>
					<td>사진선택</td>
					<td>첨부파일선택</td>
					<td>비고</td>
				</tr>
			</thead>
			<tbody>
				<tr> 
					<td><input type="text" name="emp_number" class="form-control" placeholder="사원번호"></td>
					<td><input type="text" name="emp_name" class="form-control" placeholder="사원이름"></td>
					<td><input type="email" name="emp_email" class="form-control" placeholder="사원이메일"></td>
					<td><input type="text" name="emp_resident_number" class="form-control" placeholder="주민등록번호"></td>		
					<td><input type="text" name="emp_tel" class="form-control" placeholder="전화번호"></td>				
				</tr>
				<tr>
					<td><input type="text" name="emp_mobile" class="form-control" placeholder="모바일"></td>
					<td><input type="text" name="emp_address" class="form-control" placeholder="우편번호"></td>
					<td><input type="text" name="emp_address_detail" class="form-control" placeholder="상세주소"></td>				
					<td><input type="text" name="emp_join_date" class="form-control" placeholder="입사일자"></td>
					<td><input type="text" name="emp_retire_date" class="form-control" placeholder="퇴사일자"></td>	
				</tr>
				<tr>
					<td><input type="text" name="emp_retire_reason" class="form-control" placeholder="퇴사사유"></td>
					<td><input type="text" name="deptno" class="form-control" placeholder="부서"></td>
					<td><input type="text" name="rank_no" class="form-control" placeholder="직급"></td>				
					<td><input type="text" name="duty_no" class="form-control" placeholder="직책"></td>
					<td><input type="text" name="bank_no" class="form-control" placeholder="은행명"></td>	
				</tr>
				<tr>
					<td><input type="text" name="emp_account_num" class="form-control" placeholder="계좌번호"></td>
					<td><input type="text" name="emp_account_holder" class="form-control" placeholder="예금주"></td>
					<td><input type="text" name="emp_profile" class="form-control" placeholder="사진선택"></td>				
					<td><input type="text" name="emp_attach_file" class="form-control" placeholder="첨부파일선택"></td>
					<td><input type="text" name="emp_etc" class="form-control" placeholder="비고"></td>	
				</tr>
			</tbody>
		</table>
		
		<a href="emp_mainpage.jsp" class="btn btn-primary">목록</a>
		<input type="submit" class="btn btn-primary pull-right" value="등록완료">
	</form>
</body>
</html>