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
			<h2>거래처정보등록</h2>
			<form action="../client/insertClientInfo">
				<table class="table">
					<tr>
						<th>업체구분</th>
						<td><input type="text" name="CLIENT_DIVISION" class="form-control"></td>
					</tr>
				    <tr>
						<th>잠재거래처명</th>
						<td><input type="text" name="CLIENT_NAME" class="form-control"></td>
					</tr>
					<tr>
						<th>전화</th>
						<td><input type="text" name="CLIENT_TEL" class="form-control"> </td>
					</tr>
					<tr>
						<th>모바일</th>
						<td><input type="text" name="CLIENT_PHONE" class="form-control"> </td>
					</tr>
					<tr>
						<th>팩스</th>
						<td><input type="text" name="CLIENT_FAX" class="form-control"> </td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input type="text" name="CLIENT_EMAIL" class="form-control"></td>
					</tr>
					<tr>
						<th>홈페이지</th>
						<td><input type="text" name="CLIENT_HOMEPAGE" class="form-control"></td>
					</tr>
					<tr>
						<th>기타</th>
						<td><input type="text" name="CLIENT_ETC" class="form-control"></td>
					</tr>
					<tr>
						<th>주소</th>
						<td><input type="text" name="CLIENT_ADDRESS" class="form-control"></td>
					</tr>
					<tr>
						<th>적요</th>
						<td><input type="text" name="CLIENT_CONTENT" class="form-control"></td>
					</tr>
				</table>
				<div class="btn_group">
					<a href="../client/selectClientInfo" class="btn btn-default pull-left">목록</a>
					<input type="submit" class="btn btn-primary pull-right" value="저장">
				</div>
			</form> 
		</div>
	</div>
</body>
</html>