<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emp_mainpage</title>
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<script type = "text/javascript" src ="../../js/jquery.min.js"></script>
<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
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
	
	<!--사원삭제-->
	function empDel(emp_number){
		location.href = "../emp/delete?emp_number="+emp_number;	
	}
</script>
</head>
<body>
	<!-- 왼쪽 네비게이션 -->
	<nav class="nav-left">	
		<ul class="bg-primary">
			<li>
				<a class="active" data-toggle="collapse" data-target="#group1"
				aria-expanded="false" href="#">기본사항등록</a>
				<ul class="collapse in depth2" id="group1">
					<li><a class="active" href="../emp/read">인사카드등록</a></li>
					<li><a href="../emp/appointRead">인사발령등록</a></li>
					<li><a href="../emp/deptRead">부서등록</a></li>
					<li><a href="../emp/emp_etcCodeAdd.jsp">기타코드등록</a></li>
				</ul>
			</li>
			<li>
				<a data-toggle="collapse" data-target="#group2"
				aria-expanded="false" href="#">조회/인쇄</a>
				<ul class="collapse depth2" id="group2">
					<li><a href="#">각종증명서인쇄</a></li>
					<li><a href="#">사원명부</a></li>
				</ul>
			</li>
		</ul>
	</nav>		
	<div class="contents">
		<h3>사원목록</h3>
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
</body>
</html>