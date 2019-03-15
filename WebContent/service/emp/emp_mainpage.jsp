<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.Map, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>emp_mainpage</title>
<script type="text/javascript">
	<!--������-->
	function goEmpAdd(){
		location.href = "../service/emp/emp_add.jsp";	
	}
	<!--����󼼺���-->
	function empView(emp_number){
		location.href = "../emp/view?emp_number="+emp_number;
	}
	<!--�������-->
	function empUpd(emp_number){
		location.href = "../emp/update?emp_number="+emp_number;	
	}
	<!--�������-->
	function empDel(emp_number){
		location.href = "../emp/delete?emp_number="+emp_number;	
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
			<td>�󼼺���</td>
			<td>����</td>
		</tr>
	</thead>
    <tbody>
		<%
			List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
			if(lst != null){
				for(int i=0;i<lst.size();i++){
		%>
		<tr>
			<td><%= lst.get(i).get("EMP_NUMBER") %> </td>
			<td><%= lst.get(i).get("EMP_NAME") %></td>
			<td><%= lst.get(i).get("EMP_RESIDENT_NUMBER") %></td>
			<td><%= lst.get(i).get("DNAME") %></td>
			<td><%= lst.get(i).get("RANK_NAME") %></td>
			<td><%= lst.get(i).get("EMP_JOIN_DATE") %></td>
			<td><input type="button" value="�̸���"></td>
			<td><input type="button" value="�μ�"></td>
			<td><input type="button" onclick="javascript:empView(<%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %>)" value="�󼼺���"></td>
			<td><input type="button" value="����" onclick="javascript:empDel(<%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %>)"></td>
		</tr>
		<%
				}
			}
	 	%>
    </tbody>
</table>
<input type="button" onclick="javascript:goEmpAdd()" value="������">
</body>
</html>