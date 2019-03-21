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
<script>
	<!--사원삭제-->
	function deptView(deptno){
		location.href = "../emp/deptView?deptno="+deptno;	
	}
</script>
</head>
<body>
	<div class="container">
		<div class="contents">
			<form action="../emp/deptDel">
				<table class="table">
					<thead>
						<tr>
							<th>부서코드</th>
							<th>부서명</th>
							</th></th>
						</tr>
					</thead>
					<%
						List<Map<String, Integer>> lst = (List<Map<String,  Integer>>)request.getAttribute("list");
						if(lst != null){
							for(int i=0;i<lst.size();i++){
					%>
					<tbody>
						<tr>
							<td><%= String.valueOf(lst.get(i).get("DEPTNO")) %></td>
							<td><%= lst.get(i).get("DNAME") %></td>
							<td><button class="btn btn-primary pull-left" onclick="javascript:deptView(<%= String.valueOf(lst.get(i).get("DEPTNO")) %>)">수정</button></td>
						</tr>
					</tbody>
					<%
							}
						} 
					%>
				</table>
				<input type="text" placeholder="삭제할 부서번호입력" name="deptno">
				<div class="btn_group">
					<button type="submit" class="btn btn-primary pull-left" href="../emp/deptDel">삭제</button>
					<a class="btn btn-primary pull-right" href="../service/emp/emp_deptAdd.jsp">등록</a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>