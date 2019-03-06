<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>emp_mainpage</title>
</head>
<body>
<h2>사원 목록</h2>
<table style="border:1px solid #ccc">
    <colgroup>
        <col width="10%"/>
        <col width="*"/>
    </colgroup>
    <thead>
        <tr>
            <th scope="col">사원번호/이름</th>
        </tr>
    </thead>
    <tbody>
    <tr>
    	<td>${list.get(0)}</td>
    </tr>
    <tr>
    	<td>${list.get(1)}</td>
    </tr>
        <tr>
    	<td>${list.get(2)}</td>
    </tr>
    </tbody>
</table>
</body>
</html>