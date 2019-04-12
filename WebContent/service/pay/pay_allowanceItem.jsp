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
<title>수당항목등록 페이지</title>
<script type="text/javascript">

	function deleteAllowanceItem(allowance_no){

		location.href = "./deleteAllowance?allowance_no="+allowance_no;
		
	}

</script>
</head>
<body>
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">
		<%@ include file="../common/left_menu_pay.jsp" %>
		<div class="contents">
			<div style="width: 1200px" class="contents">
				<form action="../pay/insertAllowance">
					<table class="table" style="margin: auto; text-align:center;">
						<tbody>
							<tr>
								<td>
									항목이름
								</td>
								<td>
									<input type="text" name="name">
								</td>
							</tr>
							<tr>
								<td>
									항목구분
								</td>
								<td>
									<div class="input-group" style="width: 100px;">
										<select class="custom-select" name="division">
											<option name="division" value="월정액">월정액</option>
											<option name="division" value="일급">일급</option>
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="submit" value="등록">
								</td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
			
			<div style="width: 1200px" class="contents">
				<table class="table" style="margin: auto; text-align:center;">
					<tbody>
						<tr>
							<td>
								수당명
							</td>
							<td> 
								수당구분
							</td>
							<td>
								기타
							</td>
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
								<input type="button" class="btn btn-primary pull-list" value="삭제하기" onclick="javascript:deleteAllowanceItem(<%= String.valueOf(lst.get(i).get("ALLOWANCE_NO")) %>)">
							</td>
						</tr>
		<%
					}
				}
		%>
					</tbody>
				</table>
				<br> 
				<input type="button" class="btn btn-primary pull-list"
					 value="인쇄" >
			</div>
		</div>
	</div>
	
</body>
</html>