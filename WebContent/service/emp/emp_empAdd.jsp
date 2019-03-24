<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SWIFT ERP</title>
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<script type = "text/javascript" src ="../../js/jquery.min.js"></script>
<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
<!-- 주소api -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
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
<link rel="stylesheet" href="../../css/datepicker.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
    	var url="../../emp/pop_deptRead";
    	var windowW = 300;  // 창의 가로 길이
        var windowH = 300;  // 창의 세로 길이
        var left = Math.ceil((window.screen.width - windowW)/2);
        var top = Math.ceil((window.screen.height - windowH)/2);
  window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
    });
});$(document).ready(function() {
    $('#pop_rank').on("click", function() {	
    	var url="../../emp/pop_rankRead";
    	var windowW = 300;  // 창의 가로 길이
        var windowH = 300;  // 창의 세로 길이
        var left = Math.ceil((window.screen.width - windowW)/2);
        var top = Math.ceil((window.screen.height - windowH)/2);
  window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
    });
});
$(document).ready(function() {
    $('#pop_duty').on("click", function() {	
    	var url="../../emp/pop_dutyRead";
    	var windowW = 300;  // 창의 가로 길이
        var windowH = 300;  // 창의 세로 길이
        var left = Math.ceil((window.screen.width - windowW)/2);
        var top = Math.ceil((window.screen.height - windowH)/2);
  window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
    });
});
$(document).ready(function() {
    $('#pop_bank').on("click", function() {	
    	var url="../../emp/pop_bankRead";
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
	<!-- 네비게이션 -->
	<nav class="navbar navbar-default" style="z-index:9999">
		<!-- 네비게이션 헤더 -->
		<div class="navbar-header">
			<!-- 네비게이션 왼쪽 헤더(로고) -->
			<a class="navbar-brand" href="../welcome/welcome.jsp"><img class="logo" src="../../images/logo.png"></a>
		</div>
		
		<!-- 네비게이션 본메뉴 -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<!-- 네비게이션 본메뉴 엘리먼트 -->
			<ul class="nav navbar-nav">
				<li class="active"><a href="../../emp/read">인사관리</a></li>
				<li><a href="Pay.jsp">급여관리</a></li>		
				<li><a href="Attend.jsp">근태관리</a></li>
				<li><a href="Approval.jsp">결재관리</a></li>
				<li><a href="Work_taskUpdate.jsp">업무관리</a></li>
				<li><a href="Customer_List.jsp">고객관리</a></li>
			</ul>
			<!-- 드롭다운 기능 -->
			<ul class="nav navbar-nav navbar-right">
				<!-- 드롭다운 -->
				<li class="dropdown">
					<!-- 누르기 전 이미지 -->
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">설정<span class="caret"></span></a>
				<!-- 눌렀을 때 -->
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
				<li>
					<a class="active" data-toggle="collapse" data-target="#group1"
					aria-expanded="false" href="#">기본사항등록</a>
					<ul class="collapse in depth2" id="group1">
						<li><a class="active" href="../../emp/read">인사카드등록</a></li>
						<li><a href="../../emp/deptRead">부서등록</a></li>
					</ul>
				</li>
				<li>
					<a data-toggle="collapse" data-target="#group2"
					aria-expanded="false" href="#">조회/인쇄</a>
					<ul class="collapse depth2" id="group2">
						<li><a href="#">각종증명서인쇄</a></li>
						<li><a href="#">사원명부</a></li>
					</ul>
				</li>
			</ul>
		</nav>
		<div class="contents">
			<ul class="nav nav-tabs">
			  <li class="active"><a data-toggle="tab" href="#menu1">사원등록</a></li>
			  <li><a data-toggle="tab" href="#menu2">급여지급사항등록</a></li>
			  <li><a data-toggle="tab" href="#menu3">세무정보등록</a></li>
			</ul>
			<div class="tab-content">
			  <div id="menu1" class="tab-pane fade in active">
				<h3>사원등록</h3>
			    <form action="../../emp/add">
					<table class="table">
						<colgroup>
							<col width="20%" />
							<col width="10%" />
							<col width="25%" />
							<col width="10%" />
							<col width="35%" />
						</colgroup>
						<tbody>
							<tr>
								<td rowspan="4">
									<img style="width:140px; heigth:auto;" src="../../images/profile_0.png"/>
								</td>	
								<th>사원번호 <span class="essential">*</span></th>
								<td class="input-group">
									<input type="text" id="emp_number" name="emp_number" class="form-control">
									<span class="input-group-btn">
										<button type="button" class="btn btn-info empNumCheck">중복확인</button> 
									</span>
								</td>
								<th>사원명 <span class="essential">*</span></th>
								<td><input type="text" name="emp_name" class="form-control"></td>
							</tr>
							<tr>	
								<th>주민번호</th>
								<td><input type="text" name="emp_resident_number" class="form-control"></td>
								<th>이메일</th>
								<td><input type="email" name="emp_email" class="form-control"></td>
							</tr>
							<tr>	
								<th>전화번호</th>
								<td><input type="text" name="emp_tel" class="form-control"></td>
								<th>모바일</th>
								<td><input type="text" name="emp_mobile" class="form-control"></td>
							</tr>
							<tr>	
								<th>주소</th>
								<td class="input-group">
									<input class="form-control" name="emp_addr1" id="emp_addr1" type="text" readonly="readonly" style="display:inline-block;" placeholder="우편번호" />
									<span class="input-group-btn">
										<button type="button" class="btn btn-default" onclick="execPostCode();">검색</button> 
									</span>
								</td>
								<td colspan="2"><input class="form-control" name="emp_addr2" id="emp_addr2" type="text" readonly="readonly" placeholder="도로명주소" /></td>
							</tr>
							<tr>
								<table class="table table-striped">
									<colgroup>
										<col width="50px" />
										<col width="120px" />
										<col width="50px" />
										<col width="120px" />
										<col width="50px" />
										<col width="120px" />
									</colgroup>
									<tbody>
										<tr>
											<th>입사일자</th>
											<td>	
												<input type="text" name="emp_join_date" class="form-control" id="datepicker" style="width:80%; display:inline-block; margin-right:5px;">
											</td>
											<th>퇴사일자</th>
											<td>		
												<input type="text" name="emp_retire_date" class="form-control" id="datepicker2" style="width:80%; display:inline-block; margin-right:5px;">
											</td>
											<th>퇴사사유</th>
											<td><input type="text" name="emp_retire_reason" class="form-control"></td>
										</tr>
										<tr>
											<th>부서 <span class="essential">*</span></th>
											<td id="pop_dept" class="input-group">
												<input type="hidden" id="p_dept_no" name="deptno" class="form-control">
												<input type="text" id="p_dept_name" class="form-control">
												<span class="input-group-btn">
													 <button class="btn btn-default" type="button" data-toggle="modal" data-target="#exampleModal">Go!</button>
												</span>
											</td>
											<th>직급 <span class="essential">*</span></th>
											<td id="pop_rank" class="input-group">
												<input type="hidden" id="p_rank_no" name="rank_no" class="form-control">
												<input type="text" id="p_rank_name" class="form-control">
												<span class="input-group-btn">
													 <button class="btn btn-default" type="button">Go!</button>
												</span>
											</td>
											<th>직책</th>
											<td id="pop_duty" class="input-group">
												<input type="hidden" id="p_duty_no" name="duty_no" class="form-control">
												<input type="text" id="p_duty_name" class="form-control">
												<span class="input-group-btn">
													 <button class="btn btn-default" type="button">Go!</button>
												</span>
											</td>
										</tr>
										<tr>
											<th>은행명</th>
											<td id="pop_bank" class="input-group">
												<input type="hidden" id="p_bank_no" name="bank_no" class="form-control">
												<input type="text" id="p_bank_name" class="form-control">
												<span class="input-group-btn">
													 <button class="btn btn-default" type="button">Go!</button>
												</span>
											</td>
											<th>계좌번호</th>
											<td><input type="text" name="emp_account_num" class="form-control"></td>
											<th>예금주</th>
											<td><input type="text" name="emp_account_holder" class="form-control"></td>
										</tr>
										<tr>
											<th>사진첨부</th>		
											<td colspan="5">
												<input type="file" name="emp_profile" class="form-control">
											</td>
										</tr>
										<tr>
											<th>첨부파일</th>
											<td colspan="5">
												<input type="file" name="emp_attach_file" class="form-control">
											</td>
										</tr>
										<tr>
											<th>비고</th>
											<td colspan="5"><textarea class="form-control" name="emp_etc"></textarea></td>
										</tr>
									</tbody>
								</table>
							</tr>
						</tbody>
					</table>
					<div class="btn_group">
						<a  href="../../emp/read" class="btn btn-default pull-left">목록</a>
						<input type="submit" id="submit" class="btn btn-primary pull-right" value="등록완료">
					</div>
				</form>
			  </div>	  
			  <div id="menu2" class="tab-pane fade">
			    <h3>급여지급사항등록</h3>
			    <form action="../../emp/paySalaryAdd">
				    <table class="table">
						<tr>
							<th>적용일</th>
							<td>	
								<input type="text" name="emp_join_date" class="form-control" id="datepicker3" placeholder="적용일" style="width:80%; display:inline-block; margin-right:5px;">
							</td>
							<th>급여구분</th>
							<td>
								<span><input type="checkbox" />고정급</span>
								<span><input type="checkbox" />변동급</span>
							</td>
							<th>급여차수</th>
							<td>
								<select>
					  				<option value="one">1차</option>
					  				<option value="two">2차</option>
					 				<option value="three">3차</option>
					  				<option value="four">4차</option>
								</select>
							</td>
						</tr>
						<tr>
							<th>기본급</th>
							<td><input type="text" class="form-control" /></td>
							<th>법정수당</th>
							<td colspan="3"><input type="text" class="form-control" /></td>
						</tr>
						<tr>
							<th>차량유지비</th>
							<td><input type="text" class="form-control" /></td>
							<th>식대</th>
							<td colspan="3"><input type="text" class="form-control" /></td>
						</tr>
						<tr>
							<th>지급총액</th>
							<td colspan="5"><input type="text" class="form-control" /></td>
					</table>
					<div class="btn_group">
						<a href="../../emp/read" class="btn btn-default pull-left">목록</a>
						<input type="submit" id="submit" class="btn btn-primary pull-right" value="등록완료">
					</div>
				</form>
			  </div>
			  <div id="menu3" class="tab-pane fade">
			    <h3>세무정보등록</h3>
			    <form action="../../emp/taxInfoAdd">
				    <table class="table">
				    	<colgroup>
							<col width="15%" />
							<col width="35%" />
							<col width="15%" />
							<col width="35%" />
						</colgroup>
						<th>적용일</th>
						<td colspan="3">	
							<input type="text" name="emp_join_date" class="form-control" id="datepicker4" placeholder="적용일" style="width:80%; display:inline-block; margin-right:5px;">
						</td>
						<tr>
							<th>국민연금</th>
							<td>
								<select>
					  				<option value="autoSum">자동계산</option>
					  				<option value="Income">기준소득기준</option>
					 				<option value="none">안함</option>
								</select>
							</td>
							<th>기준소득월액</th>
							<td><input type="text" class="form-control" /></td>
						</tr>
						<tr>
							<th>건강보험</th>
							<td>
								<select>
					  				<option value="autoSum">자동계산</option>
					  				<option value="Income">기준소득기준</option>
					 				<option value="none">안함</option>
								</select>
							</td>
							<th>기준소득월액</th>
							<td><input type="text" class="form-control" /></td>
						</tr>
						<tr>
							<th>고용보험</th>
							<td>
								<select>
					  				<option value="autoSum">자동계산</option>
					  				<option value="Income">기준소득기준</option>
					 				<option value="none">안함</option>
								</select>
							</td>
							<th>기준소득월액</th>
							<td><input type="text" class="form-control" /></td>
						</tr>
						<tr>
							<th>배우자공제</th>
							<td colspan="3">
								<select>
					  				<option value="autoSum">자동계산</option>
					  				<option value="Income">기준소득기준</option>
					 				<option value="none">안함</option>
								</select>
							</td>
						</tr>
						<tr>
							<th>부양가족수(본인 및 배우자 제외)</th>
							<td><input type="text" class="form-control" /></td>
							<th>부양가족중 20세 미만 수</th>
							<td><input type="text" class="form-control" /></td>
						</tr>
					</table>
					<div class="btn_group">
						<a href="../../emp/read" class="btn btn-default pull-left">목록</a>
						<input type="submit" id="submit" class="btn btn-primary pull-right" value="등록완료">
					</div>
				</form>
			  </div>
			</div>
</body>
</html>