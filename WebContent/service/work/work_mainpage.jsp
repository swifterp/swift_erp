<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>work_mainpage</title>
<script type="text/javascript">

		function goBusinessLog(){
			location.href = "../../work/selectBusinessLog"
		}
		
		/* function goMonthWork(search_month){
			alert(search_month);
			location.href = "../../work/selectMonthWork"
		} */
		
		function goWorkState(){
			location.href = "../../work/selectWorkState"
		}
		
		/* function goWorkTime(){
			location.href = "../../work/selectWorkTime"
		} */
		
		function goWorkEtc(){
			location.href = "../../work/selectWorkEtc"
		}

		
	</script>
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
			<a class="navbar-brand" href="../service/welcome/welcome.jsp"><img class="logo" src="../../images/logo.png"></a>
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
					<a class="active" href="#">����������ȸ</a>
				</li>
				<li>
					<a href="#">��������ٱ��</a>
				</li>
				<li>
					<a href="#">�������Ȳ</a>
				</li>
				<li>
					<a href="#">�Ϻ��ٹ��ð���ȸ</a>
				</li>
				<li>
					<a href="#">�����/����/���� ��ȸ</a>
				</li>
			</ul>
		</nav>
		<div class="contents">
			<input type="button" class="btn btn-default" onclick="javascript:goBusinessLog()" value="����������ȸ">
			<form id="search_month" action="../../work/work_monthwork.jsp">
				<input type="month" name="search_month" min="2018-01" value="2019-01">
				<input type="submit" value="���� ����� ���">
			</form>		
			<!-- <input type="button" onclick="javascript:goMonthWork()" value="��������ٱ��"> <p> -->		
			<input type="button" class="btn btn-default" onclick="javascript:goWorkState()" value="�������Ȳ"> <p>	
			<form id="search_day" action="../../work/selectWorkTime">
				<input type="date" name="search_day" min="2018-01-01" >
				<input type="submit" value="�Ϻ��ٹ��ð���ȸ">	
			</form>
			<!-- <input type="button" onclick="javascript:goWorkTime()" value="�Ϻ��ٹ��ð���ȸ"> <p> -->
			<input type="button" class="btn btn-default" onclick="javascript:goWorkEtc()" value="�����/����/���� ��ȸ">
		</div>
	</div>
</body>
</html>