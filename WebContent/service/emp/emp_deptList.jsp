<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../common/ui_common.jsp" %>
<script>
	<!--부서수정-->
	function deptView(deptno){
		location.href = "../emp/deptView?deptno="+deptno;	
	}
	<!--부서삭제-->
	function deptDel(deptno){
		location.href = "../emp/deptDel?deptno="+deptno;	
	}
</script>
</head>
<body>
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">
		<%@ include file="../common/left_menu_emp.jsp" %>
		<div class="contents">
			<h3>부서목록</h3>
			<form action="../emp/deptDel">
				<table class="table">
					<thead>
						<tr>
							<th>부서코드</th>
							<th>부서명</th>
							<th>수정</th>
							<th>삭제</th>
						</tr>
					</thead>
					<%
						List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
						if(lst != null){
							for(int i=0;i<lst.size();i++){
					%>
					<tbody>
						<tr>
							<td><%= String.valueOf(lst.get(i).get("DEPTNO")) %></td>
							<td><%= lst.get(i).get("DNAME") %></td>
							<td><a class="btn btn-default" onclick="javascript:deptView(<%= String.valueOf(lst.get(i).get("DEPTNO")) %>)">수정</a></td>
							<td><a class="btn btn-default" onclick="javascript:deptDel(<%= String.valueOf(lst.get(i).get("DEPTNO")) %>)">삭제</a></td>
						</tr>
					</tbody>
					<%
							}
						} 
					%>
				</table>
				<div class="btn_group">
					<a class="btn btn-primary pull-right" href="../emp/emp_deptAdd.jsp">등록</a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>