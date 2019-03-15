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
<<<<<<< HEAD
=======

		
	}
	function goApproval(){

<<<<<<< HEAD
		location.href = "../approval/approval_mainpage.jsp";
		
	}
	
	function goWork(){

		location.href = "../work/work_mainpage.jsp";
		
	}
	
	function goClient(){

		location.href = "../client/client_mainpage.jsp";

		
>>>>>>> refs/heads/KT_branch
	}
	
=======
	function goAttend(){
		location.href = "../attend/attend_mainpage.jsp";
	}

>>>>>>> refs/heads/sujin_branch2
</script>

</head>
<body>
<<<<<<< HEAD
Welcome! This is Swift Corporation.
<input type="button" onclick="javascript:empList()" value="인사관리">
=======
Welcome! This is Swift Corporation.<p>

>>>>>>> refs/heads/KT_branch
<input type="button" onclick="javascript:goPay()" value="급여관리">
<<<<<<< HEAD
<<<<<<< HEAD
=======
<p>
<input type="button" onclick="javascript:goApproval()" value="결재">
<p>
<input type="button" onclick="javascript:goWork()" value="업무">
<p>
<input type="button" onclick="javascript:goClient()" value="거래처정보관리">
=======
<td>
<input type="button" onclick="javascript:goAttend()" value="근태관리">
>>>>>>> refs/heads/sujin_branch2


>>>>>>> refs/heads/KT_branch
</body>
</html>