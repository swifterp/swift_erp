<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>emp_mainpage</title>
<script type="text/javascript">
	function empDel(empno){
		location.href = "../../emp/delete?empno="+empno;	
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
		</tr>
	</thead>
    <tbody>
    	<%
		List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
	
		if(lst != null){
			for(int i=0;i<lst.size();i++){
	%>
		<tr>
			<td>${list.get(0).get("EMPNO") }</td>
			<td>${list.get(0).get("EMP_NAME") }</td>
			<td>${list.get(0).get("EMP_RESIDENT_NUMBER")}</td>
			<td>${list.get(0).get("DNAME")}</td>
			<td>${list.get(0).get("RANK_NAME")}</td>
			<td>${list.get(0).get("EMP_JOIN_DATE")}</td>
		</tr>
	 <%
			}
		}
	 %>
    </tbody>
</table>
<input type="button" onclick="javascript:empDel()" value="����">
<input type="button" onclick="javascript:goPay()" value="����">
</body>
</html>