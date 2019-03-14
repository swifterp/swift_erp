<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>customer_mainpage</title>
<script type="text/javascript">
	
	function goClientInfo(){
		location.href = "../../client/selectClientInfo"
	}
	
	function goNameCardInfo(){
		location.href = "../../client/selectNameCardInfo"
	}

</script>
</head>
<body>
This is customer page. Welcome ${res}<p>

<input type="button" onclick="javascript:goClientInfo()" value="거래처정보조회"> <p>
<input type="button" onclick="javascript:goNameCardInfo()" value="명함정보조회"> <p>


</body>
</html>