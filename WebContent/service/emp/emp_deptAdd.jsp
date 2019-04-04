<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map, java.util.HashMap" %>
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
		<%@ include file="../common/left_menu_emp.jsp" %>
		<div class="contents">
			<h3>부서등록</h3>
			<form action="../emp/deptAdd">					
				<table class="table">
					<tr>
						<th>부서코드</th>
						<td><input type="text" name="deptno" class="form-control"></td>
					</tr>
					<tr>
						<th>부서명</th>
						<td><input type="text" name="dname" class="form-control"></td>
					</tr>
				</table>
				<div class="btn_group">
					<a class="btn btn-primary" href="../emp/deptRead">목록</a>
					<button class="btn btn-primary pull-right" type="submit">등록완료</button>
				</div>
			</form>	
		</div>
	</div>
</body>
</html>