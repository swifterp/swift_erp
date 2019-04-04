<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emp_mainpage</title>
<%@ include file="../common/ui_common.jsp" %>
<script type="text/javascript">
	<!--인사발령등록 페이지로 이동-->
	function goAppointAdd(){
		location.href = "../emp/emp_appointAdd.jsp";	
	}
	<!--인사발령상세보기-->
	function appointView(emp_appoint_no){
		location.href = "../emp/appointView?emp_appoint_no="+emp_appoint_no;
	}
	<!--인사발령삭제-->
	function appointDel(emp_appoint_no){
		location.href = "../emp/appointDel?emp_appoint_no="+emp_appoint_no;	
	}
</script>
</head>
<body>

			<h3>인사발령목록</h3>
			<table class="table">
				<thead>
					<tr>
						<th>발령일자</th>
						<th>사번</th>
						<th>성명</th>
						<th>발령직급</th>
						<th>발령부서</th>
						<th>수정</th>
						<th>삭제</th>
					</tr>
				</thead>
			    <tbody>
					<%
						List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
						if(lst != null){
							for(int i=0;i<lst.size();i++){
					%>
					<tr>
						<td><%= String.valueOf(lst.get(i).get("EMP_APPOINT_DATE")) %></td>
						<td><%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %></td>
						<td><%= lst.get(i).get("EMP_NAME") %></td>
						<td><%= lst.get(i).get("NEXT_RANK") %></td>
						<td><%= lst.get(i).get("NEXT_DEPT") %></td>
						<td><button class="btn btn-default" onclick="javascript:appointView(<%= String.valueOf(lst.get(i).get("EMP_APPOINT_NO")) %>)">수정</button></td>
						<td><a class="btn btn-default" onclick="javascript:appointDel(<%= String.valueOf(lst.get(i).get("EMP_APPOINT_NO")) %>)">삭제</a></td>
					</tr>
					<%
							}
						}
				 	%>
			    </tbody>
			</table>
			<div class="btn_group">
				<a class="btn btn-primary pull-right" onclick="javascript:goAppointAdd()">등록</a>
			</div>

</body>
</html>