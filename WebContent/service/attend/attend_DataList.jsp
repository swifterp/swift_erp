<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근태 관리</title>
<script type="text/javascript">
	function attendDataInsert(){
		location.href = "../attend/attend_DataInsert.jsp";
	}
</script>

<%@ include file="../common/ui_common.jsp" %>
<style>
	.tb_left td {text-align:left;}
</style>
</head>
<body>
<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">		
		<%@ include file="../common/left_menu_attend.jsp" %>
		<div class="contents">
			<h2>근태관리 목록</h2>
			<form action="../attend/attend_DetailData">
				<table class="table tb_left" style="margin-bottom:20px; background:#eee;">

					<tbody>
						<tr>
							<th class="line">사원번호</th>
							<td class="line">
								<input type="text" id="empno" name="empno" class="form-control"
									   style="width:200px; display:inline-block">
							</td>
						</tr>
						<tr>
							<th class="line">근무시간</th>
							<td class="line">
								<div class="input-group">
									<input type="text" class="form-control" style="width:200px; display:inline-block" id="attend_time" name="attend_time">
								</div>
							</td>
						</tr>
						<tr>
							<th class="line" style="width:150px;">
								근태날짜
							</th>
							<td class="line">
							<input type="date" name="attend_date" class="form-control"
								style="width:200px; display:inline-block">
							&nbsp;~&nbsp;
							<input type="date" name="attend_date2" class="form-control"
								style="width:200px; display:inline-block">
							</td>
						</tr>
						<tr>
							<th class="line">
								근태명
							</th>
							<td class="line">
								<div class="input-group">
									<input type="text" id="attend_name" name="attend_name" class="form-control"
										   style="width:200px; display:inline-block">
								</div>
							</td>
						</tr>
						<tr>
							<td class="line" style="width:155px" colspan="2">
								<div class="input-group pull-right">
									<input type="submit" class="btn btn-primary" value="조회">
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
			<table class="table">
				<thead>
					<tr>
						<th> 근태번호 </th>
						<th> 사원번호 </th>
						<th> 사원명 </th>
						<th> 근태날짜 </th>
						<th> 근태명 </th>
						<th> 근무시간 </th>
						<th> 비고 </th>	
						<th> 출근시간 </th>	
						<th> 퇴근시간 </th>	
						<th>    </th>
						<th>    </th>
					</tr>
				</thead>	
				<tbody>
			   <%
			      List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
			   
			      if(lst != null){
			         for(int i=0;i<lst.size();i++){
			   %>
			            <tr>
			<%--           <td><input type="checkbox" value="<%= String.valueOf(lst.get(i).get("ATTEND_NO")) %>"></td> --%>
			               <td><%= String.valueOf(lst.get(i).get("ATTEND_NO")) %> </td>
			               <td><%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %> </td>
			               <td><%= String.valueOf(lst.get(i).get("EMP_NAME")) %> </td>
			               <td><%= lst.get(i).get("ATTEND_DATE") %> </td>
			               <td><%= String.valueOf(lst.get(i).get("ATTEND_NAME")) %> </td>
			               <td><%= String.valueOf(lst.get(i).get("ATTEND_TIME")) %> </td>
			               <td><%= lst.get(i).get("ATTEND_M_ETC") %> </td>
			               <td><%= lst.get(i).get("ATTEND_OPEN") %> </td>
			               <td><%= lst.get(i).get("ATTEND_CLOSE") %> </td>
			               <td> 
			                <form action="../attend/attend_DataListLow">
			               		<input class="form-control" type="hidden" id="attendno" name="attendno" value="<%= String.valueOf(lst.get(i).get("ATTEND_NO")) %>">
			               		<input class="form-control btn btn-default" type="submit" value="수정">
			               	</form>
							</td><td>
							<form action="../attend/attend_DataDelete">
								<input class="form-control" type="hidden" id="attend_no" name="attend_no" value="<%= String.valueOf(lst.get(i).get("ATTEND_NO")) %>">
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
				<input type="button" class="btn btn-primary pull-right" onclick="javascript:attendDataInsert()" value="상세등록">
			</div>
<%-- 				<form action="../work/insertWorkStart">
					<input type="text" id="EMPNO" name="EMPNO" value="<%=sess.get(0).get("EMPNO")%>">
				<input type="hidden" id="EMPNO" name="EMPNO" value="<%=sess.get(0).get("EMPNO")%>">
					<input type="submit" class="btn btn-primary pull-right" value="출근">
				</form>
				<form action="../work/insertWorkEnd">
					<input type="text" id="EMPNO" name="EMPNO" value="1">
				<input type="hidden" id="EMPNO" name="EMPNO" value="<%=sess.get(0).get("EMPNO")%>">
					<input type="submit" class="btn btn-primary pull-right" value="퇴근">
				</form> --%>
			<input type="button" class="btn btn-primary pull-right" onclick="javascript:attend_end_add(<%= String.valueOf(sess.get(0).get("EMPNO")) %>)" value="퇴근">

			<input type="button" class="btn btn-primary pull-right" onclick="javascript:attend_start_add(<%= String.valueOf(sess.get(0).get("EMPNO")) %>)" value="출근">

		</div>
	</div>
<script type="text/javascript">
	function attend_start_add(EMPNO){
		location.href = "../attend/insertWorkStart?EMPNO="+EMPNO;
	}
</script>
<script type="text/javascript">
	function attend_end_add(EMPNO){
		location.href = "../attend/insertWorkEnd?EMPNO="+EMPNO;
	}
</script>

</body>
</html>