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

<!-- 날짜선택 관련 -->
<link rel="stylesheet" href="../../css/datepicker.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
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
	
	function deptList(){
		location.href = "../../emp/deptRead";	
	}	
</script> 
	

<style>
	.essential {color:red;}
</style>

</head>
<body>
	<div class="container">
		<div class="contents">
			<form action="../../emp/add">
			<table class="table table-striped">
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
						<td>사원번호 <span class="essential">*</span></td>
						<td class="input-group">
							<input type="text" id="emp_number" name="emp_number" class="form-control" placeholder="사원번호">
							<span class="input-group-btn">
								<button type="button" class="btn btn-info empNumCheck">중복확인</button> 
							</span>
						</td>
						<td>사원명 <span class="essential">*</span></td>
						<td><input type="text" name="emp_name" class="form-control" placeholder="사원이름"></td>
					</tr>
					<tr>	
						<td>주민번호</td>
						<td><input type="text" name="emp_resident_number" class="form-control" placeholder="주민등록번호"></td>
						<td>이메일</td>
						<td><input type="email" name="emp_email" class="form-control" placeholder="사원이메일"></td>
					</tr>
					<tr>	
						<td>전화번호</td>
						<td><input type="text" name="emp_tel" class="form-control" placeholder="전화번호"></td>
						<td>모바일</td>
						<td><input type="text" name="emp_mobile" class="form-control" placeholder="모바일"></td>
					</tr>
					<tr>	
						<td>주소</td>
						<td class="input-group">
							<input class="form-control" placeholder="우편번호" name="emp_addr1" id="emp_addr1" type="text" readonly="readonly" style="display:inline-block; width:" >
							<span class="input-group-btn">
								<button type="button" class="btn btn-default" onclick="execPostCode();">검색</button> 
							</span>
						</td>
						<td colspan="2"><input class="form-control" placeholder="도로명 주소" name="emp_addr2" id="emp_addr2" type="text" readonly="readonly" /></td>
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
									<td>입사일자</td>
									<td>	
										<input type="text" name="emp_join_date" class="form-control" id="datepicker" placeholder="입사일자" style="width:80%; display:inline-block; margin-right:5px;">
									</td>
									<td>퇴사일자</td>
									<td>		
										<input type="text" name="emp_retire_date" class="form-control" id="datepicker2" placeholder="퇴사일자" style="width:80%; display:inline-block; margin-right:5px;">
									</td>
									<td>퇴사사유</td>
									<td><input type="text" name="emp_retire_reason" class="form-control" placeholder="퇴사사유"></td>
								</tr>
								<tr>
									<td>부서 <span class="essential">*</span></td>
									<td class="input-group">
										<input type="text" name="deptno" class="form-control" placeholder="부서">
										<span class="input-group-btn">
											 <button class="btn btn-default" type="button" data-toggle="modal" data-target="#exampleModal">Go!</button>
										</span>
									</td>
									<td>직급 <span class="essential">*</span></td>
									<td class="input-group">
										<input type="text" name="rank_no" class="form-control" placeholder="직급">
										<span class="input-group-btn">
											 <button class="btn btn-default" type="button">Go!</button>
										</span>
									</td>
									<td>직책</td>
									<td class="input-group">
										<input type="text" name="duty_no" class="form-control" placeholder="직책">
										<span class="input-group-btn">
											 <button class="btn btn-default" type="button">Go!</button>
										</span>
									</td>
								</tr>
								<tr>
									<td>은행명</td>
									<td class="input-group">
										<input type="text" name="bank_no" class="form-control" placeholder="은행명">
										<span class="input-group-btn">
											 <button class="btn btn-default" type="button">Go!</button>
										</span>
									</td>
									<td>계좌번호</td>
									<td><input type="text" name="emp_account_num" class="form-control" placeholder="계좌번호"></td>
									<td>예금주</td>
									<td><input type="text" name="emp_account_holder" class="form-control" placeholder="예금주"></td>
								</tr>
								<tr>
									<td>사진첨부</td>		
									<td colspan="5">
										<input type="file" name="emp_profile" class="form-control" placeholder="사진선택">
									</td>
								</tr>
								<tr>
									<td>첨부파일</td>
									<td colspan="5">
										<input type="file" name="emp_attach_file" class="form-control" placeholder="첨부파일선택">
									</td>
								</tr>
								<tr>
									<td>비고</td>
									<td colspan="5"><textarea class="form-control" name="emp_etc"></textarea></td>
								</tr>
							</tbody>
						</table>
					</tr>
				</tbody>
			</table>
			<div class="btn_group">
				<a href="emp_mainpage.jsp" class="btn btn-primary pull-left">목록</a>
				<input type="submit" id="submit" class="btn btn-primary pull-right" value="등록완료" disabled="disabled">
			</div>
		</form>
			<!-- Button trigger modal -->
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
    		<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">부서선택</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<table class="table table-striped">
						<thead>
							<tr>
								<td>부서코드</td>
								<td>부서명</td>
							</tr>
						</thead>
					    <tbody>
							<%
								List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
								if(lst != null){
									out.print(lst.size());
									for(int i=0;i<lst.size();i++){
							%>
							<tr>
								<td><%= String.valueOf(lst.get(i).get("DEPTNO")) %> </td>
								<td><%= lst.get(i).get("DNAME") %></td>
							</tr>
							<%
									}
								}
						 	%>
					    </tbody>
					</table>
	      		</div>
		      	<div class="modal-footer">
		        	<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
		        	<button type="button" class="btn btn-primary">선택</button>
				</div>
    		</div>
		</div>
	</div>
	<script> 
		$(".empNumCheck").click(function(){
		 var query = {emp_number : $("#emp_number").val()};
		 
		 $.ajax({
		  url : "../../emp/empNumCheck",
		  type : "post",
		  data : query,
		  success : function(data) {
		  
		   if(data == 1) {
		    $(".result .msg").text("사용 불가");
		    $(".result .msg").attr("style", "color:#f00"); 

		    $("#submit").attr("disabled","disabled");    
		   } else {
		    $(".result .msg").text("사용 가능");
		    $(".result .msg").attr("style", "color:#00f");

		    $("#submit").removeAttr("disabled"); 
		   }
		  }
		 });  // ajax 끝
		});

		$("#emp_number").keyup(function(){
			 $(".result .msg").text("아이디를 확인해주십시오.");
			 $(".result .msg").attr("style", "color:#000");
			 
			 $("#submit").attr("disabled", "disabled");
			 
			});
	</script>
</body>
</html>