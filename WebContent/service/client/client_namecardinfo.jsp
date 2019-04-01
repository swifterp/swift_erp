<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>거래처정보조회 페이지</title>
<script type="text/javascript">
	function goNameCardInfoWrite(){
		
	location.href="../service/client/client_namecardinfowrite.jsp"
		}
	
	function goDeleteNameCardInfo(NAMECARD_CODE){
		
	location.href="../client/deleteNameCardInfo?NAMECARD_CODE=" + NAMECARD_CODE;
		}
	
	function goUpdateNameCardInfo(CLIENT_CODE){
		
	location.href="../service/client/client_namecardinfowrite.jsp"
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
				<li><a href="#">업무관리</a></li>
				<li class="active"><a href="#">고객관리</a></li>
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
					<a href="./selectClientInfo">거래처정보관리</a>
				</li>
				<li>
					<a class="active" href="./selectNameCardInfo">명함관리</a>
				</li>
			</ul>
		</nav>
		<div class="contents">
			<h2>명함 정보</h2>
			<table class="table">
				<thead>
					<tr> 
						<th>명함이름</th>
						<th>고객이름</th>
						<th>부서</th>
						<th>직급</th>
						<th>전화번호</th>
						<th>주소</th>
						<th colspan="2">비고</th>		
					</tr>
				</thead>
			    <tbody>
					<%
						List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
						if(lst != null){
							for(int i=0;i<lst.size();i++){
					%>
					<tr>
						<td><%= lst.get(i).get("NAMECARD_NAME") %> </td>
						<td><%= lst.get(i).get("CLIENT_NAME") %> </td>
						<td><%= lst.get(i).get("NAMECARD_DIVISION") %> </td>
						<td><%= lst.get(i).get("NAMECARD_POSITION") %> </td>
						<td><%= lst.get(i).get("NAMECARD_TEL") %> </td>
						<td><%= lst.get(i).get("NAMECARD_ADDRESS") %> </td>
						<td>
						<form action="../client/selectNameCardDetail">
							<input type="hidden" id="NAMECARD_CODE" name="NAMECARD_CODE" value=<%= Integer.parseInt(String.valueOf(lst.get(i).get("NAMECARD_CODE"))) %>>
							<input type="submit" class="btn btn-default" id="NAMECARD_CODE" name="NAMECARD_CODE" value="수정">
						</form>
						</td>
						<td>
						<input type="button" class="btn btn-default" onclick="javascript:goDeleteNameCardInfo(<%= Integer.parseInt(String.valueOf(lst.get(i).get("NAMECARD_CODE"))) %>)" value="삭제">
						
						</td>
					</tr>
					<%
							}
						}
				 	%>
			    </tbody>
			</table>
			<div class="btn_group">
				<input type="button" onclick="javascript:goNameCardInfoWrite()" class="btn btn-primary pull-right" value="명함등록">
			</div>
		</div>
	</div>
</body>
</html>