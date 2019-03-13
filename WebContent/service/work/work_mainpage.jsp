<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>work_mainpage</title>
<script type="text/javascript">

		function goBusinessLog(){
			location.href = "../../work/selectBusinessLog"
		}
		
		function goMonthWork(){
			location.href = "../../work/selectMonthWork"
		}
		
	</script>
</head>
<body>


<input type="button" onclick="javascript:goBusinessLog()" value="업무일지조회"> <p>
<input type="button" onclick="javascript:goMonthWork()" value="월별출퇴근기록"> <p>

</body>
</html>