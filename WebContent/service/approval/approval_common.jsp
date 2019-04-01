<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.util.Map, java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ ��ȸ ������ �Դϴ�</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/common.css">
<script type ="text/javascript" src ="../js/jquery.min.js"></script>
<script type ="text/javascript" src ="../js/bootstrap.js"></script>
<script>
function myApproval(3){
		location.href = "../emp/delete?emp_number="+emp_number;	
	}
</script>
</head>
<body>
<!-- �׺���̼� -->
	<nav class="navbar navbar-default" style="z-index:9999">
		<!-- �׺���̼� ��� -->
		<div class="navbar-header">
			<!-- �׺���̼� ���� ���(�ΰ�) -->
			<a class="navbar-brand" href="../service/welcome/welcome.jsp"><img class="logo" src="../images/logo.png"></a>
		</div>
		
		<!-- �׺���̼� ���޴� -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<!-- �׺���̼� ���޴� ������Ʈ -->
			<ul class="nav navbar-nav">
				<li><a href="../emp/read">�λ����</a></li>
				<li><a href="#">�޿�����</a></li>		
				<li><a href="../attend/attend_DataList">���°���</a></li>
				<li class="active"><a href="./selectDraft">�������</a></li>
				<li><a href="../work/selectBusinessLog">��������</a></li>
				<li><a href="../client/selectClientInfo">������</a></li>
			</ul>
			<!-- ��Ӵٿ� ��� -->
			<ul class="nav navbar-nav navbar-right">
				<!-- ��Ӵٿ� -->
				<li class="dropdown">
					<!-- ������ �� �̹��� -->
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">����<span class="caret"></span></a>
					<!-- ������ �� -->
					<ul class="dropdown-menu">
						<li><a href="#">�α׾ƿ�</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	
	<div class="container">
		<!-- ���� �׺���̼� -->
		<nav class="nav-left">	
			<ul class="bg-primary">
				<li>
					<a class="active" data-toggle="collapse" data-target="#group1"
					aria-expanded="false" href="#">��ȸ</a>
					<ul class="collapse in depth2" id="group1">
						<li><a href="./selectDraft">��ȼ���ȸ</a></li>
						<li><a href="./selectCommon" class="active">��������ȸ</a></li>
						<li><a href="./selectApprovalPath">���������ȸ</a></li>
						<li><a href="./selectMyApproval" onclick="javascript:myApproval()">�� ���� ��ü ��ȸ</a></li>
					</ul>
				</li>
			</ul>
		</nav>		
		<div class="contents">
			<h2>������ ��ȸ</h2>
			<table class="table">
				<thead>
					<tr> 
						<th>No.</th>
						<th>����</th>
						<th>�������</th>
						<th>�����</th>
						<th>DRAFT_REFERENCE</th>
						<th>������</th>
						<th>DRAFT_STYLE</th>
						<th>����</th>
						<th>DRAFT_CONTENT</th>
						<th>DRAFT_NAME</th>
						
					</tr>
				</thead>
			    <tbody>
					<%
						List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
						if(lst != null){
							for(int i=0;i<lst.size();i++){
					%>
					<tr>
						<td><%= Integer.parseInt(String.valueOf(lst.get(i).get("DRAFT_NO"))) %> </td>
						<td><%= lst.get(i).get("DRAFT_TITLE") %> </td>
						<td><%= String.valueOf(lst.get(i).get("DRAFT_DATE")).substring(0,10) %> </td>
						<td><%= lst.get(i).get("DRAFT_WRITER") %> </td>
						<td><%= lst.get(i).get("DRAFT_REFERENCE") %> </td>
						<td><%= lst.get(i).get("DRAFT_OWNER") %> </td>
						<td><%= lst.get(i).get("DRAFT_STYLE") %> </td>
						<td><%= lst.get(i).get("DRAFT_DIVISION") %> </td>
						<td><%= lst.get(i).get("DRAFT_CONTENT") %> </td>
						<td><%= lst.get(i).get("DRAFT_NAME") %> </td>
					</tr>
					<%
							}
						}
				 	%>
			    </tbody>
			</table>
		</div>
	</div>
</body>
</html>