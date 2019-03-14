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
		
		function goWorkState(){
			location.href = "../../work/selectWorkState"
		}
		
		function goWorkTime(){
			location.href = "../../work/selectWorkTime"
		}
		
		function goWorkEtc(){
			location.href = "../../work/selectWorkEtc"
		}
		
	</script>
</head>
<body>


<input type="button" onclick="javascript:goBusinessLog()" value="업무일지조회"> <p>
<input type="button" onclick="javascript:goMonthWork()" value="월별출퇴근기록"> <p>
<input type="button" onclick="javascript:goWorkState()" value="출퇴근현황"> <p>
<input type="button" onclick="javascript:goWorkTime()" value="일별근무시간조회"> <p>
<input type="button" onclick="javascript:goWorkEtc()" value="출퇴근/근태/일정 조회"> <p>

</body>
</html>