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
		<%@ include file="../common/left_menu_emp.jsp" %>
		<div class="contents">
			<h3>부서 조회/수정</h3>
			<form action="../emp/deptUpd">
				<table class="table">
					<tr>
						<th>부서코드</th>
						<td><input type="text" name="deptno" value="${list.get(0).get("DEPTNO")}" class="form-control" readonly="readonly" style="background-color:#eee;"></td>
					</tr>
					<tr>
						<th>부서명</th>
						<td><input type="text" name="dname" value="${list.get(0).get("DNAME")}" class="form-control"></td>
					</tr>
				</table>
				<div class="btn_group">
					<a class="btn btn-default" href="../emp/deptRead">목록</a>
					<button class="btn btn-primary pull-right" type="submit" >수정완료</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>