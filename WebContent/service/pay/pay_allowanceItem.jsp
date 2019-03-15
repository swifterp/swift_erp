<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>수당항목등록 페이지</title>
<script type="text/javascript">

	function deleteAllowanceItem(allowance_no){

		location.href = "./deleteAllowance?allowance_no="+allowance_no;
		
	}

</script>
</head>
<body>
<table>
	<%
		List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
	
		if(lst != null){
			for(int i=0;i<lst.size();i++){
	%>
				<tr>
					<td><%= lst.get(i).get("ALLOWANCE_NAME") %> / <input type="button" value="삭제하기" onclick="javascript:deleteAllowanceItem(<%= String.valueOf(lst.get(i).get("ALLOWANCE_NO")) %>)"></td>
				</tr>
	<%
			}
		}
	 %>
</table>
</body>
</html>