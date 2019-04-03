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
			<h2>거래처정보수정</h2>
			<form action="../client/updateClientInfo">
				<table class="table">
					<tr>
						<th>업체명</th>
						<td><input type="text" class="form-control" name="CLIENT_NAME" class="form-control" value="${map.get("CLIENT_NAME")}"></td>
					</tr>
					<tr>
						<th>업체구분</th>
						<td><input type="text" class="form-control" name="CLIENT_DIVISION" value="${map.get("CLIENT_DIVISION")}"></td>
					</tr>
					<tr>
						<th>전화</th>
						<td><input type="text" class="form-control" name="CLIENT_TEL" value="${map.get("CLIENT_TEL")}"></td>
					</tr>
					<tr>
						<th>모바일</th>
						<td><input type="text" class="form-control" name="CLIENT_PHONE" value="${map.get("CLIENT_PHONE")}"></td>
					</tr>
					<tr>
						<th>팩스</th>
						<td><input type="text" class="form-control" name="CLIENT_FAX" value="${map.get("CLIENT_FAX")}"></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input type="text" class="form-control" name="CLIENT_EMAIL" value="${map.get("CLIENT_EMAIL")}"></td>
					</tr>
					<tr>
						<th>홈페이지</th>
						<td><input type="text" class="form-control" name="CLIENT_HOMEPAGE" value="${map.get("CLIENT_HOMEPAGE")}"></td>
					</tr>
					<tr>
						<th>기타</th>
						<td><input type="text" class="form-control" name="CLIENT_ETC" value="${map.get("CLIENT_ETC")}"></td>
					</tr>
					<tr>
						<th>주소</th>
						<td><input type="text" class="form-control" name="CLIENT_ADDRESS" value="${map.get("CLIENT_ADDRESS")}"></td>
					</tr>
					<tr>
						<th>적요</th>
						<td><input type="text" class="form-control" name="CLIENT_CONTENT" value="${map.get("CLIENT_CONTENT")}"></td>
					</tr>
				</table>
				<div class="btn_group">
					<input type="hidden" name="CLIENT_CODE" value="${map.get("CLIENT_CODE")}">
					<a href="../client/selectClientInfo" class="btn btn-default pull-left">목록</a>
					<input type="submit" class="btn btn-primary pull-right" value="수정 ">
				</div>
			</form>
		</div>
	</div>
</body>
</html>