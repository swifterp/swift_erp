<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List, java.util.Map, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>은행목록</title>
<%@ include file="../common/ui_common.jsp" %>
<script>
	function bankSelect(bank_no,bank_name){
            opener.document.getElementById("p_bank_no").value = bank_no;
            opener.document.getElementById("p_bank_name").value = bank_name;
            window.close();
	}
</script>
</head>
<body>
	<table class="table">
		<thead>
			<tr>
				<th>은행코드</th>
				<th>은행명</th>
				<th>선택</th>
			</tr>
		</thead>
		<%
			List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
			if(lst != null){
				for(int i=0;i<lst.size();i++){
		%>
		<tbody>
			<tr>
				<td><%= String.valueOf(lst.get(i).get("BANK_NO")) %></td>
				<td><%= lst.get(i).get("BANK_NAME") %></td>
				<td>
					<a class="btn btn-primary" onclick="javascript:bankSelect('<%= String.valueOf(lst.get(i).get("BANK_NO")) %>','<%= String.valueOf(lst.get(i).get("BANK_NAME")) %>')">선택</a>
				</td>
			</tr>
		</tbody>
		<%
				}
			} 
		%>
	</table>
</body>
</html>