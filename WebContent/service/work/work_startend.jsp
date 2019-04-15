<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Map, java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../common/ui_common.jsp" %>
</head>
<body>
<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">		
		<%@ include file="../common/left_menu_work.jsp" %>
		<div class="contents">
			<h1>출근 / 퇴근 입력</h1>
			<table class="table">
				<form action="../work/insertWorkStart">
					<tr>
						<th>출근 등록</th>
						<td class="input-group">
								<input type="text" class="form-control" name="EMPNO">
								<span class="input-group-btn">
									<input type="submit" class="btn btn-primary" value="출근">
								</span>
						</td>
					</tr>
				</form>
				<form action="../work/insertWorkEnd">
					<tr>
						<th>퇴근 등록</th>
						<td class="input-group">
							<input type="text" class="form-control" name="EMPNO">
							<span class="input-group-btn">
								<input type="submit" class="btn btn-primary" value="퇴근">
							</span>
						</td>
					</tr>
				</form>
			</table>
		</div>
	</div>
</body>
</html>