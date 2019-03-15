<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>기안서 조회 페이지</title>
</head>
<body>

${list.get(0) }<p>
${list.get(1) }<p>
${list.get(2) }<p><p>


<form action="../approval/selectDraftDetail">
상세보기<p>
기안서 번호 
<input type="text" name="draft_num">
<br>

<input type="submit" value="검색">
</form> 

</body>
</html>