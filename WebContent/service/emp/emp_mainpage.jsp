<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emp_mainpage</title>
<%@ include file="../common/ui_common.jsp" %>
<script type="text/javascript">
	<!--사원등록-->
	function goEmpAdd(){
		location.href = "../emp/emp_empAdd.jsp";	
	}
	<!--사원상세보기-->
	function empView(emp_number){
		location.href = "../emp/view?emp_number="+emp_number;
	}
	<!--사원수정-->
	function empUpd(emp_number){
		location.href = "../emp/update?emp_number="+emp_number;	
	}
	<!--사원삭제-->
	function empDel(emp_number){
		location.href = "../emp/delete?emp_number="+emp_number;	
	}
</script>
</head>
<body>
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">		
		<%@ include file="../common/left_menu_emp.jsp" %>
		<div class="contents">
			<h2>사원목록</h2>
			<form action="../emp/empSearchNumName">
				<div class="input-group">
					<input type="text" class="form-control" id="empinfo" name="empinfo" placeholder="성명 또는 부서">
					<span class="input-group-btn" style="width:100px;">
						<button type="submit" class="btn btn-default" style="margin-bottom:20px;">검색</button>
					</span>
				</div>
			</form>
			<table class="table">
				<colgroup>
					<col width="10%">
					<col width="10%">
					<col width="20%">
					<col width="15%">
					<col width="10%">
					<col width="15%">
					<col width="5%">
					<col width="5%">
					<col width="5%">
					<col width="5%">
				</colgroup>
				<thead>
					<tr>
						<th>사번</th>
						<th>성명</th>
						<th>주민등록번호</th>
						<th>부서</th>
						<th>직급</th>
						<th>입사일자</th>
						<th>Email</th>
						<th>인쇄</th>
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
						<td><a onclick="javascript:empView(<%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %>)"><%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %></a></td>
						<td><a onclick="javascript:empView(<%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %>)"><%= lst.get(i).get("EMP_NAME") %></a></td>
						<td><%= lst.get(i).get("EMP_RESIDENT_NUMBER") %></td>
						<td><%= lst.get(i).get("DNAME") %></td>
						<td><%= lst.get(i).get("RANK_NAME") %></td>
						<td><%= lst.get(i).get("EMP_JOIN_DATE") %></td>
						<td><a class="btn btn-default">이메일</a></td>
						<td><a class="btn btn-default">인쇄</a></td>
						<td><a class="btn btn-default" onclick="javascript:empView(<%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %>)">수정</a></td>
						<td><a class="btn btn-default" onclick="javascript:empDel(<%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %>)">삭제</a></td>
					</tr>
					<%
							}
						}
				 	%>
			    </tbody>
			</table>
			<div class="btn_group">
				<a class="btn btn-primary pull-right" onclick="javascript:goEmpAdd()">사원등록</a>
			</div>
		</div>
	</div>
</body>
</html>