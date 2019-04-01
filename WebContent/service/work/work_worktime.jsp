<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.util.Map, java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Ϻ��ٹ��ð� ������</title>
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<script type = "text/javascript" src ="../../js/jquery.min.js"></script>
<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
</head>
<body>
	<!-- �׺���̼� -->
	<nav class="navbar navbar-default" style="z-index:9999">
		<!-- �׺���̼� ��� -->
		<div class="navbar-header">
			<!-- �׺���̼� ���� ���(�ΰ�) -->
			<a class="navbar-brand" href="../../service/welcome/welcome.jsp"><img class="logo" src="../../images/logo.png"></a>
		</div>
		
		<!-- �׺���̼� ���޴� -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<!-- �׺���̼� ���޴� ������Ʈ -->
			<ul class="nav navbar-nav">
				<li><a href="../emp/read">�λ����</a></li>
				<li><a href="#">�޿�����</a></li>		
				<li><a href="#">���°���</a></li>
				<li><a href="#">�������</a></li>
				<li class="active"><a href="#">��������</a></li>
				<li><a href="#">������</a></li>
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
						<li><a href="../../service/mem/login.jsp">�α׾ƿ�</a></li>
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
					<a href="../../work/selectBusinessLog">����������ȸ</a>
				</li>
				<li>
					<a href="./work_monthwork.jsp">��������ٱ��</a>
				</li>
				<li>
					<a href="../../work/selectWorkState">�������Ȳ</a>
				</li>
				<li>
					<a class="active" href="./work_worktime.jsp">�Ϻ��ٹ��ð���ȸ</a>
				</li>
				<li>
					<a href="../../work/selectWorkEtc">�����/����/���� ��ȸ</a>
				</li>
			</ul>
		</nav>
		<div class="contents">
			<h2>�Ϻ� ����� ���</h2>
			<form id="search_day" action="../../work/selectWorkTime">
				<div class="input-group">
					<input type="date" class="form-control" name="search_day" min="2018-01-01" >
					<span class="input-group-btn" style="width:100px;">
						<input type="submit" class="btn btn-default" value="��ȸ" style="margin-bottom:20px;">	
					</span>
				</div>
			</form>
			<table class="table">
				<thead>
					<tr>
						<th>�ٹ�����</th>
						<th>����̸�</th>
						<th>attend_open</th>
						<th>attend_close</th>
					</tr>
				</thead>
			    <tbody>
					<%
						List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
						if(lst != null){
							for(int i=0;i<lst.size();i++){
					%>
					<tr>
						<td><%= String.valueOf(lst.get(i).get("ATTEND_DATE")).substring(0,10) %> </td>
						<td><%= String.valueOf(lst.get(i).get("EMP_NAME")) %> </td>
						<td><%= lst.get(i).get("ATTEND_OPEN") %> </td>
						<td><%= lst.get(i).get("ATTEND_CLOSE") %> </td>
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