<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Ϻ��ٹ���� ��� ������</title>
</head>
<body>

<form action="../../pay/dailyworkInsert">
��������(��):<br>
<input type="text" name="year">
<br>

��������(��):<br>
<input type="text" name="month">
<br>

��������(��):<br>
<input type="text" name="day">
<br>

�����ȣ:<br>
<input type="text" name="empno">
<br>

�߱ټ��� �ð�:<br>
<input type="text" name="night">
<br>

�ָ��ٹ����� �ð�:<br>
<input type="text" name="weekend">
<br>

�������� �ϼ�:<br>
<input type="text" name="annualAllowance">
<br>

<br>
<input type="submit" value="���">
</form> 

</body>
</html>