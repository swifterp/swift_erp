<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>업무일지 조회</title>
<script type="text/javascript">
	function goBusinessLogWrite(){
	location.href="../service/work/work_businesslogwrite.jsp"
	}
</script>
</head>
<body>

${list.get(0) }<p>
${list.get(1) }<p>
${list.get(2) }<p>
<p>

<input type="button" onclick="javascript:goBusinessLogWrite()" value="업무일지작성"> <p>


</body>
</html>