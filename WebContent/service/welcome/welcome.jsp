<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<script type = "text/javascript" src ="../../js/jquery.min.js"></script>
<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<title>Welcome Page</title>

<script type="text/javascript">
	
	function goEmp(){

		location.href = "../emp/emp_mainpage.jsp";
		
	}
	
	function goPay(){

		location.href = "../pay/pay_mainpage.jsp";
		
	}
	function goApproval(){

		location.href = "../approval/approval_mainpage.jsp";
		
	}
	
	function goWork(){

		location.href = "../work/work_mainpage.jsp";
		
	}
	
	function goClient(){

		location.href = "../client/client_mainpage.jsp";
		
	}

</script>

</head>
<body>

<!-- �׺���̼� -->
	<nav class="navbar navbar-default" style="z-index: 1">
		<!-- �׺���̼� ��� -->
		<div class="navbar-header">
			<!-- �׺���̼� ������ ��� -->
			<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			aria-expanded="false">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
			</button>
			<!-- �׺���̼� ���� ���(�ΰ�) -->
			<a class="navbar-brand" href="welcome.jsp">
			<img class="logo" src="../../images/logo.png"></a>
		</div>
		
		<!-- �׺���̼� ���޴� -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<!-- �׺���̼� ���޴� ������Ʈ -->
			<ul class="nav navbar-nav">
				<li><a href="javascript:goEmp()">�λ����</a></li>
				<li><a onclick="javascript:goPay()">�޿�����</a></li>		
				<li><a href="#">���°���</a></li>
				<li><a onclick="javascript:goApproval()">�������</a></li>
				<li><a onclick="javascript:goWork()">��������</a></li>
				<li><a onclick="javascript:goClient()">������</a></li>
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
						<li><a href="login.jsp">�α׾ƿ�</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
</body>
</html>