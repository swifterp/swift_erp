<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ���� ������</title>
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
	<td>���¹�ȣ</td>
	<td>�����ȣ</td>
	<td>���³�¥</td>
	<td>�����ڵ�</td>
	<td>�ٹ��ð�</td>
	<td>���</td>
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

<input type="button" onclick="javascript:attendadd()" value="���">
</body>
</html>