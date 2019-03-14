<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>근태 관리 페이지</title>
<script type="text/javascript">
	function attendadd(){
		location.href = "../service/attend/attend_attendadd.jsp";
	}

</script>
</head>
<body>
<table>
   <%
      List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
   
      if(lst != null){
         for(int i=0;i<lst.size();i++){
   %>
            <tr>
               <td><%= lst.get(i).get("ATTEND_NO") %> </td>
               <td><%= lst.get(i).get("EMPNO") %> </td>
               <td><%= lst.get(i).get("ATTEND_DATE") %> </td>
               <td><%= lst.get(i).get("ATTEND_CODE") %> </td>
               <td><%= lst.get(i).get("ATTEND_TIME") %> </td>
               <td><%= lst.get(i).get("ATTEND_M_ETC") %> </td>
            </tr>
   <%
         }
      }
    %>
</table>
<%-- <table style="border:1px solid #ccc; text-align:center;">
<thead>
<tr>
	<td>근태번호</td>
	<td>사원번호</td>
	<td>근태날짜</td>
	<td>근태코드</td>
	<td>근무시간</td>
	<td>비고</td>
</tr>
</thead>
<tbody>

	<tr>
	<td>${list.get(i).get("ATTEND_NO")}</td>
	<td>${list.get(i).get("EMPNO")}</td>
	<td>${list.get(i).get("ATTEND_DATE")}</td>
	<td>${list.get(i).get("ATTEND_CODE")}</td>
	<td>${list.get(i).get("ATTEND_TIME")}</td>
	<td>${list.get(i).get("ATTEND_M_ETC")}</td>
</tr>

</tbody>

</table> --%>

<input type="button" onclick="javascript:attendadd()" value="등록">

<form action="../attend/attenddelete">
<input type="text" id="attend_no" name="attend_no" value="7">
<input type="submit" value="삭제">
</form>
</body>
</html>