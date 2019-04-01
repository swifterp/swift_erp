<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>

<script type="text/javascript">

	function empList(){
		location.href = "../../emp/read";	
	}	
	
	function goPay(){
		location.href = "../pay/pay_mainpage.jsp";

	}

	function goApproval(){
		location.href = "../../approval/selectDraft";
		
	}
	
	function goWork(){
		location.href = "../../work/selectBusinessLog";
		
	}
	
	function goClient(){
		location.href = "../../client/selectClientInfo";
		
	}

	function goAttend(){
		location.href = "../../attend/attend_DataList";
	}

</script>

</head>
<body>

	Welcome! This is Swift Corporation.<p>
	
	<input type="button" onclick="javascript:empList()" value="인사관리">
	
	<input type="button" onclick="javascript:goPay()" value="급여관리">
	
	<p>
	<input type="button" onclick="javascript:goApproval()" value="결재">
	<p>
	<input type="button" onclick="javascript:goWork()" value="업무">
	<p>
	<input type="button" onclick="javascript:goClient()" value="거래처정보관리">
	
	<input type="button" onclick="javascript:goAttend()" value="근태관리">

	<a href="../mem/logout">로그아웃</a>
	<h2>${member}님 환영합니다.</h2>
</body>
</html>