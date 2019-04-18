<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업무일지 조회</title>
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
	$(document).ready(function() {
	    $('#pop_deptlist').on("click", function() {	
	    	var url="../work/pop_deptlist";
	    	var windowW = 500;  // 창의 가로 길이
	        var windowH = 300;  // 창의 세로 길이
	        var left = Math.ceil((window.screen.width - windowW)/2);
	        var top = Math.ceil((window.screen.height - windowH)/2);
	  window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
	    });
	});
</script>
<script type="text/javascript">
	function workDataInsert(){
		location.href = "../work/work_BusinessLogInsert.jsp";
	}
</script>
</head>
<body>
<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">		
		<%@ include file="../common/left_menu_attend.jsp" %>
		<div class="contents">
			<h1>업무일지 관리</h1>
			<form action="../work/workDetailList">
				<div id="pop_clientlist" class="input-group">
					<input type="hidden" id="client_code" name="client_code" class="form-control" value="0">
					<input type="text" id="client_name" class="form-control" placeholder="거래처명">
				</div>
				<div id="pop_deptlist" class="input-group">
					<input type="hidden" id="deptno" name="deptno" class="form-control" value="0">
					<input type="text" id="dname" class="form-control" placeholder="부서명">
				</div>
				<button type="submit" class="btn btn-default" style="margin-bottom:20px;">검색</button>
			</form>

			<table class="table">
				<colgroup>
					<col width="20%" />
					<col width="80%" />
				</colgroup>
				<thead>
					<tr>
						<th>No.</th>
						<th>업무보고일</th>
						<th>부서</th>
						<th>거래처</th>
						<th>업무일지 제목</th>
					</tr>
				</thead>
			    <tbody>
				<%
			      List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
			   
			      if(lst != null){
			         for(int i=0;i<lst.size();i++){
			   	%>
					<tr>
						<td><%= String.valueOf(lst.get(i).get("LOG_NO")) %> </td>
						<td><%= lst.get(i).get("LOG_DATE") %> </td>
						<td><%= lst.get(i).get("DNAME") %> </td>
						<td><%= lst.get(i).get("CLIENT_NAME") %> </td>
						<td><%= lst.get(i).get("LOG_PROJECT") %> </td>
<%-- 						<td><%= lst.get(i).get("LOG_CONTENT") %> </td> --%>
						<td> 
						<form action="../work/work_DataListLow">
								<input class="form-control" type="hidden" id="log_no" name="log_no" value="<%= String.valueOf(lst.get(i).get("LOG_NO")) %>">
								<input class="form-control btn btn-default" type="submit" value="수정">
						</form>
						</td><td>
						<form action="../work/work_BusinessLogDelete">
							<input class="form-control" type="hidden" id="log_no" name="log_no" value="<%= String.valueOf(lst.get(i).get("LOG_NO")) %>">
							<input class="form-control btn btn-default" type="submit" value="삭제">
						</form>
						</td>
					</tr>
					<%
							}
						}
				 	%>
			    </tbody>
			</table>
			<div class="btn_group">
				<input type="button" class="btn btn-primary pull-right" onclick="javascript:workDataInsert()" value="업무일지등록">
			</div>

		</div>
	</div>
</body>
</html>