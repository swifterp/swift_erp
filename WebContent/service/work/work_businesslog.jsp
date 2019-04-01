<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List,java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업무일지 조회</title>
<script type="text/javascript">

	function goBusinessLogWrite(){
		location.href="../service/work/work_businesslogwrite.jsp"
	}
	
	function goClientList(){
		
		location.href="../service/work/work_clientlist.jsp"
			
	}
	function goDeptList(){
		
		location.href="../service/work/work_deptlist.jsp"
			
	}
</script>
<script type="text/javascript">
	function goClientInfoWrite(){
	location.href="../service/client/client_clientinfowrite.jsp"
		}
</script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../css/common.css">
<script type = "text/javascript" src ="../js/jquery.min.js"></script>
<script type = "text/javascript" src ="../js/bootstrap.js"></script>
</head>
<body>
	<!-- 네비게이션 -->
	<nav class="navbar navbar-default" style="z-index:9999">
		<!-- 네비게이션 헤더 -->
		<div class="navbar-header">
			<!-- 네비게이션 왼쪽 헤더(로고) -->
			<a class="navbar-brand" href="../service/welcome/welcome.jsp"><img class="logo" src="../images/logo.png"></a>
		</div>
		
		<!-- 네비게이션 본메뉴 -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<!-- 네비게이션 본메뉴 엘리먼트 -->
			<ul class="nav navbar-nav">
				<li><a href="../emp/read">인사관리</a></li>
				<li><a href="#">급여관리</a></li>		
				<li><a href="#">근태관리</a></li>
				<li><a href="#">결재관리</a></li>
				<li class="active"><a href="#">업무관리</a></li>
				<li><a href="#">고객관리</a></li>
			</ul>
			<!-- 드롭다운 기능 -->
			<ul class="nav navbar-nav navbar-right">
				<!-- 드롭다운 -->
				<li class="dropdown">
					<!-- 누르기 전 이미지 -->
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">설정<span class="caret"></span></a>
				<!-- 눌렀을 때 -->
				<ul class="dropdown-menu">
						<li><a href="../service/mem/login.jsp">로그아웃</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<!-- 왼쪽 네비게이션 -->
		<nav class="nav-left">	
			<ul class="bg-primary">
				<li>
					<a class="active" href="./selectBusinessLog">업무일지조회</a>
				</li>
				<li>
					<a href="../service/work/work_monthwork.jsp">월별출퇴근기록</a>
				</li>
				<li>
					<a href="./selectWorkState">출퇴근현황</a>
				</li>
				<li>
					<a href="../service/work/work_worktime.jsp">일별근무시간조회</a>
				</li>
				<li>
					<a href="./selectWorkEtc">출퇴근/근태/일정 조회</a>
				</li>
			</ul>
		</nav>
		<div class="contents">
			<h2>업무일지목록</h2>
			<form action="../work/selectClientList">
				<div class="input-group">
					<input type="text" class="form-control" name="clientName" placeholder="거래처이름">
					<span class="input-group-btn" style="width:100px;">
						<button type="submit" class="btn btn-default" style="margin-bottom:20px;">검색</button>
					</span>
				</div>
			</form>
			<form action="../work/selectDeptList">
			<div class="input-group">
				<input type="text" class="form-control" name="deptName" placeholder="부서이름">
				<span class="input-group-btn" style="width:100px;">
					<button type="submit" class="btn btn-default" style="margin-bottom:20px;">검색</button>
				</span>
			</div>
			</form> 
			<table class="table">
				<thead>
					<tr>
						<th>No.</th>
						<th>업무보고일</th>
						<th>부서</th>
						<th>거래처</th>
						<th>프로젝트</th>
						<th>업무내용</th>	
					</tr>
				</thead>
			    <tbody>
					<%
						List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
						if(lst != null){
							for(int i=0;i<lst.size();i++){
					%>
					<tr>
						<td><%= String.valueOf(lst.get(i).get("LOG_NO")) %> </td>
						<td><%= String.valueOf(lst.get(i).get("LOG_DATE")).substring(0,10) %> </td>
						<td><%= lst.get(i).get("DNAME") %> </td>
						<td><%= lst.get(i).get("LOG_CLIENT") %> </td>
						<td><%= lst.get(i).get("LOG_PROJECT") %> </td>
						<td><%= lst.get(i).get("LOG_CONTENT") %> </td>
					</tr>
					<%
							}
						}
				 	%>
			    </tbody>
			</table>	
			<div class="btn_group">
				<input type="button" class="btn btn-primary pull-right" onclick="javascript:goBusinessLogWrite()" value="업무일지작성">	
			</div>
		</div>
	</div>
</body>
</html>