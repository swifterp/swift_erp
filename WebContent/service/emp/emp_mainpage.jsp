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
<h2>��� ���</h2>
<table style="border:1px solid #ccc">
	<thead>
		<tr>
			<td>���</td>
			<td>����</td>
			<td>�ֹε�Ϲ�ȣ</td>
			<td>�μ�</td>
			<td>����</td>
			<td>�Ի�����</td>
			<td>Email</td>
			<td>�μ�</td>
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
			<td><input type="button" value="�̸���"></td>
			<td><input type="button" value="�μ�"></td>
		</tr>
		<tr>
			<td>${list.get(1).get("EMPNO") }</td>
			<td>${list.get(1).get("EMP_NAME") }</td>
			<td>${list.get(1).get("EMP_RESIDENT_NUMBER")}</td>
			<td>${list.get(1).get("DNAME")}</td>
			<td>${list.get(1).get("RANK_NAME")}</td>
			<td>${list.get(1).get("EMP_JOIN_DATE")}</td>
			<td><input type="button" value="�̸��� "></td>
			<td><input type="button" value="�μ�"></td>
		</tr>
    </tbody>
</table>
<input type="button" onclick="javascript:goEmpAdd()" value="������">
</body>
</html>