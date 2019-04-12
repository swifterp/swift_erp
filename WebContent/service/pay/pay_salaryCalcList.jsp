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
<title>급여계산현황 페이지</title>

<style type="text/css">
	.text-font{
		font-size: 12px;
	}
</style>

<script type="text/javascript">
	function personalPay(report){
		location.href = "../pay/personalPay?report="+report;
	}
	function totalCalculation(report){
		location.href = "../pay/totalCalculation?report="+report;
	}
	function personalCalculation(report){
		location.href = "../service/pay/pay_personalCalcSearch.jsp?report="+report;
	}
	function payConfirm(report){
		location.href = "../pay/payConfirm?report="+report;
	}
	function payConfirmCancel(report){
		location.href = "../pay/payConfirmCancel?report="+report;
	}
	function deletePayroll(report){
		location.href = "../pay/deletePayroll?report="+report;
	}
</script>
</head>
<body>
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">
		<%@ include file="../common/left_menu_pay.jsp" %>
		<div class="contents">
	<div style="padding-right: 30px" class="contents">
		<div id="lblTable">
			<table id='set_table' class='table text-font' style='margin: auto; text-align:center;'>
				<thead>
					<tr>
						<td width="10%">신고귀속</td>
						<td width="10%">대장명칭</td>
						<td width="10%">계산금액</td>
						<td width="10%">급여계산</td>
						<td width="10%">개인별급여내역</td>
						<td width="10%">계산확정</td>
						<td width="10%">내역삭제</td>
					</tr>
				</thead>
				<%
					List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
				
					if(lst != null){
						for(int i=0;i<lst.size();i++){
							if(Integer.parseInt(String.valueOf(lst.get(i).get("SALARYCALC_CONFIRM"))) == 0){
				%>
								<tr>
									<td width="10%"><%= lst.get(i).get("SALARYCALC_REPORT") %></td>
									<td width="10%"><%= lst.get(i).get("SALARYCALC_NAME") %></td>
									<td width="10%"><%= String.valueOf(lst.get(i).get("SALARYCALC_TOTAL")) %></td>
									<td width="10%"><input type="button" class="btn btn-primary pull-list" onclick="javascript:totalCalculation('<%= lst.get(i).get("SALARYCALC_REPORT") %>')" value="전체계산"></td>
									<td width="10%"><input type="button" class="btn btn-primary pull-list" onclick="javascript:personalPay('<%= lst.get(i).get("SALARYCALC_REPORT") %>')" value="개인별급여내역"></td>
									<td width="10%"><input type="button" class="btn btn-primary pull-list" onclick="javascript:payConfirm('<%= lst.get(i).get("SALARYCALC_REPORT") %>')" value="계산확정"></td>
									<td width="10%"><input type="button" class="btn btn-primary pull-list" onclick="javascript:deletePayroll('<%= lst.get(i).get("SALARYCALC_REPORT") %>')" value="내역삭제"></td>
								</tr>
				<%
							} else {
				%>
								<tr>
									<td width="10%"><%= lst.get(i).get("SALARYCALC_REPORT") %></td>
									<td width="10%"><%= lst.get(i).get("SALARYCALC_NAME") %></td>
									<td width="10%"><%= String.valueOf(lst.get(i).get("SALARYCALC_TOTAL")) %></td>
									<td width="10%"></td>
									<td width="10%"><input type="button" class="btn btn-primary pull-list" onclick="javascript:personalPay('<%= lst.get(i).get("SALARYCALC_REPORT") %>')" value="개인별급여내역"></td>
									<td width="10%"><input type="button" class="btn btn-primary pull-list" onclick="javascript:payConfirmCancel('<%= lst.get(i).get("SALARYCALC_REPORT") %>')" value="확정취소"></td>
									<td width="10%"></td>
								</tr>
				<%
							}
						}
					}
				 %>
			</table>
		</div>
		<br>
		<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">추가</button>
	</div>

	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">추가하기</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        <form action="../pay/insertPayroll">
			기준일자(년):<br>
			<input type="text" name="year">
			<br>
			
			기준일자(월):<br>
			<input type="text" name="month">
			<br>
			
			제목:<br>
			<input type="text" name="title">
			<br>
			
			<br>
			<input type="submit" class="btn btn-primary pull-list" value="등록">
			</form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
	      </div>
	    </div>
	  </div>
	</div>
</div></div>
</body>
</html>