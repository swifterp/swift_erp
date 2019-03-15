<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="../../work/insertBusinessLog">
업무보고일 :
<input type="text" name="business_date">

부서 : 
<input type="text" name="business_dept">
<p>

거래처 :
<input type="text" name="business_client">

프로젝트 :
<input type="text" name="business_project">
<p>
첨부파일 : 
<input type="file" name="file" value="파일첨부">
업무일지 번호 :
<input type="text" name="business_no"><p> 

업무 내용 : 
<input type="text" name="business_content"><p>


<input type="submit" value="저장">
</form> 


</body>
</html>