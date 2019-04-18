<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<script type = "text/javascript" src ="../../js/jquery.min.js"></script>
<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>공제항목등록 페이지</title>
<script type="text/javascript">

	function deleteDeductionItem(deduction_no){

		location.href = "./deleteDeduction?deduction_no="+deduction_no;
		
	}

</script>
</head>
<body>
<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
	<script type="text/javascript">
	$(document).ready(function(){
		$("#chat").load("../common/top_menu.jsp")
	});
	</script>
	<div id="chat"></div>
	<div class="container">
		<%@ include file="../common/left_menu_pay.jsp" %>
		<div class="contents">
			<form action="../pay/insertDeduction">
				<table class="table" text-align:center;">
					<tbody>
						<tr>
							<th>
								항목이름
							</th>
							<td class="input-group">
								<input type="text" name="name" class="form-control">
								<span class="input-group-btn">
									<input type="submit" class="btn btn-outline-primary" value="등록">
								</span>
							</td>
						</tr>	
					</tbody>
				</table>
			</form>
	
			<table class="table" style="margin-top:20px; text-align:center;">
				<tbody>
					<tr>
						<th>
							공제명
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
							<%= lst.get(i).get("DEDUCTION_NAME") %>
						</td>
						<td>
							<input type="button" class="btn btn-default pull-list" value="삭제하기" onclick="javascript:deleteDeductionItem(<%= String.valueOf(lst.get(i).get("DEDUCTION_NO")) %>)">
						</td>
					</tr>
	<%
				}
			}
	%>
				</tbody>
			</table>
			<div class="btn_group">
				<input type="button" class="btn btn-outline-primary pull-list" value="인쇄" >
			</div>
		</div>
	</div>
</body>
</html>