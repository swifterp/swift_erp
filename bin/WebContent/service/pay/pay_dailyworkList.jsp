<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�����׸��� ������</title>
<script type="text/javascript">

	function dailyworkInsert(){

		location.href = "../service/pay/pay_dailyworkInsert.jsp";
		
	}

</script>
</head>
<body>
<form action="../pay/dailyworkList">
��������(��):<br>
<input type="text" name="year">
<br>

��������(��):<br>
<input type="text" name="month">
<br>

��������(��):<br>
<input type="text" name="day">
<br>

<br>
<input type="submit" value="��ȸ">
</form>
<br>
<input type="button" value="���" onclick="javascript:dailyworkInsert()">
<br>
<br>
<table>
	<tr>
		<td>��������</td>
		<td>�����ȣ</td>
		<td>�߱ټ��� �ð�</td>
		<td>�ָ����� �ð�</td>
		<td>�������� �ϼ�</td>
	</tr>
	<%
		List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
	
		if(lst != null){
			for(int i=0;i<lst.size();i++){
	%>
				<tr>
					<td><%= lst.get(i).get("DAILYWORK_DATE") %></td>
					<td><%= String.valueOf(lst.get(i).get("EMPNO")) %></td>
					<td><%= String.valueOf(lst.get(i).get("DAILYWORK_NIGHT")) %></td>
					<td><%= String.valueOf(lst.get(i).get("DAILYWORK_WEEKEND")) %></td>
					<td><%= String.valueOf(lst.get(i).get("DAILYWORK_ANNUALALLOWANCE")) %></td>
				</tr>
	<%
			}
		}
	 %>
</table>
</body>
</html>