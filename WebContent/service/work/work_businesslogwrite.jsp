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
		<%@ include file="../common/left_menu_work.jsp" %>
		<div class="contents">
			<h2>업무일지등록</h2>
			<form action="../work/insertBusinessLog">
				<table class="table">
					<tr>
						<th>업무보고일</th>
						<td><input type="date" class="form-control" name="business_date"></td>
					</tr>
					<tr>
						<th>부서</th>
						<td><input type="text" class="form-control" name="business_dept"></td>
					</tr>
					<tr>
						<th>거래처</th>
						<td><input type="text" class="form-control" name="business_client"></td>
					</tr>
					<tr>
						<th>프로젝트</th>
						<td><input type="text" class="form-control" name="business_project"></td>
					</tr>
					<tr>
						<th>첨부파일</th>
						<td><input type="file" class="form-control" name="file" value="파일첨부"></td>
					</tr>
					<tr>
						<th>업무일지 번호</th>
						<td><input type="text" class="form-control" name="business_no"></td>
					</tr>
					<tr>
						<th>업무 내용</th>
						<td><input type="text" class="form-control" name="business_content"></td>
					</tr>
				</table>
				<div class="btn_group">
					<a class="btn btn-default pull-left" href="../work/selectBusinessLog">목록</a>
					<input type="submit" class="btn btn-primary pull-right" value="저장">
				</div>
			</form>
		</div>
	</div>
</body>
</html>