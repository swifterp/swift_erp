<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"">
<title>Insert title here</title>
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
		           
		           
		           $("[name=mem_addr1]").val(data.zonecode);
		           $("[name=mem_addr2]").val(fullRoadAddr);
		           
		           /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
		           document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
		           document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
		       }
		    }).open();
	}
</script>
<style>
    body {background:url('../../images/bg.jpg') no-repeat 0 #FFF; font-size:13px;}
	.container {background-color:white; margin:100px auto; width:400px; padding:20px; border-radius: 1rem;}
	table {border:none;}
</style>
</head>
<body class="text-center">
	<div class="container">
		<form action="../../mem/add">
			<table class="table table-striped">
				<colgroup>
					<col width="30%" />
					<col width="70%" />
				</colgroup>
				<tbody>
					<tr>
						<td>이메일 *</td>
						<td class="input-group">
							<input type="text" name="mem_email_id" class="form-control" placeholder="이메일아이디">
							<span class="input-group-btn">
								<button type="button" class="btn btn-info">메일인증</button> 
							</span>
						</td>
					</tr>
					<tr>
						<td rowspan="2">비밀번호 *</td>
						<td><input type="text" name="mem_pw" class="form-control" placeholder="비밀번호"></td>
					</tr>
					<tr>
						<td><input type="text" name="mem_pw_check" class="form-control" placeholder="비밀번호 확인"></td>
					</tr>
					<tr>	
						<td>이름 *</td>
						<td><input type="text" name="mem_name" class="form-control" placeholder="이름"></td>
					</tr>
					<tr>
						<td>휴대폰번호 *</td>
						<td class="input-group">
							<input type="text" name="mem_mobile" class="form-control" placeholder="-없이 입력">
							<span class="input-group-btn">
								<button type="button" class="btn btn-info">인증번호 받기</button> 
							</span>
						</td>
					</tr>
					<tr>	
						<td rowspan="2">주소</td>
						<td class="input-group">
							<input class="form-control" placeholder="우편번호" name="mem_addr1" id="mem_addr1" type="text" readonly="readonly" style="display:inline-block; width:" >
							<span class="input-group-btn">
								<button type="button" class="btn btn-info" onclick="execPostCode();">주소검색</button> 
							</span>
						</td>
					</tr>
					<tr>
						<td><input class="form-control" placeholder="도로명 주소" name="mem_addr2" id="mem_addr2" type="text" readonly="readonly" /></td>
					</tr>
					<tr>
						<td>전화</td>
						<td><input type="text" name="mem_tel" class="form-control" placeholder="전화번호"></td>
					</tr>
				</tbody>
			</table>
			<a href="login.jsp" class="btn btn-default">목록</a>
			<input type="submit" class="btn btn-primary" value="등록완료">
		</form>
	</div>
</body>
</html>