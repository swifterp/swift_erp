<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../common/ui_common.jsp" %>
</head>
<body>
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">
		<%@ include file="../common/left_menu_client.jsp" %>	
		<div class="contents">
			<form action="../client/insertNameCardInfo">
				<table class="table">
					<tr>
						<th>이름</th>
						<td><input type="text" class="form-control" name="NAMECARD_NAME"></td>
					</tr>
					<tr>
						<th>잠재거래처명</th>
						<td><input type="text" class="form-control" name="CLIENT_NAME"></td>
					</tr>
					<tr>
						<th>부서</th> 
						<td><input type="text" class="form-control" name="NAMECARD_DIVISION"></td>
					</tr>
					<tr>
						<th>직급</th> 
						<td><input type="text" class="form-control" name="NAMECARD_POSITION"></td>
					</tr>
					<tr>
						<th>생년월일</th> 
						<td><input type="text" class="form-control" name="NAMECARD_BIRTH"></td>
					</tr>
					<tr>
						<th>전화</th>
						<td><input type="text" class="form-control" name="NAMECARD_TEL"></td>
					</tr>
					<tr>
						<th>모바일</th> 
						<td><input type="text" class="form-control" name="NAMECARD_PHONE"></td>
					</tr>
					<tr>
						<th>FAX</th> 
						<td><input type="text" class="form-control" name="NAMECARD_FAX"></td>
					</tr>
					<tr>
						<th>E-MAIL</th>
						<td><input type="text" class="form-control" name="NAMECARD_EMAIL"></td>
					</tr>
					<tr>
						<th>홈페이지</th>
						<td><input type="text" class="form-control" name="NAMECARD_HOMEPAGE"></td>
					</tr>
					<tr>
						<th>잠재거래처</th>
						<td><input type="text" class="form-control" name="NAMECARD_CLIENT"></td>
					</tr>	
					<tr>		
						<th>명함그룹</th>
						<td><input type="text" class="form-control" name="NAMECARD_GROUP_CODE"></td>
					</tr>
					<tr>	
						<th>명함그룹이름</th>
						<td><input type="text" class="form-control" name="NAMECARD_GROUP_NAME"></td>
					</tr>
					<tr>
						<th>주소</th> 
						<td><input type="text" class="form-control" name="NAMECARD_ADDRESS"></td>
					</tr>
					<tr>
						<th>적요</th> 
						<td><input type="text" class="form-control" name="NAMECARD_CONTENT"></td>
					</tr>
				</table>	
				<div class="btn_group">
					<a class="btn btn-default pull-left" href="../client/selectNameCardInfo">목록</a>
					<input type="submit" class="btn btn-primary pull-right" value="저장">
				</div>
			</form> 
		</div>
	</div>
</body>
</html>