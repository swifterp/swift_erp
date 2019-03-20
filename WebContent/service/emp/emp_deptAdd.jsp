<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<script type = "text/javascript" src ="../../js/jquery.min.js"></script>
<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
</head>
<body>
	<div class="container">
		<div class="contents">
			<form action="../../emp/deptAdd">					
				<table class="table">
					<%
						List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
						if(lst != null){
							out.print(lst.size());
							for(int i=0;i<lst.size();i++){
					%>
					<tr>
						<th>부서코드</th>
						<td><input type="text" value="<%= String.valueOf(lst.get(i).get("DEPTNO")) %>" class="form-control"></td>
					</tr>
					<tr>
						<th>부서명</th>
						<td><input type="text" name="dname" class="form-control"></td>
					</tr>
					<%
							}
						}
				 	%>
				</table>
				<div class="btn_group">
					<a class="btn btn-primary" href="emp_deptList.jsp">목록</a>
					<button class="btn btn-primary pull-right" type="submit">등록완료</button>
				</div>

			</form>
			
		</div>
	</div>
</body>
</html>