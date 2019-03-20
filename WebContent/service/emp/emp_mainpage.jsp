<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emp_mainpage</title>

<script type="text/javascript">
	<!--사원등록-->
	function goEmpAdd(){
		location.href = "../service/emp/emp_add.jsp";	
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
<h2>사원 목록</h2>
<input type="text" value="사원 또는 이름 검색">
<button type="submit">검색</button>

<table style="border:1px solid #ccc">
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
			<td><input type="button" value="이메일"></td>
			<td><input type="button" value="인쇄"></td>
			<td><input type="button" onclick="javascript:empView(<%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %>)" value="상세보기"></td>
			<td><input type="button" value="삭제" onclick="javascript:empDel(<%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %>)"></td>
		</tr>
		<%
				}
			}
	 	%>
    </tbody>
</table>
<input type="button" onclick="javascript:goEmpAdd()" value="사원등록" />
</body>
</html>