<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.Map" %>
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
				<% Map<String, String> map = (Map<String,String>)request.getAttribute("map");
				%>
				<h2>명함수정</h2>
				<form  action="../client/updateNameCardInfo">
				<table class="table">
					<tr>
						<th>이름</th>
						<td><input type="text" class="form-control" name="NAMECARD_NAME" value="${map.get("NAMECARD_NAME")}"></td>
					</tr>
					<tr>
						<th>부서</th>
						<td><input type="text" class="form-control" name="NAMECARD_DIVISION" value="${map.get("NAMECARD_DIVISION")}"></td>
					</tr>
					<tr>
						<th>직급</th>
						<td><input type="text" class="form-control" name="NAMECARD_POSITION" value="${map.get("NAMECARD_POSITION")}"></td>
					</tr>
					<tr>
						<th>생년월일</th>
						<td><input type="text" class="form-control" name="NAMECARD_BIRTH" value=<%= String.valueOf(map.get("NAMECARD_BIRTH")).substring(0,10) %>></td>
						
					</tr>
					<tr>
						<th>전화</th>
						<td><input type="text" class="form-control" name="NAMECARD_TEL" value="${map.get("NAMECARD_TEL")}"></td>
					</tr>
					<tr>
						<th>모바일</th>
						<td><input type="text" class="form-control" name="NAMECARD_PHONE" value="${map.get("NAMECARD_PHONE")}"></td>			
					</tr>
					<tr>
						<th>FAX</th>
						<td><input type="text" class="form-control" name="NAMECARD_FAX" value="${map.get("NAMECARD_FAX")}"></td>		
					</tr>
					<tr>
						<th>EMAIL</th>
						<td><input type="text" class="form-control" name="NAMECARD_EMAIL" value="${map.get("NAMECARD_EMAIL")}"></td>
					</tr>
					<tr>
						<th>홈페이지</th>
						<td><input type="text" class="form-control" name="NAMECARD_HOMEPAGE" value="${map.get("NAMECARD_HOMEPAGE")}"></td>		
					</tr>
					<tr>
						<th>잠재거래처</th>
						<td><input type="text" class="form-control" name="NAMECARD_CLIENT" value="${map.get("NAMECARD_CLIENT")}"></td>			
					</tr>
					<tr>
						<th>명함그룹코드</th>
						<td><input type="text" class="form-control" name="NAMECARD_GROUP_CODE" value="${map.get("NAMECARD_GROUP_CODE")}"></td>
					</tr>
					<tr>
						<th>명함그룹이름</th>
						<td><input type="text" class="form-control" name="NAMECARD_GROUP_NAME" value="${map.get("NAMECARD_GROUP_NAME")}"></td>			
					</tr>
					<tr>
						<th>주소</th>
						<td><input type="text" class="form-control" name="NAMECARD_ADDRESS" value="${map.get("NAMECARD_ADDRESS")}"></td>	
					</tr>
					<tr>
						<th>적요</th>
						<td><input type="text" class="form-control" name="NAMECARD_CONTENT" value="${map.get("NAMECARD_CONTENT")}"></td>
					</tr>
			</table>
			<div class="btn_group">
				<input type="hidden" name="NAMECARD_CODE" value="${map.get("NAMECARD_CODE")}" >
				<a class="btn btn-default pull-left" href="../client/selectNameCardInfo">목록</a>
				<input type="submit" class="btn btn-primary pull-right" value="수정 ">
			</div>
			</form>
		</div>
	</div>
</body>
</html>