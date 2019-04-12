<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>명세서 조회 페이지</title>
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<script type = "text/javascript" src ="../../js/jquery.min.js"></script>
<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
<script type="text/javascript">
	function specs(){
		location.href = "../../pay/specs?empno="+document.getElementById("empno").value;	
	}
</script>

</head>
<body>
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">
		<%@ include file="../common/left_menu_pay.jsp" %>
		<div class="contents">
<input type="text" id="empno">
<input type="button" onclick="javascript:specs()" value="조회">
</div></div>
</body>
</html>