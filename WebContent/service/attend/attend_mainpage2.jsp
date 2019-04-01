<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>attend_mainpage</title>

<script type="text/javascript">

	function attendcodelist(){
		location.href = "../../attend/attend_CodeList";
	}

	function attenddataList(){
		location.href = "../../attend/attend_DataList";
	}	
	
</script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/common.css">
<script type = "text/javascript" src ="../js/jquery.min.js"></script>
<script type = "text/javascript" src ="../js/bootstrap.js"></script>
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
				<li class="active"><a href="#">�λ����</a></li>
				<li><a href="Pay.jsp">�޿�����</a></li>		
				<li><a href="Attend.jsp">���°���</a></li>
				<li><a href="Approval.jsp">�������</a></li>
				<li><a href="Work_taskUpdate.jsp">��������</a></li>
				<li><a href="Customer_List.jsp">������</a></li>
			</ul>
			<!-- ��Ӵٿ� ��� -->
			<ul class="nav navbar-nav navbar-right">
				<!-- ��Ӵٿ� -->
				<li class="dropdown">
					<!-- ������ �� �̹��� -->
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">ȸ������<span class="caret"></span></a>
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
					aria-expanded="false" href="#">�⺻���װ���</a>
					<ul class="collapse in depth2" id="group1">
						<li><a class="active" href="./read">�����׸����</a></li>
					</ul>
				</li>
				<li>
					<a data-toggle="collapse" aria-expanded="false" href="#">���°���</a>
				</li>
				<li>
					<a data-toggle="collapse" data-target="#group3"
					aria-expanded="false" href="#">��¹�</a>
					<ul class="collapse depth2" id="group3">
						<li><a href="#">������Ȳ</a></li>
						<li><a href="#">��������ǥ</a></li>
						<li><a href="#">�ް��ܿ��ϼ���Ȳ</a></li>
						<li><a href="#">�ް��������Ȳ</a></li>
					</ul>
				</li>
			</ul>
		</nav>		
		<div class="contents">
			<input type="button" onclick="javascript:attendcodelist()" value="�����ڵ�">
			<br>
			<input type="button" onclick="javascript:attenddataList()" value="����">
			<br>
		</div>
	</div>
</body>
</html>