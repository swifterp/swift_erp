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

<input type="button" onclick="javascript:goDraft()" value="기안서조회">
<input type="button" onclick="javascript:goCommonStyle()" value="공통양식조회">
<input type="button" onclick="javascript:goApproval()" value="결재">
<input type="button" onclick="javascript:goApproval()" value="결재">

</body>
</html>