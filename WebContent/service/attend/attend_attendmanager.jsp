<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>근태 관리 페이지</title>
<script type="text/javascript">
	function attendmanager(){
		location.href = "../../attend/attend_add";
	}
</script>
</head>
<body>
<table style="border:1px solid #ccc; text-align:center;">
<thead>
<tr>
	<td>근태번호</td>
	<td>사원번호</td>
	<td>근태날짜</td>
	<td>근태코드</td>
	<td>근무시간</td>
	<td>비고</td>
</tr>
</thead>
<tbody>
<tr>
	<td>${list.get(0).get("ATTEND_NO")}</td>
	<td>${list.get(0).get("EMPNO")}</td>
	<td>${list.get(0).get("ATTEND_DATE")}</td>
	<td>${list.get(0).get("ATTEND_CODE")}</td>
	<td>${list.get(0).get("ATTEND_TIME")}</td>
	<td>${list.get(0).get("ATTEND_M_ETC")}</td>
</tr>
</tbody>
</table>

<input type="button" onclick="javascript:attendadd()" value="등록">
</body>
</html>