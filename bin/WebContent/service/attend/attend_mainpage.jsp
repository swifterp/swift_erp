<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>attend_mainpage</title>

<script type="text/javascript">

	function attendcode(){
		location.href = "../../attend/attend_code";
	}
	
	function holidaycode(){
		location.href = "../../attend/holiday_code";
	}
	
	function attendmanager(){
		location.href = "../../attend/attend_manager";
	}	
	
</script>
</head>

<body>

<input type="button" onclick="javascript:attendcode()" value="�����ڵ�">
<br>
<input type="button" onclick="javascript:holidaycode()" value="�ް��ڵ�">
<br>
<input type="button" onclick="javascript:attendmanager()" value="����">
<br>

</body>
</html>