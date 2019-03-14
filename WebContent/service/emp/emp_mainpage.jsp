<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>emp_mainpage</title>
<script type="text/javascript">
	function goEmpAdd(){
		location.href = "../../../swift_erp/service/emp/emp_add.jsp";	
	}
</script>
</head>
<body>
<h2>사원 목록</h2>
<table style="border:1px solid #ccc">
	<thead>
		<tr>
			<td>사번</td>
			<td>성명</td>
			<td>주민등록번호</td>
			<td>부서</td>
			<td>직급</td>
			<td>입사일자</td>
			<td>Email</td>
			<td>인쇄</td>
		</tr>
	</thead>
    <tbody>
		<tr>
			<td>${list.get(0).get("EMPNO") }</td>
			<td>${list.get(0).get("EMP_NAME") }</td>
			<td>${list.get(0).get("EMP_RESIDENT_NUMBER")}</td>
			<td>${list.get(0).get("DNAME")}</td>
			<td>${list.get(0).get("RANK_NAME")}</td>
			<td>${list.get(0).get("EMP_JOIN_DATE")}</td>
			<td><input type="button" value="이메일"></td>
			<td><input type="button" value="인쇄"></td>
		</tr>
		<tr>
			<td>${list.get(1).get("EMPNO") }</td>
			<td>${list.get(1).get("EMP_NAME") }</td>
			<td>${list.get(1).get("EMP_RESIDENT_NUMBER")}</td>
			<td>${list.get(1).get("DNAME")}</td>
			<td>${list.get(1).get("RANK_NAME")}</td>
			<td>${list.get(1).get("EMP_JOIN_DATE")}</td>
			<td><input type="button" value="이메일 "></td>
			<td><input type="button" value="인쇄"></td>
		</tr>
    </tbody>
</table>
<input type="button" onclick="javascript:goEmpAdd()" value="사원등록">
</body>
</html>