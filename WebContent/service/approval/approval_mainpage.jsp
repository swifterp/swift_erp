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


<input type="button" onclick="javascript:goDraft()" value="기안서조회"> <p>
<input type="button" onclick="javascript:goCommonStyle()" value="공통양식조회"> <p>
<input type="button" onclick="javascript:goApprovalPath()" value="결재라인조회"> <p>
<input type="button" onclick="javascript:goMyApproval()" value="내결재 전체 조회"> <p>

</body>
</html>