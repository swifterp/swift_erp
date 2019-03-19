<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Welcome Page</title>

<script type="text/javascript">

	function empList(){
		location.href = "../../emp/read";	
	}	
	
	function goPay(){
		location.href = "../pay/pay_mainpage.jsp";

	}

	function goApproval(){

		location.href = "../approval/approval_mainpage.jsp";
		
	}
	
	function goWork(){

		location.href = "../work/work_mainpage.jsp";
		
	}
	
	function goClient(){

		location.href = "../client/client_mainpage.jsp";
		
	}

	function goAttend(){
		location.href = "../attend/attend_mainpage.jsp";
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


<c:if test="${member !=null}">
	<h2>${member.mem_name}님 환영합니다.</h2>
</c:if>
</body>
</html>