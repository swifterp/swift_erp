<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import= "java.util.Map, java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>월별 출퇴근 기록페이지</title>
<%@ include file="../common/ui_common.jsp" %>
</head>
<body>
<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">		
		<%@ include file="../common/left_menu_work.jsp" %>
		<div class="contents">
			<h1>월별 출퇴근 기록</h1>
			<form id="search_month" action="../work/selectMonthWork">
				<div class="input-group">
					<input type="month" class="form-control" name="search_month" min="2018-01" value="2019-01">
					<span class="input-group-btn" style="width:100px;">
						<input type="submit" class="btn btn-default" value="조회" style="margin-bottom:20px;">
					</span>
				</div>
			</form>	

			<table class="table">
				<thead>
					<tr>
						<th>근무일자</th>
						<th>사원이름</th>
						<th>attend_open</th>
						<th>attend_close</th>
					</tr>
				</thead>
				<tbody>
					<%
						List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
						if(lst != null){
							for(int i=0;i<lst.size();i++){
					%>
					<tr>
						<td><%= String.valueOf(lst.get(i).get("ATTEND_DATE")).substring(0,10) %> </td>
						<td><%= String.valueOf(lst.get(i).get("EMP_NAME")) %> </td>
						<td><%= lst.get(i).get("ATTEND_OPEN") %> </td>
						<td><%= lst.get(i).get("ATTEND_CLOSE") %> </td>
					</tr>
					<%
							}
						}
				 	%>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>