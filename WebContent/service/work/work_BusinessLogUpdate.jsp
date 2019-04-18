<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Map, java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업무일지 수정</title>
<%@ include file="../common/ui_common.jsp" %>
<script type="text/javascript">
$(document).ready(function() {
    $('#pop_clientlist').on("click", function() {	
    	var url="../work/pop_clientlist";
    	var windowW = 500;  // 창의 가로 길이
        var windowH = 300;  // 창의 세로 길이
        var left = Math.ceil((window.screen.width - windowW)/2);
        var top = Math.ceil((window.screen.height - windowH)/2);
  window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
    });
});

</script>

</head>
<body>
<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">		
		<%@ include file="../common/left_menu_attend.jsp" %>
		<div class="contents">
			<h1>업무일지 수정</h1>
			<form action="../work/updateBusinessLog">
				<table class="table">
					<tr>
						<th>작성자</th>
						<td><input type="text" class="form-control" name="emp_name" value="${list.get(0).get("EMP_NAME")}" readonly></td>
					</tr>					
					<tr>
						<th>작성자사번</th>
						<td><input type="text" class="form-control" name="emp_number" value="${list.get(0).get("EMP_NUMBER")}" readonly></td>
					</tr>
					
					<tr>
						<th>업무일지 작성날짜</th>
						<td><input type="date" class="form-control" name="log_date" style="width:100%; display:inline-block; margin-right:5px;" value="${list.get(0).get("LOG_DATE")}"></td>
					</tr>
					<tr>
						<th> 거래처 이름 </th>				
						<td id="pop_clientlist" class="input-group">
						<input type="hidden" id="client_code" name="client_code" class="form-control" value="${list.get(0).get("CLIENT_CODE")}">
						<input type="text" id="client_name" class="form-control" value="${list.get(0).get("CLIENT_NAME")}">
						<span class="input-group-btn">
							 <button class="btn btn-default" type="button" data-toggle="modal" data-target="#exampleModal">보기</button>
						</span>
						</td>
					</tr>
					<tr>
						<th>업무일지 제목</th>
						<td><input type="text" class="form-control" name="log_project" value="${list.get(0).get("LOG_PROJECT")}"></td>
					</tr>
					<tr>
						<th>업무내용</th>

						<td><textarea class="form-control" name="log_content" required="" style="height:500px;"> ${list.get(0).get("LOG_CONTENT")} </textarea></td>
					</tr>
				</table>
					<input type="hidden" name="empno" value="${list.get(0).get("EMPNO")}">
					<input type="hidden" name="log_no" value="${list.get(0).get("LOG_NO")}">
					
				<div class="btn_group">
					<a class="btn btn-default pull-left" href="../work/selectBusinessLog">목록</a>
					<input type="submit" class="btn btn-primary pull-right" value="저장">
				</div>
			</form>
		</div>
	</div>
</body>
</html>