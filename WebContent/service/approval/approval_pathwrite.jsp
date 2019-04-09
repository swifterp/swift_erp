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
		<%@ include file="../common/left_menu_approval.jsp" %>
		<div class="contents">
			<h3>결재라인등록</h3>
			<form action="../approval/insertApprovalPath">
				<table class="table">
					<tr>
						<th>결재라인명</th>
						<td><input type="text" id="path_name" class="form-control" name="path_name"></td>
					</tr>
					<tr>
						<th>첫번째 결재방이름</th>
						<td><input type="text" id="path_firstname" class="form-control" name="path_firstname"></td>
					</tr>
					<tr>
						<th>첫번째 결재자</th>
						<td><input type="text" id="path_firstapproval" class="form-control" name="path_firstapproval" ></td>
					</tr>
					<tr>
						<th>첫번째 결재자 직급</th>
						<td><input type="text" id="path_firstposition" class="form-control" name="path_firstposition"></td>
					</tr>
					<tr>
						<th>두번째 결재방이름</th>
						<td><input type="text" id="path_secondname" class="form-control" name="path_secondname"></td>
					</tr>
					<tr>
						<th>두번째 결재자</th>
						<td><input type="text" id="path_secondapproval" class="form-control" name="path_secondapproval" ></td>
					</tr>
					<tr>
						<th>두번째 결재자 직급</th>
						<td><input type="text" id="path_secondposition" class="form-control" name="path_secondposition"></td>
					</tr>
					
				</table>
				<div class="btn_group">
					<input type="submit" href="../approval/selectApprovalPath" class="btn btn-default pull-left" value="목록">
					<input type="submit" class="btn btn-primary pull-right" value="확인">
				</div>
			</form>
		</div>
</body>
</html>