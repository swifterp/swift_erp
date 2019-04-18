<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Map, java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업무일지 등록</title>
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
			<h1>업무일지 등록</h1>

			<form action="../work/insertBusinessLog">
				<table class="table">
					<tr>
						<th>업무일지 작성날짜</th>
						<td><input type="date" class="form-control" name="log_date" style="width:100%; display:inline-block; margin-right:5px;" required=""></td>
					</tr>
					<tr>
						<th> 거래처 이름 </th>				
						<td id="pop_clientlist" class="input-group">
						<input type="hidden" id="client_code" name="client_code" class="form-control" value="0">
						<input type="text" id="client_name" class="form-control" placeholder="거래처 조회">
						<span class="input-group-btn">
							 <button class="btn btn-default" type="button" data-toggle="modal" data-target="#exampleModal">보기</button>
						</span>
						</td>
					</tr>
					<tr>
						<th>업무일지 제목</th>
						<td><input type="text" class="form-control" name="log_project" required=""></td>
					</tr>
					<tr>
						<th>업무내용</th>
						<td><textarea class="form-control" name="log_content" required="" style="height:500px;"></textarea></td>
					</tr>
				</table>
					<input type="hidden" name="empno" value="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
					
				<div class="btn_group">
					<a class="btn btn-default pull-left" href="../work/selectBusinessLog">목록</a>
					<input type="submit" class="btn btn-primary pull-right" value="저장">
				</div>
			</form>
		</div>
	</div>
</body>
</html>