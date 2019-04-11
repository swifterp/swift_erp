<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List,java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업무일지 조회</title>
<script type="text/javascript">

	function goBusinessLogWrite(){
		location.href="../work/work_businesslogwrite.jsp"
	}
	
	function goClientList(){
		
		location.href="../work/work_clientlist.jsp"
			
	}
	function goDeptList(){
		
		location.href="../work/work_deptlist.jsp"
			
	}
</script>
<script type="text/javascript">
	function goClientInfoWrite(){
	location.href="../client/client_clientinfowrite.jsp"
		}
</script>
<%@ include file="../common/ui_common.jsp" %>
</head>
<body>
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">		
		<%@ include file="../common/left_menu_work.jsp" %>
		<div class="contents">
			<h1>업무일지목록</h1>
			<form action="../work/selectClientList">
				<div class="input-group">
					<input type="text" class="form-control" name="clientName" placeholder="거래처이름">
					<span class="input-group-btn" style="width:100px;">
						<button type="submit" class="btn btn-default" style="margin-bottom:20px;">검색</button>
					</span>
				</div>
			</form>
			<form action="../work/selectDeptList">
			<div class="input-group">
				<input type="text" class="form-control" name="deptName" placeholder="부서이름">
				<span class="input-group-btn" style="width:100px;">
					<button type="submit" class="btn btn-default" style="margin-bottom:20px;">검색</button>
				</span>
			</div>
			</form> 
			<table class="table">
				<thead>
					<tr>
						<th>No.</th>
						<th>업무보고일</th>
						<th>부서</th>
						<th>거래처</th>
						<th>프로젝트</th>
						<th>업무내용</th>	
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
						<td><%= String.valueOf(lst.get(i).get("LOG_DATE")).substring(0,10) %> </td>
						<td><%= lst.get(i).get("DNAME") %> </td>
						<td><%= lst.get(i).get("LOG_CLIENT") %> </td>
						<td><%= lst.get(i).get("LOG_PROJECT") %> </td>
						<td><%= lst.get(i).get("LOG_CONTENT") %> </td>
					</tr>
					<%
							}
						}
				 	%>
			    </tbody>
			</table>	
			<div class="btn_group">
				<input type="button" class="btn btn-primary pull-right" onclick="javascript:goBusinessLogWrite()" value="업무일지작성">	
			</div>
		</div>
	</div>
</body>
</html>