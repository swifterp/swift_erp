<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Welcome Page</title>

<script type="text/javascript">

	function goPay(){

		location.href = "../pay/pay_mainpage.jsp";
		
	}

	function goAttend(){
		location.href = "../attend/attend_mainpage.jsp";
	}

</script>

</head>
<body>
Welcome! This is Swift Corporation.

<input type="button" onclick="javascript:goPay()" value="�޿�����">
<td>
<input type="button" onclick="javascript:goAttend()" value="���°���">

</body>
</html>