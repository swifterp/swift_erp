<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ��ȸ ������</title>

<script type="text/javascript">
	function specs(){
		location.href = "../../pay/specs?empno="+document.getElementById("empno").value;	
	}
</script>

</head>
<body>

<input type="text" id="empno">
<input type="button" onclick="javascript:specs()" value="��ȸ">

</body>
</html>