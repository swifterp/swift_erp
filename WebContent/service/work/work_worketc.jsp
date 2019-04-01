<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�����/����/���� ��ȸ</title>
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
				<li><a href="../emp/read">�λ����</a></li>
				<li><a href="#">�޿�����</a></li>		
				<li><a href="../attend/attend_DataList">���°���</a></li>
				<li><a href="../approval/selectDraft">�������</a></li>
				<li class="active"><a href="../work/selectBusinessLog">��������</a></li>
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
						<li><a href="../service/mem/login.jsp">�α׾ƿ�</a></li>
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
					<a href="./selectBusinessLog">����������ȸ</a>
				</li>
				<li>
					<a href="../service/work/work_monthwork.jsp">��������ٱ��</a>
				</li>
				<li>
					<a href="./selectWorkState">�������Ȳ</a>
				</li>
				<li>
					<a href="../service/work/work_worktime.jsp">�Ϻ��ٹ��ð���ȸ</a>
				</li>
				<li>
					<a class="active" href="./selectWorkEtc">�����/����/���� ��ȸ</a>
				</li>
			</ul>
		</nav>
		<div class="contents">
			${list.get(0) }
			${list.get(1) }
			${list.get(2) }
		</div>
	</div>
</body>
</html>