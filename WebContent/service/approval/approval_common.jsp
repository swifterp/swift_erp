<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Map, java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공통양식 조회 페이지 입니다</title>
<%@ include file="../common/ui_common.jsp" %>
<script type="text/javascript">

	function goStyleSearch(style_code,draft_no){
		location.href = "./approval_style?style_code="+style_code + "&draft_no="+draft_no;
		}
</script>
</head>
<body>
<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">		
		<%@ include file="../common/left_menu_approval.jsp" %>
		<div class="contents">
			<h2>공통양식 조회</h2>
			<table class="table">
				<thead>
					<tr> 
						<th>No.</th>
						<th>제목</th>
						<th>내용보기</th>
					</tr>
				</thead>
			    <tbody>
					<%
						List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
						if(lst != null){
							for(int i=0;i<lst.size();i++){
					%>
					<tr>
						<td><%= Integer.parseInt(String.valueOf(lst.get(i).get("STYLE_CODE"))) %> </td>
						<td><%= lst.get(i).get("STYLE_NAME") %> </td>
						
						
							
							<td>
								<a class="btn btn-outline-primary" onclick="javascript:goStyleSearch(<%= 
									Integer.parseInt(String.valueOf(lst.get(i).get("STYLE_CODE"))) %>,
								<%= Integer.parseInt(String.valueOf(lst.get(i).get("DRAFT_NO"))) %> )">조회</a>
							</td>
							
								</td>
						
					</tr>
					<%
							}
						}
				 	%>
			    </tbody>
			</table>
		</div>
	</div>
</body>
</html>