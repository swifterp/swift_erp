<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��ȼ� ��ȸ ������</title>
</head>
<body>

${list.get(0) }<p>
${list.get(1) }<p>
${list.get(2) }<p><p>


<form action="../approval/selectDraftDetail">
�󼼺���<p>
��ȼ� ��ȣ 
<input type="text" name="draft_num">
<br>

<input type="submit" value="�˻�">
</form> 

</body>
</html>