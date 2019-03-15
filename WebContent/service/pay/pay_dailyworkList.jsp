<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>수당항목등록 페이지</title>
<script type="text/javascript">

	function dailyworkInsert(){

		location.href = "../service/pay/pay_dailyworkInsert.jsp";
		
	}

</script>
</head>
<body>
<form action="../pay/dailyworkList">
기준일자(년):<br>
<input type="text" name="year">
<br>

기준일자(월):<br>
<input type="text" name="month">
<br>

기준일자(일):<br>
<input type="text" name="day">
<br>

<br>
<input type="submit" value="조회">
</form>
<br>
<input type="button" value="등록" onclick="javascript:dailyworkInsert()">
<br>
<br>
<table>
	<tr>
		<td>기준일자</td>
		<td>사원번호</td>
		<td>야근수당 시간</td>
		<td>주말수당 시간</td>
		<td>연차수당 일수</td>
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