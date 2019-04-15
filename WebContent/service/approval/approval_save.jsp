<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.FileReader" %>
<%@ page import="java.io.IOException" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>Summernote</title>
  <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script> 
  <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
  <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.js"></script>
</head>
<body>
<script>
	$(document).ready(function() {
		$('#summernote').summernote({
			height : 600, // 에디터의 높이 
			minHeight : null,
			maxHeight : null,
			focus : true,
			lang : 'ko-KR' // 기본 메뉴언어 US->KR로 변경
		});
	});
	
	var postForm = function() {
		var contents =  $('textarea[name="contents"]').html($('#summernote').code());
	}
</script>

<section>
	<form id="postForm" action="" onsubmit="return postForm()" method="POST">
		<!-- summernote와 관련된 영역 -->
		<textarea id="summernote" name="contents">
<% 
				BufferedReader br = null;
	        try{
	               br = new BufferedReader(new FileReader("C:\\app\\test.txt\\"));
	               String line = "";

	               while((line = br.readLine()) != null){
	                       out.println(line + "<br />");
	               }
	        } catch(Exception e){
	               out.println(e.getMessage());
	        } finally{
	               if(br != null) try{br.close(); } catch(IOException e){}
	        }
%>
		</textarea>
	
		<!-- 버튼과 관련된 영역 -->
	</form>
			<form action="../../approval/approval_save" method="post">
				<input type="hidden" id="approval_name" name="approval_name" value="approval">
				<input type="hidden" id="approval_save" name="approval_save">
				<input type="submit" onclick = "javascript:goSaveData()" value="결재">
			</form>
						
		<!-- 	<a class="button round blue" onclick="test()">취소</a> -->
</section>

<script type="text/javascript">
	function goSaveData(){
		var as = document.getElementById("approval_save");
		var tmp = document.getElementById("summernote").innerHTML;
		alert(tmp);
		as.setAttribute("value", tmp);
	}
/* 	alert(document.getElementById("summernote").innerHTML); */

</script>

 </body>
</html>