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

</script>

</head>
<body>
This is approval page. Welcome ${res}

<input type="button" onclick="javascript:goDraft()" value="��ȼ���ȸ">
<input type="button" onclick="javascript:goCommonStyle()" value="��������ȸ">
<input type="button" onclick="javascript:goApproval()" value="����">
<input type="button" onclick="javascript:goApproval()" value="����">

</body>
</html>