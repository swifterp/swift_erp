<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>거래처정보조회 페이지</title>
<%@ include file="../common/ui_common.jsp" %>
<script type="text/javascript">
	function goClientInfoWrite(){
	location.href="../client/client_clientinfowrite.jsp"
		}
</script>
</head>
<body>
<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">
		<%@ include file="../common/left_menu_client.jsp" %>	
		<div class="contents">
			<h2>거래처정보목록</h2>
			<table class="table">
				<colgroup>
					<col width="10%" />
					<col width="15%" />
					<col width="15%" />
					<col width="15%" />
					<col width="20%" />
					<col width="15%" />
					<col width="5%" />
					<col width="5%" />
				</colgroup>
				<thead>
					<tr>
						<th>업체구분</th>
						<th>업체명</th>
						<th>전화번호</th>
						<th>이메일</th>
						<th>주소</th>
						<th>내용</th>
						<th>수정</th>
						<th>삭제</th>						
					</tr>
				</thead>
			    <tbody>
					<%
						List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
						if(lst != null){
							for(int i=0;i<lst.size();i++){
					%>
					<tr>
						<td><%= lst.get(i).get("CLIENT_DIVISION") %> </td>
						<td><%= lst.get(i).get("CLIENT_NAME") %> </td>
						<td><%= lst.get(i).get("CLIENT_TEL") %> </td>
						<td><%= lst.get(i).get("CLIENT_EMAIL") %> </td>
						<td><%= lst.get(i).get("CLIENT_ADDRESS") %> </td>
						<td><%= lst.get(i).get("CLIENT_CONTENT") %> </td>
						<td>
							<form action="../client/selectClientInfoDetail">
								<input type="hidden" id="CLIENT_CODE" name="CLIENT_CODE" class="form-control" value=<%= Integer.parseInt(String.valueOf(lst.get(i).get("CLIENT_CODE"))) %>>
								<input type="submit" id="CLIENT_CODE" name="CLIENT_CODE" class="btn btn-default" value="수정">
							</form> 
						</td>
						<td>
							<form action="../client/deleteClientInfo">
								<input type="hidden" id="CLIENT_CODE" name="CLIENT_CODE" class="form-control" value=<%= Integer.parseInt(String.valueOf(lst.get(i).get("CLIENT_CODE"))) %>>
								<input type="submit" id="CLIENT_CODE" name="CLIENT_CODE" class="btn btn-default" value="삭제">
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
				<input type="button" class="btn btn-primary pull-right" onclick="javascript:goClientInfoWrite()" value="등록">
			</div>
		</div>
	</div>
</body>
</html>