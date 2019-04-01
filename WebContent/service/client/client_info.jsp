<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import = "java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>거래처정보조회 페이지</title>
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
				<li><a href="../attend/attend_DataList">근태관리</a></li>
				<li><a href="../approval/selectDraft">결재관리</a></li>
				<li><a href="../work/selectBusinessLog">업무관리</a></li>
				<li class="active"><a href="../client/selectClientInfo">고객관리</a></li>
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
						<li><a href="login.jsp">로그아웃</a></li>
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
					<a class="active" href="#">거래처정보관리</a>
				</li>
				<li>
					<a href="./selectNameCardInfo">명함관리</a>
				</li>
			</ul>
		</nav>
		<div class="contents">
			<h2>거래처정보목록</h2>
			<table class="table">
				<thead>
					<tr>
						<th>업체구분</th>
						<th>업체명</th>
						<th>전화번호</th>
						<th>이메일</th>
						<th>주소</th>
						<th>내용</th>
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
								<input type="submit" id="CLIENT_CODE" name="CLIENT_CODE" class="btn btn-default" value="수정">
							</form> 
						</td>
						<td>
							<form action="../client/deleteClientInfo">
								<input type="hidden" id="CLIENT_CODE" name="CLIENT_CODE" class="form-control" value=<%= Integer.parseInt(String.valueOf(lst.get(i).get("CLIENT_CODE"))) %>>
								<input type="submit" id="CLIENT_CODE" name="CLIENT_CODE" class="btn btn-default" value="삭제">
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
				<input type="button" class="btn btn-primary pull-right" onclick="javascript:goClientInfoWrite()" value="등록">
			</div>
		</div>
	</div>
</body>
</html>