<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>approval_mainpage</title>
<script type="text/javascript">

	function goDraft(){

		location.href = "../../approval/selectDraft";
		
	}

	function goCommonStyle(){
		location.href = "../../approval/selectCommon"
	}
	
	function goApprovalPath(){
		location.href = "../../approval/selectApprovalPath"
	}
	
	function goMyApproval(){
		location.href = "../../approval/selectMyApproval"
	}

</script>

</head>
<body>
This is approval page. Welcome ${res}<p>


<input type="button" onclick="javascript:goDraft()" value="��ȼ���ȸ"> <p>
<input type="button" onclick="javascript:goCommonStyle()" value="��������ȸ"> <p>
<input type="button" onclick="javascript:goApprovalPath()" value="���������ȸ"> <p>
<input type="button" onclick="javascript:goMyApproval()" value="������ ��ü ��ȸ"> <p>

</body>
</html>