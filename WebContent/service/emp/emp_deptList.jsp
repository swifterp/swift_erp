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
<script>
$(document).ready(function(){
	$("img").hover(function() {
	var temp = $(this).attr("src");
	$(this).attr("src", $(this).attr("data-alt"));
	$(this).attr("data-alt", temp);
	});
	})
</script>
</head>
<body>
<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">
		<%@ include file="../common/left_menu_emp.jsp" %>
		<div class="contents">
			<h1>부서목록</h1>
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
							<td><a onclick="javascript:deptView(<%= String.valueOf(lst.get(i).get("DEPTNO")) %>)" href="#"><img src="../../images/icon_pencil_0.png" data-alt="../../images/icon_pencil_1.png" style="width:35px; height:35px;"/></a></td>
							<td><a onclick="javascript:deptDel(<%= String.valueOf(lst.get(i).get("DEPTNO")) %>)" href="#"><img src="../../images/icon_delete_0.png" data-alt="../../images/icon_delete_1.png" style="width:35px; height:35px;"/></a></td>
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