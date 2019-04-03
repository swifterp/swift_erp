<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>거래처정보조회 페이지</title>
<script type="text/javascript">
	function goNameCardInfoWrite(){
		
	location.href="../client/client_namecardinfowrite.jsp"
		}
	
	function goDeleteNameCardInfo(NAMECARD_CODE){
		
	location.href="../client/deleteNameCardInfo?NAMECARD_CODE=" + NAMECARD_CODE;
		}
	
	function goUpdateNameCardInfo(CLIENT_CODE){
		
	location.href="../client/client_namecardinfowrite.jsp"
		}
</script>
<%@ include file="../common/ui_common.jsp" %>
</head>
<body>
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">
		<%@ include file="../common/left_menu_client.jsp" %>	
		<div class="contents">
			<h2>명함 정보</h2>
			<table class="table">
				<thead>
					<tr> 
						<th>명함이름</th>
						<th>고객이름</th>
						<th>부서</th>
						<th>직급</th>
						<th>전화번호</th>
						<th>주소</th>
						<th colspan="2">비고</th>		
					</tr>
				</thead>
			    <tbody>
					<%
						List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
						if(lst != null){
							for(int i=0;i<lst.size();i++){
					%>
					<tr>
						<td><%= lst.get(i).get("NAMECARD_NAME") %> </td>
						<td><%= lst.get(i).get("CLIENT_NAME") %> </td>
						<td><%= lst.get(i).get("NAMECARD_DIVISION") %> </td>
						<td><%= lst.get(i).get("NAMECARD_POSITION") %> </td>
						<td><%= lst.get(i).get("NAMECARD_TEL") %> </td>
						<td><%= lst.get(i).get("NAMECARD_ADDRESS") %> </td>
						<td>
						<form action="../client/selectNameCardDetail">
							<input type="hidden" id="NAMECARD_CODE" name="NAMECARD_CODE" value=<%= Integer.parseInt(String.valueOf(lst.get(i).get("NAMECARD_CODE"))) %>>
							<input type="submit" class="btn btn-default" id="NAMECARD_CODE" name="NAMECARD_CODE" value="수정">
						</form>
						</td>
						<td>
						<input type="button" class="btn btn-default" onclick="javascript:goDeleteNameCardInfo(<%= Integer.parseInt(String.valueOf(lst.get(i).get("NAMECARD_CODE"))) %>)" value="삭제">
						
						</td>
					</tr>
					<%
							}
						}
				 	%>
			    </tbody>
			</table>
			<div class="btn_group">
				<input type="button" onclick="javascript:goNameCardInfoWrite()" class="btn btn-primary pull-right" value="명함등록">
			</div>
		</div>
	</div>
</body>
</html>