<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근태코드 추가 페이지</title>
</head>
<body>

	<form action="../../attend/attend_CodeInsert">
		근태코드 : <input type="text" id="attend_code" name="attend_code" value=""><br><br>
		근태코드명 : <input type="text" id="attend_name" name="attend_name" value=""><br><br>
		근태코드상태 : <select id="attend_code_state" name="attend_code_state">
				  <option value="사용">사용</option>
				  <option value="중지">중지</option>	  
				  </select><br><br>
		비고 : <input type="text" id="attend_c_etc" name="attend_c_etc" value=""><br><br>
		<input type="submit" value="저장">
	</form>

</body>
</html>