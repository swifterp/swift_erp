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

<input type="button" onclick="javascript:empList()" value="�λ����">

<input type="button" onclick="javascript:goPay()" value="�޿�����">

<p>
<input type="button" onclick="javascript:goApproval()" value="����">
<p>
<input type="button" onclick="javascript:goWork()" value="����">
<p>
<input type="button" onclick="javascript:goClient()" value="�ŷ�ó��������">

<input type="button" onclick="javascript:goAttend()" value="���°���">


<c:if test="${member !=null}">
	<h2>${member.mem_name}�� ȯ���մϴ�.</h2>
</c:if>
</body>
</html>