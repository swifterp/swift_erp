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
<%
int style1 =Integer.parseInt(String.valueOf(request.getAttribute("list2")));

%>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script> 
  <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
  <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.js"></script>
  
  <script>
$(document).ready(function() {
    $('#pop_dept1').on("click", function() {	
    	var url="../approval/approval_path_dept1?EMPNO="+1;
    	var windowW = 300;  // 창의 가로 길이
        var windowH = 300;  // 창의 세로 길이
        var left = Math.ceil((window.screen.width - windowW)/2);
        var top = Math.ceil((window.screen.height - windowH)/2);
  window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
    });
});$(document).ready(function() {
    $('#pop_dpet2').on("click", function() {	
    	var url="../approval/approval_path_dept2";
    	var windowW = 300;  // 창의 가로 길이
        var windowH = 300;  // 창의 세로 길이
        var left = Math.ceil((window.screen.width - windowW)/2);
        var top = Math.ceil((window.screen.height - windowH)/2);
  window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
    });
});
$(document).ready(function() {
    $('#pop_dept3').on("click", function() {	
    	var url="../approval/approval_path_dept3";
    	var windowW = 300;  // 창의 가로 길이
        var windowH = 300;  // 창의 세로 길이
        var left = Math.ceil((window.screen.width - windowW)/2);
        var top = Math.ceil((window.screen.height - windowH)/2);
  window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
    });
});
</script>
</head>
<body>
<h3>서류작성</h3>
			<form action="../approval/insertApprovalPath">
				<table class="table">
					<tr>
						<th>1차결재 <span class="essential">*</span></th>
						<td id="pop_dept1" class="input-group">
							<input type="hidden" id="approval_dept_no" name="deptno" class="form-control" required="" value="1">
							<input type="text" id="approval_dept_name" class="form-control" required="">
							<span class="input-group-btn">
								 <button class="btn btn-default" type="button" data-toggle="modal" data-target="#exampleModal">보기</button>
							</span>
						</td>
						<th>2차결재 <span class="essential">*</span></th>
						<td id="pop_dept2" class="input-group">
							<input type="hidden" id="p_rank_no" name="rank_no" class="form-control" required="">
							<input type="text" id="p_rank_name" class="form-control" required="">
							<span class="input-group-btn">
								 <button class="btn btn-default" type="button">보기</button>
							</span>
						</td>
						<th>3차결재<span class="essential">*</span></th>
						<td id="pop_dept" class="input-group">
							<input type="hidden" id="p_duty_no" name="duty_no" class="form-control" required="">
							<input type="text" id="p_duty_name" class="form-control" required="">
							<span class="input-group-btn">
								 <button class="btn btn-default" type="button">보기</button>
							</span>
						</td>
					</tr>
					
				</table>
				<div class="btn_group">
					<input type="submit" class="btn btn-primary pull-right" value="확인">
				</div>
			</form>
			


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
		
		<input type="submit" onclick = "javascript:goSaveData()" value="결재">
		</form>

</section>
</body>
</html>