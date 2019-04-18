<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../common/ui_common.jsp" %>
<title>수당항목등록 페이지</title>
<script type="text/javascript">

	function deleteAllowanceItem(allowance_no){

		location.href = "./deleteAllowance?allowance_no="+allowance_no;
		
	}

</script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#chat").load("../common/top_menu.jsp")
	});
</script>
</head>
<body>
<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
	<div id="chat"></div>
	<div class="container">
		<%@ include file="../common/left_menu_pay.jsp" %>
		<div class="contents">
			<form action="../pay/insertAllowance">
				<table class="table" style="margin-bottom:20px;">
					<tbody>
						<tr>
							<th>
								항목이름
							</th>
							<td>
								<input type="text" name="name" class="form-control">
							</td>
						</tr>
						<tr>
							<th>
								항목구분
							</th>
							<td>
								<div>
									<select name="division" class="form-control">
										<option name="division" value="월정액">월정액</option>
										<option name="division" value="일급">일급</option>
									</select>
								</div>
							</td>
						</tr>	
					</tbody>
				</table>
				<div class="btn_group">
					<input type="submit" class="btn btn-outline-primary" value="등록">
				</div>
			</form>

			<table class="table">
				<tbody>
					<tr>
						<th>
							수당명
						</th>
						<th> 
							수당구분
						</th>
						<th>
							기타
						</th>
					</tr>
	<%
			List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
		
			if(lst != null){
				for(int i=0;i<lst.size();i++){
	%>
					<tr>
						<td>
							<%= lst.get(i).get("ALLOWANCE_NAME") %>
						</td>
						<td> 
							<%= lst.get(i).get("ALLOWANCE_DIVISION") %>
						</td>
						<td>
							<input type="button" class="btn btn-default" value="삭제하기" onclick="javascript:deleteAllowanceItem(<%= String.valueOf(lst.get(i).get("ALLOWANCE_NO")) %>)">
						</td>
					</tr>
	<%
				}
			}
	%>
				</tbody>
			</table>
			<div class="btn_group">
				<input type="button" class="btn btn-outline-primary" value="인쇄" >
			</div>
		</div>
	</div>
	
</body>
</html>