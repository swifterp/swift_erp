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


<input type="button" onclick="javascript:goBusinessLog()" value="����������ȸ"> <p>
<input type="button" onclick="javascript:goMonthWork()" value="��������ٱ��"> <p>
<input type="button" onclick="javascript:goWorkState()" value="�������Ȳ"> <p>
<input type="button" onclick="javascript:goWorkTime()" value="�Ϻ��ٹ��ð���ȸ"> <p>
<input type="button" onclick="javascript:goWorkEtc()" value="�����/����/���� ��ȸ"> <p>

</body>
</html>