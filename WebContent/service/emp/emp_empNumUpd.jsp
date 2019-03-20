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
$(document).ready(function () {
    $('#emp_num').click(function () {
      var radioVal = $('input:checkbox[id="emp_num"]').val();
      $('input[name="emp_number_0"]').val([var radioVal]);
    });
  });
</script>
</head>
<body>
	<div class="container">
		<div class="contents">
			<form action="../../emp/empNumUpd">
			<table class="table">
				<thead>
					<tr>
						<th>변경 전</th>
						<th>변경 후</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" class="form-control" name="emp_number_0" value=""></td>
						<td><input type="text" class="form-control" name="emp_number_1"></td>
					</tr>
				</tbody>
			</table>
			<table class="table" style="margin-top:50px">
				<thead>
					<th>선택</th>
					<th>사원번호</th>
					<th>사원명</th>
					<th>부서명</th>
				</thead>
				<%
					List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
					if(lst != null){
						for(int i=0;i<lst.size();i++){
				%>
				<tbody>
					<td><input type="checkbox" id="emp_num" value="${lst.get(i).get("EMP_NUMBER")}"></td>
					<td><%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %></td>
					<td><%= lst.get(i).get("EMP_NAME") %></td>
					<td><%= lst.get(i).get("DNAME") %></td>
				</tbody>
				<%
						}
					}
			 	%>
			</table>
			<button type="submit">사원번호변경</button>
			</form>
		</div>
	</div>
</body>
</html>