<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ���� ������</title>
<script type="text/javascript">
	function attendadd(){
		location.href = "../service/attend/attend_attendadd.jsp";
	}

</script>
</head>
<body>
<table style="border:1px solid #ccc; text-align:center;">
<thead>
	<tr>
		<td>���¹�ȣ</td>
		<td>�����ȣ</td>
		<td>���³�¥</td>
		<td>�����ڵ�</td>
		<td>�ٹ��ð�</td>
		<td>���</td>	
		<td>��ٽð�</td>	
		<td>��ٽð�</td>	
	</tr>
</thead>	
	<tbody>
   <%
      List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
   
      if(lst != null){
         for(int i=0;i<lst.size();i++){
   %>
            <tr>
               <td><%= String.valueOf(lst.get(i).get("ATTEND_NO")) %> </td>
               <td><%= String.valueOf(lst.get(i).get("EMPNO")) %> </td>
               <td><%= lst.get(i).get("ATTEND_DATE") %> </td>
               <td><%= String.valueOf(lst.get(i).get("ATTEND_CODE")) %> </td>
               <td><%= String.valueOf(lst.get(i).get("ATTEND_TIME")) %> </td>
               <td><%= lst.get(i).get("ATTEND_M_ETC") %> </td>
               <td><%= lst.get(i).get("ATTEND_OPEN") %> </td>
               <td><%= lst.get(i).get("ATTEND_CLOSE") %> </td>
            </tr>
   <%
         }
      }
    %>
    </tbody>
</table>


<input type="button" onclick="javascript:attendadd()" value="���">

<form action="../attend/attenddelete">
<input type="text" id="attend_no" name="attend_no" value="7">
<input type="submit" value="����">
</form>

<form action="../attend/attend_manager_low">
<input type="text" id="attendno" name="attendno" value="1">
<input type="submit" value="����">
</form>

</body>
</html>