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
		location.href = "../service/emp/emp_empAdd.jsp";	
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
	<div class="container">
		<div class="contents">
			<h2>사원 목록</h2>
			<form action="../emp/empSearchNumName">
				<div class="input-group">
					<input type="text" class="form-control" id="empinfo" name="empinfo" value="성명 또는 부서">
					<span class="input-group-btn" style="width:100px;">
						<button type="submit" class="btn btn-default">검색</button>
					</span>
				</div>
			</form>
			<table class="table">
				<thead>
					<tr>
						<td>사번</td>
						<td>성명</td>
						<td>주민등록번호</td>
						<td>부서</td>
						<td>직급</td>
						<td>입사일자</td>
						<td>Email</td>
						<td>인쇄</td>
						<td>상세보기</td>
						<td>삭제</td>
					</tr>
				</thead>
			    <tbody>
					<%
						List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
						if(lst != null){
							for(int i=0;i<lst.size();i++){
					%>
					<tr>
						<td><%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %> </td>
						<td><%= lst.get(i).get("EMP_NAME") %></td>
						<td><%= lst.get(i).get("EMP_RESIDENT_NUMBER") %></td>
						<td><%= lst.get(i).get("DNAME") %></td>
						<td><%= lst.get(i).get("RANK_NAME") %></td>
						<td><%= lst.get(i).get("EMP_JOIN_DATE") %></td>
						<td><a class="btn btn-default">이메일</a></td>
						<td><a class="btn btn-default">인쇄</a></td>
						<td><a class="btn btn-default" onclick="javascript:empView(<%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %>)">상세보기</a></td>
						<td><a class="btn btn-default" onclick="javascript:empDel(<%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %>)">삭제</a></td>
					</tr>
					<%
							}
						}
				 	%>
			    </tbody>
			</table>
			<a class="btn btn-primary" onclick="javascript:goEmpAdd()">사원등록</a>
		</div>
	</div>
</body>
</html>