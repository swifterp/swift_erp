<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>emp_mainpage</title>
<script type="text/javascript">
	function goEmpAdd(){
		location.href = "../service/emp/emp_add.jsp";	
	}
</script>

<script type="text/javascript">
	function empView(empno){
		location.href = "../emp/view?empno="+empno;
	}
</script>
<%
	List list = (List)request.getAttribute("list");
	HashMap map0 = (HashMap)list.get(0);
	String empno0 = (String)map0.get("EMPNO");
%>
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
			<td>�󼼺���</td>
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
			<td><input type="button" onclick="javascript:empView('<%= empno0 %>')" value="�󼼺���"></td>
		</tr>
		<tr>
			<td>${list.get(1).get("EMPNO") }</td>
			<td>${list.get(1).get("EMP_NAME") }</td>
			<td>${list.get(1).get("EMP_RESIDENT_NUMBER")}</td>
			<td>${list.get(1).get("DNAME")}</td>
			<td>${list.get(1).get("RANK_NAME")}</td>
			<td>${list.get(1).get("EMP_JOIN_DATE")}</td>
			<td><input type="button" value="�̸���"></td>
			<td><input type="button" value="�μ�"></td>
			<td><input type="button" onclick="javascript:empView('${list.get(1).get('EMPNO') }')" value="�󼼺���"></td>
		</tr>
		<tr>
			<td>${list.get(2).get("EMPNO") }</td>
			<td>${list.get(2).get("EMP_NAME") }</td>
			<td>${list.get(2).get("EMP_RESIDENT_NUMBER")}</td>
			<td>${list.get(2).get("DNAME")}</td>
			<td>${list.get(2).get("RANK_NAME")}</td>
			<td>${list.get(2).get("EMP_JOIN_DATE")}</td>
			<td><input type="button" value="�̸���"></td>
			<td><input type="button" value="�μ�"></td>
			<td><input type="button" onclick="javascript:empView('${list.get(2).get('EMPNO') }')" value="�󼼺���"></td>
		</tr>
    </tbody>

</table>
<input type="button" onclick="javascript:goEmpAdd()" value="������">
</body>
</html>