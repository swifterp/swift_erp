<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근태코드 추가 페이지</title>
<%@ include file="../common/ui_common.jsp" %>
</head>
<body>
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">
		<%@ include file="../common/left_menu_attend.jsp" %>	
		<div class="contents">
			<form action="../attend/attend_CodeInsert">
				<table class="table">
					<tr>
						<th>근태코드</th>
						<td><input type="text" class="form-control" id="attend_code" name="attend_code" value=""></td>
					</tr>
					<tr>
						<th>근태코드명</th>
						<td><input type="text" class="form-control" id="attend_name" name="attend_name" value=""></td>
					</tr>
					<tr>
						<th>근태코드상태</th>
						<td>
							<select id="attend_code_state" name="attend_code_state" class="form-control">
								<option value="사용">사용</option>
								<option value="중지">중지</option>	  
							</select>
						</td>
					</tr>
					<tr>
						<th>비고</th>
						<td><input type="text"class="form-control"  id="attend_c_etc" name="attend_c_etc" value=""></td>
					</tr>
				</table>
				<div class="btn_group">
					<input type="submit" class="btn btn-primary pull-right" value="저장">
				</div>
			</form>
		</div>
	</div>
</body>
</html>