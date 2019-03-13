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

<input type="button" onclick="javascript:attendcode()" value="근태코드">
<br>
<input type="button" onclick="javascript:holidaycode()" value="휴가코드">
<br>
<input type="button" onclick="javascript:attendmanager()" value="근태">
<br>

</body>
</html>