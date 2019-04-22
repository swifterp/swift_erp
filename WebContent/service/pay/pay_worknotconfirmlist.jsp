<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.ArrayList, java.util.Map" %>
	<%
		List<Map<String, String>> notwork = (List<Map<String, String>>)request.getAttribute("list");
		List<String> empno = new ArrayList<String>();
		List<String> workdate = new ArrayList<String>();
		
	%>
<table>
	<%
		big1 : for(int i=0;i<notwork.size();i++){
			
			for(int j=0;j<empno.size();j++){
				if(empno.get(j).equals(String.valueOf(notwork.get(i).get("EMPNO")))){
					if(notwork.get(i).get("DAILYWORK_DATE").equals(workdate.get(j))){
						continue big1;
					}
				}
			}
	%>
	<tr>
	<td colspan="2">
		<%= notwork.get(i).get("DAILYWORK_DATE") %>
	</td>
	<td colspan="2">
		<%= String.valueOf(notwork.get(i).get("EMPNO")) %>
	</td>
	</tr>
	<tr>
	<%
			if(notwork != null){
				for(int j=0;j<notwork.size();j++){
					if(String.valueOf(notwork.get(i).get("EMPNO")).equals(String.valueOf(notwork.get(j).get("EMPNO")))) {
						if(notwork.get(i).get("DAILYWORK_DATE").equals(notwork.get(j).get("DAILYWORK_DATE"))){
	%>
						<td><%= notwork.get(j).get("ALLOWANCE_NAME") %></td>					
	<%
						}
					}
				}
			}
	%>
	<td></td>
	</tr>
	<tr>
	<%
			if(notwork != null){
				for(int j=0;j<notwork.size();j++){
					if(String.valueOf(notwork.get(i).get("EMPNO")).equals(String.valueOf(notwork.get(j).get("EMPNO")))) {
						if(notwork.get(i).get("DAILYWORK_DATE").equals(notwork.get(j).get("DAILYWORK_DATE"))){
	%>
						<td><%= String.valueOf(notwork.get(j).get("DAILYWORK_TIME")) %></td>
	<%
						}
					}
				}
			}
	%>
	<td><button type='button' onclick="insertConfirm(<%= String.valueOf(notwork.get(i).get("EMPNO")) %>)" class='btn btn-outline-primary'>확정</button></td>
	</tr>
	<%
			empno.add(String.valueOf(notwork.get(i).get("EMPNO")));
			workdate.add(notwork.get(i).get("DAILYWORK_DATE"));
		}
	%>
</table>