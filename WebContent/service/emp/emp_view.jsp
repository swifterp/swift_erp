<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emp_mainpage</title>

</head>
<body>
<h2>사원 목록</h2>
<form  action="../emp/update">
<table style="border:1px solid #ccc">
	<thead>
		<tr>
			<td>원래사번</td>
			<td>사번</td>
			<td>성명</td>
			<td>이메일</td>
		</tr>
	</thead>
    <tbody>
		<tr>
			<td><input type="text" name="emp_number_0" value="${list.get(0).get("EMP_NUMBER")}"></td>
			<td><input type="text" name="emp_number" value="수정할 사번입력"></td>
			<td><input type="text" name="emp_name" value="${list.get(0).get("EMP_NAME")}"></td>
			<td><input type="email" name="emp_email" value="${list.get(0).get("EMP_EMAIL")}"></td>
		</tr>
    </tbody>
</table>
<input type="submit" value="수정 ">
</form>
</body>
</html>