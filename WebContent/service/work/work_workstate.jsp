<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출퇴근현황 페이지 입니다</title>
<%@ include file="../common/ui_common.jsp" %>
</head>
<body>
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">
		<%@ include file="../common/left_menu_work.jsp" %>
		<div class="contents">
			<h2>출퇴근현황조회</h2>
			<form action="../work/selectEmpStateList">
				<div class="input-group">
					<input type="text" class="form-control" name="EMP_NAME" placeholder="사원조회">
					<span class="input-group-btn" style="width:100px;">
						<button type="submit" class="btn btn-default" style="margin-bottom:20px;">검색</button>
					</span>
				</div>
			</form>
			<form action="../work/selectDeptStateList">
				<div class="input-group">
					<input type="text" class="form-control" name="DEPT_NAME" placeholder="부서조회">
					<span class="input-group-btn" style="width:100px;">
						<button type="submit" class="btn btn-default" style="margin-bottom:20px;">검색</button>
					</span>
				</div>
			</form>
			<table class="table">
				<thead>
					<tr>
						<th>근무일자</th>
						<th>사원이름</th>
						<th>근무코드</th>
						<th>근무시간</th>
					</tr>
				</thead>
			    <tbody>
					<%
						List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
						if(lst != null){
							for(int i=0;i<lst.size();i++){
					%>
					<tr>
						<td><%= String.valueOf(lst.get(i).get("ATTEND_DATE")) %> </td>
						<td><%= String.valueOf(lst.get(i).get("EMP_NAME")) %> </td>
						<td><%= String.valueOf(lst.get(i).get("ATTEND_CODE")) %> </td>
						<td><%= String.valueOf(lst.get(i).get("ATTEND_TIME")) %> </td>
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