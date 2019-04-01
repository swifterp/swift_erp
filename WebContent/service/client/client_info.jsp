<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import = "java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ŷ�ó������ȸ ������</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/common.css">
<script type = "text/javascript" src ="../js/jquery.min.js"></script>
<script type = "text/javascript" src ="../js/bootstrap.js"></script>
<script type="text/javascript">
	function goClientInfoWrite(){
	location.href="../service/client/client_clientinfowrite.jsp"
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
				<li><a href="../approval/selectDraft">�������</a></li>
				<li><a href="../work/selectBusinessLog">��������</a></li>
				<li class="active"><a href="../client/selectClientInfo">������</a></li>
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
						<li><a href="login.jsp">�α׾ƿ�</a></li>
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
					<a class="active" href="#">�ŷ�ó��������</a>
				</li>
				<li>
					<a href="./selectNameCardInfo">���԰���</a>
				</li>
			</ul>
		</nav>
		<div class="contents">
			<h2>�ŷ�ó�������</h2>
			<table class="table">
				<thead>
					<tr>
						<th>��ü����</th>
						<th>��ü��</th>
						<th>��ȭ��ȣ</th>
						<th>�̸���</th>
						<th>�ּ�</th>
						<th>����</th>
						<th></th>
						<th></th>						
					</tr>
				</thead>
			    <tbody>
					<%
						List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
						if(lst != null){
							for(int i=0;i<lst.size();i++){
					%>
					<tr>
						<td><%= lst.get(i).get("CLIENT_DIVISION") %> </td>
						<td><%= lst.get(i).get("CLIENT_NAME") %> </td>
						<td><%= lst.get(i).get("CLIENT_TEL") %> </td>
						<td><%= lst.get(i).get("CLIENT_EMAIL") %> </td>
						<td><%= lst.get(i).get("CLIENT_ADDRESS") %> </td>
						<td><%= lst.get(i).get("CLIENT_CONTENT") %> </td>
						<td>
							<form action="../client/selectClientInfoDetail">
								<input type="hidden" id="CLIENT_CODE" name="CLIENT_CODE" class="form-control" value=<%= Integer.parseInt(String.valueOf(lst.get(i).get("CLIENT_CODE"))) %>>
								<input type="submit" id="CLIENT_CODE" name="CLIENT_CODE" class="btn btn-default" value="����">
							</form> 
						</td>
						<td>
							<form action="../client/deleteClientInfo">
								<input type="hidden" id="CLIENT_CODE" name="CLIENT_CODE" class="form-control" value=<%= Integer.parseInt(String.valueOf(lst.get(i).get("CLIENT_CODE"))) %>>
								<input type="submit" id="CLIENT_CODE" name="CLIENT_CODE" class="btn btn-default" value="����">
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
				<input type="button" class="btn btn-primary pull-right" onclick="javascript:goClientInfoWrite()" value="���">
			</div>
		</div>
	</div>
</body>
</html>