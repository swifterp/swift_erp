<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emp_mainpage</title>
<%@ include file="../common/ui_common.jsp" %>
<%
	List<Map<String, String>> allow = (List<Map<String, String>>)request.getAttribute("allow");
	List<Map<String, String>> deduc = (List<Map<String, String>>)request.getAttribute("deduc");
	List<Map<String, String>> allow_value = (List<Map<String, String>>)request.getAttribute("allow_value");
	List<Map<String, String>> deduc_value = (List<Map<String, String>>)request.getAttribute("deduc_value");
%>
<script>
	function execPostCode() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	           // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	           // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
	           // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	           var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
	           var extraRoadAddr = ''; // 도로명 조합형 주소 변수
	
	           // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	           // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	           if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	               extraRoadAddr += data.bname;
	           }
	           // 건물명이 있고, 공동주택일 경우 추가한다.
	           if(data.buildingName !== '' && data.apartment === 'Y'){
	              extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	           }
	           // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	           if(extraRoadAddr !== ''){
	               extraRoadAddr = ' (' + extraRoadAddr + ')';
	           }
	           // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
	           if(fullRoadAddr !== ''){
	               fullRoadAddr += extraRoadAddr;
	           }
	
	           // 우편번호와 주소 정보를 해당 필드에 넣는다.
	           console.log(data.zonecode);
	           console.log(fullRoadAddr);
	           
	           
	           $("[name=emp_addr1]").val(data.zonecode);
	           $("[name=emp_addr2]").val(fullRoadAddr);
	           
	           /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
	           document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
	           document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
	       }
	    }).open();
	}
</script>
<!-- 날짜선택 관련 -->
<script>
	$(function() {
	  $( "#datepicker3" ).datepicker({
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
		  $( "#datepicker4" ).datepicker({
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
    $('#pop_dept').on("click", function() {	
    	var url="../emp/pop_deptRead";
    	var windowW = 300;  // 창의 가로 길이
        var windowH = 300;  // 창의 세로 길이
        var left = Math.ceil((window.screen.width - windowW)/2);
        var top = Math.ceil((window.screen.height - windowH)/2);
  window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
    });
});$(document).ready(function() {
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
    $('#pop_duty').on("click", function() {	
    	var url="../emp/pop_dutyRead";
    	var windowW = 300;  // 창의 가로 길이
        var windowH = 300;  // 창의 세로 길이
        var left = Math.ceil((window.screen.width - windowW)/2);
        var top = Math.ceil((window.screen.height - windowH)/2);
  window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
    });
});
$(document).ready(function() {
    $('#pop_bank').on("click", function() {	
    	var url="../emp/pop_bankRead";
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
		<%@ include file="../common/left_menu_emp.jsp" %>
		<div class="contents">
		<h1>사원정보</h1>
		<ul class="nav nav-tabs">
		  <li class="active"><a data-toggle="tab" href="#menu1">사원등록</a></li>
		  <li><a data-toggle="tab" href="#menu2">급여지급사항등록</a></li>
		  <li><a data-toggle="tab" href="#menu3">세무정보등록</a></li>
		</ul>
		<form  action="../emp/update">
		<div class="tab-content">
		  <div id="menu1" class="tab-pane fade in active">
			<h1>사원등록</h1>
			<table class="table">
				<colgroup>
					<col width="20%" />
					<col width="10%" />
					<col width="30%" />
					<col width="10%" />
					<col width="30%" />
				</colgroup>
				<tbody>
					<tr>
						<td rowspan="4">
							<img id="loadImg" style="width:140px; heigth:auto;" src=""/>
						</td>	
						<th>사원번호<span class="essential">*</span></th>
						<td>
							<input type="text" id="emp_number" name="emp_number" class="form-control" value="${list.get(0).get("EMP_NUMBER")}" required="" readonly>
						</td>
						<th>사원명<span class="essential">*</span></th>
						<td><input type="text" name="emp_name" class="form-control" value="${list.get(0).get("EMP_NAME")}" required=""></td>
					</tr>
					<tr>	
						<th>주민번호</th>
						<td><input type="text" name="emp_resident_number" class="form-control" value="${list.get(0).get("EMP_RESIDENT_NUMBER")}"></td>
						<th>이메일</th>
						<td><input type="email" name="emp_email" class="form-control" value="${list.get(0).get("EMP_EMAIL")}"></td>
					</tr>
					<tr>	
						<th>전화번호</th>
						<td><input type="text" name="emp_tel" class="form-control" value="${list.get(0).get("EMP_TEL")}"></td>
						<th>모바일</th>
						<td><input type="text" name="emp_mobile" class="form-control" value="${list.get(0).get("EMP_MOBILE")}"></td>
					</tr>
					<tr>	
						<th>주소</th>
						<td class="input-group">
							<input class="form-control" value="${list.get(0).get("EMP_ADDR1")}" name="emp_addr1" id="emp_addr1" type="text" readonly="readonly" style="display:inline-block;" placeholder="우편번호" />
							<span class="input-group-btn">
								<button type="button" class="btn btn-default" onclick="execPostCode();">검색</button> 
							</span>
						</td>
						<td colspan="2"><input class="form-control" value="${list.get(0).get("EMP_ADDR2")}" name="emp_addr2" id="emp_addr2" type="text" readonly="readonly" placeholder="도로명주소" /></td>
					</tr>
					<tr>
						<table class="table">
							<colgroup>
								<col width="10%" />
								<col width="20%" />
								<col width="10%" />
								<col width="20%" />
								<col width="10%" />
								<col width="20%" />
							</colgroup>
							<tbody>
								<tr>
									<th>입사일자</th>
									<td>	
										<input type="date" name="emp_join_date" class="form-control" value="${list.get(0).get("EMP_JOIN_DATE")}">
									</td>
									<th>퇴사일자</th>
									<td>		
										<input type="date" name="emp_retire_date" class="form-control" value="${list.get(0).get("EMP_RETIRE_DATE")}">
									</td>
									<th>퇴사사유</th>
									<td><input type="text" name="emp_retire_reason" class="form-control" value="${list.get(0).get("EMP_RETIRE_REASON")}"></td>
								</tr>
								<tr>
									<th>부서<span class="essential">*</span></th>
									<td id="pop_dept" class="input-group">
										<input type="hidden" id="p_dept_no" name="deptno" value="${list.get(0).get("DEPTNO")}" class="form-control">
										<input type="text" id="p_dept_name" class="form-control" value="${list.get(0).get("DNAME")}" required="">
										<span class="input-group-btn">
											 <button class="btn btn-default" type="button" data-toggle="modal" data-target="#exampleModal">보기</button>
										</span>
									</td>
									<th>직급<span class="essential">*</span></th>
									<td id="pop_rank" class="input-group">
										<input type="hidden" id="p_rank_no" name="rank_no" class="form-control" value="${list.get(0).get("RANK_NO")}">
										<input type="text" id="p_rank_name" class="form-control" value="${list.get(0).get("RANK_NAME")}" required="">
										<span class="input-group-btn">
											 <button class="btn btn-default" type="button">보기</button>
										</span>
									</td>
									<th>직책<span class="essential">*</span></th>
									<td id="pop_duty" class="input-group">
										<input type="hidden" id="p_duty_no" name="duty_no" class="form-control" value="${list.get(0).get("DUTY_NO")}">
										<input type="text" id="p_duty_name" class="form-control" value="${list.get(0).get("DUTY_NAME")}">
										<span class="input-group-btn">
											 <button class="btn btn-default" type="button">보기</button>
										</span>
									</td>
								</tr>
								<tr>
									<th>은행명<span class="essential">*</span></th>
									<td id="pop_bank" class="input-group">
										<input type="hidden" id="p_bank_no" name="bank_no" class="form-control" value="${list.get(0).get("BANK_NO")}">
										<input type="text" id="p_bank_name" class="form-control" value="${list.get(0).get("BANK_NAME")}">
										<span class="input-group-btn">
											 <button class="btn btn-default" type="button">보기</button>
										</span>
									</td>
									<th>계좌번호</th>
									<td><input type="text" name="emp_account_num" class="form-control" value="${list.get(0).get("EMP_ACCOUNT_NUM")}"></td>
									<th>예금주</th>
									<td><input type="text" name="emp_account_holder" class="form-control" value="${list.get(0).get("EMP_ACCOUNT_HOLDER")}"></td>
								</tr>
								<tr>
									<th>사진첨부</th>		
									<td colspan="5">
										<input type="file" id="file" class="form-control" name="emp_profile" value="${list.get(0).get("EMP_PROFILE")}" onchange="fileUpload(this);">
									</td>
								</tr>
								<tr>
									<th>첨부파일</th>
									<td colspan="5">
										<input type="file" name="emp_attach_file" class="form-control" value="${list.get(0).get("EMP_ATTACH_FILE")}">
									</td>
								</tr>
								<tr>
									<th>비고</th>
									<td colspan="5"><input type="text" name="emp_etc" class="form-control" value="${list.get(0).get("EMP_ETC")}"></td>
								</tr>
							</tbody>
						</table>
					</tr>
				</tbody>
			</table>
		  </div>	  
		  <div id="menu2" class="tab-pane fade">
		    <h1>급여지급사항등록</h1>
			    <table class="table">
					    <%
					    	for(int i=0;i<allow.size();i=i+2){
					    		boolean blankflag = false;
					    %>
							<tr>
								<th><%= String.valueOf(allow.get(i).get("ALLOWANCE_NAME")) %></th>
								<td>
								<input type="hidden" name="allowance_division<%= String.valueOf(allow.get(i).get("ALLOWANCE_NO")) %>" value="<%= String.valueOf(allow.get(i).get("ALLOWANCE_DIVISION")) %>">
								<input type="hidden" name="allowance_name<%= String.valueOf(allow.get(i).get("ALLOWANCE_NO")) %>" value="<%= String.valueOf(allow.get(i).get("ALLOWANCE_NAME")) %>">
								<%
									if(allow_value.size() != 0){
										for(int j=0;j<allow_value.size();j++){
											if(String.valueOf(allow.get(i).get("ALLOWANCE_NAME")).equals(String.valueOf(allow_value.get(j).get("ALLOWANCE_NAME")))){
												blankflag = true;
								%>
												<input type="text" value="<%=String.valueOf(allow_value.get(j).get("PAYINFO_PRICE")) %>" name="payinfo_price<%= String.valueOf(allow.get(i).get("ALLOWANCE_NO")) %>" class="form-control" />
								<%
											}
										}
									}
									if(blankflag != true){
								%>
										<input type="text" name="payinfo_price<%= String.valueOf(allow.get(i).get("ALLOWANCE_NO")) %>" class="form-control" />
								<%
					    				blankflag = false;
									}
								%>
								</td>
								<%
									blankflag = false;
									if(i+1 < allow.size()){
								%>
								<th><%= String.valueOf(allow.get(i+1).get("ALLOWANCE_NAME")) %></th>
								<td>
								<input type="hidden" name="allowance_division<%= String.valueOf(allow.get(i+1).get("ALLOWANCE_NO")) %>" value="<%= String.valueOf(allow.get(i+1).get("ALLOWANCE_DIVISION")) %>">
								<input type="hidden" name="allowance_name<%= String.valueOf(allow.get(i+1).get("ALLOWANCE_NO")) %>" value="<%= String.valueOf(allow.get(i+1).get("ALLOWANCE_NAME")) %>">
								<%
									if(allow_value.size() != 0){
										for(int j=0;j<allow_value.size();j++){
											if(String.valueOf(allow.get(i+1).get("ALLOWANCE_NAME")).equals(String.valueOf(allow_value.get(j).get("ALLOWANCE_NAME")))){
												blankflag = true;
								%>
												<input type="text" value="<%=String.valueOf(allow_value.get(j).get("PAYINFO_PRICE")) %>" name="payinfo_price<%= String.valueOf(allow.get(i+1).get("ALLOWANCE_NO")) %>" class="form-control" />
								<%
											}
										}
									}
									if(blankflag != true){
								%>
										<input type="text" name="payinfo_price<%= String.valueOf(allow.get(i+1).get("ALLOWANCE_NO")) %>" class="form-control" />
								<%
					    				blankflag = false;
									}
								%>
								</td>
								<%
									} else {
								%>
								<td></td><td></td>
								<%
									}
								%>
							</tr>
						<%
					    	}
						%>
				</table>
		  </div>
		  <div id="menu3" class="tab-pane fade">
		    <h1>세무정보등록</h1>
			    <table class="table">
						<%
					    	for(int i=0;i<deduc.size();i=i+2){
					    		boolean blankflag = false;
					    %>
							<tr>
								<th><%= String.valueOf(deduc.get(i).get("DEDUCTION_NAME")) %></th>
								<td>
								<input type="hidden" name="deduction_name<%= String.valueOf(deduc.get(i).get("DEDUCTION_NO")) %>" value="<%= String.valueOf(deduc.get(i).get("DEDUCTION_NAME")) %>">
								<%
									if(deduc_value.size() != 0){
										for(int j=0;j<deduc_value.size();j++){
											if(String.valueOf(deduc.get(i).get("DEDUCTION_NAME")).equals(String.valueOf(deduc_value.get(j).get("DEDUCTION_NAME")))){
												blankflag = true;
								%>
											<input type="text" value="<%=String.valueOf(deduc_value.get(j).get("DEDUCINFO_PRICE")) %>" name="deducinfo_price<%= String.valueOf(deduc.get(i).get("DEDUCTION_NO")) %>" class="form-control" />
								<%
											}
										}
					    			}
									if(blankflag != true){
								%>
										<input type="text" name="deducinfo_price<%= String.valueOf(deduc.get(i).get("DEDUCTION_NO")) %>" class="form-control" />
								<%
					    				blankflag = false;
									}
								%>
								</td>
								<%
									blankflag = false;
									if(i+1 < deduc.size()){
								%>
								<th><%= String.valueOf(deduc.get(i+1).get("DEDUCTION_NAME")) %></th>
								<td>
								<input type="hidden" name="deduction_name<%= String.valueOf(deduc.get(i+1).get("DEDUCTION_NO")) %>" value="<%= String.valueOf(deduc.get(i+1).get("DEDUCTION_NAME")) %>">
								<%
									if(deduc_value.size() != 0){
										for(int j=0;j<deduc_value.size();j++){
											if(String.valueOf(deduc.get(i+1).get("DEDUCTION_NAME")).equals(String.valueOf(deduc_value.get(j).get("DEDUCTION_NAME")))){
												blankflag = true;
								%>
												<input type="text" value="<%=String.valueOf(deduc_value.get(j).get("DEDUCINFO_PRICE")) %>" name="deducinfo_price<%= String.valueOf(deduc.get(i+1).get("DEDUCTION_NO")) %>" class="form-control" />
								<%
											}
										}
					    			}
									if(blankflag != true){
								%>
										<input type="text" name="deducinfo_price<%= String.valueOf(deduc.get(i+1).get("DEDUCTION_NO")) %>" class="form-control" />
								<%
					    				blankflag = false;
									}
								%>
								</td>
								<%
									} else {
								%>
								<td></td><td></td>
								<%
									}
								%>
							</tr>
						<%
					    	}
						%>
				</table>
			</div>
			<div class="btn_group">
				<a href="../emp/read" class="btn btn-default pull-left">목록</a>
				<input type="submit" class="btn btn-outline-primary pull-right" value="수정완료">
			</div>
		</div>
	</form>
</body>
</html>