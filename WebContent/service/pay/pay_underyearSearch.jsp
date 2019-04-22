<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../common/ui_common.jsp" %>
<title>1년미만자상여지급률 등록 페이지</title>
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
			<input type="hidden" id="jan" name="jan" value=${list.get(0).get("JAN") }>
			<input type="hidden" id="feb" name="feb" value=${list.get(0).get("FEB") }>
			<input type="hidden" id="mar" name="mar" value=${list.get(0).get("MAR") }>
			<input type="hidden" id="apr" name="apr" value=${list.get(0).get("APR") }>
			<input type="hidden" id="may" name="may" value=${list.get(0).get("MAY") }>
			<input type="hidden" id="jun" name="jun" value=${list.get(0).get("JUN") }>
			<input type="hidden" id="jul" name="jul" value=${list.get(0).get("JUL") }>
			<input type="hidden" id="aug" name="aug" value=${list.get(0).get("AUG") }>
			<input type="hidden" id="sep" name="sep" value=${list.get(0).get("SEP") }>
			<input type="hidden" id="oct" name="oct" value=${list.get(0).get("OCT") }>
			<input type="hidden" id="nov" name="nov" value=${list.get(0).get("NOV") }>
			<input type="hidden" id="deb" name="deb" value=${list.get(0).get("DEB") }>
		
			<script>
				var jbAry = Array();
				jbAry[0] = document.getElementById("jan").value;
				jbAry[1] = document.getElementById("feb").value;
				jbAry[2] = document.getElementById("mar").value;
				jbAry[3] = document.getElementById("apr").value;
				jbAry[4] = document.getElementById("may").value;
				jbAry[5] = document.getElementById("jun").value;
				jbAry[6] = document.getElementById("jul").value;
				jbAry[7] = document.getElementById("aug").value;
				jbAry[8] = document.getElementById("sep").value;
				jbAry[9] = document.getElementById("oct").value;
				jbAry[10] = document.getElementById("nov").value;
				jbAry[11] = document.getElementById("deb").value;
				
				$(function () {
					$('#lblTable').empty();
					var row = 12;
					var col = 3;
					var strTable = "<table class='table' style='margin: auto;'>";
					
					for (var i = 0; i < row; i++) {
					     strTable += "<tr>";
					    for (var j = 0; j < col; j++) {
							if(j == 0){
					    		strTable += "<td style='width: 50%; text-align: left; padding-left: 60px'>" + (i+1) +"</td>";
							}
							if(j == 1) {
								strTable += "<td style='width: 1%'>" + "." + "</td>"
							}
							if(j == 2) {
								strTable += "<td style='width: 49%; text-align: left;'>" +
								 "<input type='text' name='"+document.getElementById("jan").id+"' value='"+jbAry[i]+"' class='form-control' style='width:100px; height: 50%; display: inline-block'/>"+ "%" + "</td>"
							}
					    }
					    strTable += "</tr>";
					    strTable += "</tbody>"
					}
					strTable += "</table>";
					
					$('#lblTable').append(strTable);
				});
			</script>
			<table class="table" style="margin: auto;">
				<tbody>
					<tr>
						<th style="width: 50%; text-align: left; padding-left: 40px">
							근속월
						</th>
						<th style="width: 1%"> 
						</th>
						<th style="width: 49%; text-align: left; padding-left: 40px"> 
							지급률
						</th>
					</tr>
				</tbody>
			</table>
			<form action="../pay/underyear">
				<div id="lblTable">
				</div>
			</form>
			<div class="btn_group">
				<input type="submit" class="btn btn-outline-primary pull-right" value="전송">
				<input type="button" class="btn btn-outline-primary pull-left" value="인쇄" >
			</div>
		</div>
	</div>
</body>
</html>