<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>급여계산현황 페이지</title>

<script type="text/javascript">

	function personalPay(report){
		location.href = "../pay/personalPay?report="+report;
		
	}

</script>

<%

	List list = (List)request.getAttribute("list");
	HashMap map0 = (HashMap)list.get(0);
	String report0 = (String)map0.get("SALARYCALC_REPORT");

%>

</head>
<body>

<table>
	<tr>
		<td>신고귀속</td>
		<td>제목</td>
		<td>개인별급여내역</td>
		<td>지급총액</td>
	</tr>
	<tr>
		<td>${list.get(0).get("SALARYCALC_REPORT") }</td>
		<td>${list.get(0).get("SALARYCALC_NAME") }</td>
		<td><input type="button" onclick="javascript:personalPay('<%= report0 %>')" value="개인별급여내역"></td>
		<td>${list.get(0).get("SALARYCALC_TOTAL") }</td>
	</tr>
	<tr>
		<td>${list.get(1).get("SALARYCALC_REPORT") }</td>
		<td>${list.get(1).get("SALARYCALC_NAME") }</td>
		<td><input type="button" onclick="javascript:personalPay('${list.get(1).get('SALARYCALC_REPORT') }')" value="개인별급여내역"></td>
		<td>${list.get(1).get("SALARYCALC_TOTAL") }</td>
	</tr>
</table>

</body>
</html>