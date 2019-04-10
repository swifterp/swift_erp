<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.Map" %>
    <%@ page import="java.io.BufferedReader" %>
    <%@ page import="java.io.IOException" %>
    <%@ page import="java.lang.StringBuffer" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script> 
  <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
  <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.js"></script>
</head>
<body>
<script>
<%
String style = String.valueOf(request.getAttribute("list"));
%>
	$(document).ready(function() {
		$('#summernote').summernote({
			height : 800, // 에디터의 높이 
			minHeight : null,
			maxHeight : null,
			focus : true,
			lang : 'ko-KR' // 기본 메뉴언어 US->KR로 변경
		});
	});
	
 	var postForm = function() {
		var contents =  $(style).html($('#summernote').code());
	} 
</script>

<section>
	<form action="./approval_write" method="POST">
		<!-- summernote와 관련된 영역 -->
		<textarea id="summernote" name="approval_write">
		<%
		out.print(style);
		%>
		</textarea>
		<input type="submit" value="결재">
		</form>
</section>


</body>
</html>