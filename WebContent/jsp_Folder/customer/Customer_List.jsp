<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<script type = "text/javascript" src ="../../js/jquery.min.js"></script>
<script type = "text/javascript" src ="../../js/jquery-3.3.1.js"></script>
<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <style>
    #container {
      width: 70%;
      margin: 0 auto;     /* 가로로 중앙에 배치 */
      padding-top: 10%;   /* 테두리와 내용 사이의 패딩 여백 */
    }
     
    /* Bootstrap 수정 */
    .table > thead {
      background-color: #b3c6ff;
    }
    .table > thead > tr > th {
      text-align: center;
    }
    .table-hover > tbody > tr:hover {
      background-color: #e6ecff;
    }
    .table > tbody > tr > td {
      text-align: center;
    }
    .table > tbody > tr > #title {
      text-align: left;
    }
     
    div > #paging {
      text-align: center;
    }
     
    .hit {
      animation-name: blink;
      animation-duration: 1.5s;
      animation-timing-function: ease;
      animation-iteration-count: infinite;
      /* 위 속성들을 한 줄로 표기하기 */
      /* -webkit-animation: blink 1.5s ease infinite; */
    }
     
    /* 애니메이션 지점 설정하기 */
    /* 익스플로러 10 이상, 최신 모던 브라우저에서 지원 */
    @keyframes blink {
      from {color: white;}
      30% {color: yellow;}
      to {color: red; font-weight: bold;}
      /* 0% {color:white;}
      30% {color: yellow;}
      100% {color:red; font-weight: bold;} */
    }
  </style>
<style>
  table {
    width: 100%;
    border: 1px solid #444444;
    border-collapse: collapse;
    border-color: black;
  }
  th, td {
    border: 1px solid #444444;
  }
</style>
<title>SWIFT ERP</title>
</head>
<body>
	<!-- 네비게이션 -->
	<nav class="navbar navbar-default" style="z-index: 1">
		<!-- 네비게이션 헤더-->
		<div class="navbar-header">
			<!-- 네비게이션 오른쪽 헤더-->
			<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			aria-expanded="false">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
			</button>
			<!-- 네비게이션 왼쪽 헤더(로고) -->
			<a class="navbar-brand" href="../welcome/welcome.jsp">
			<img class="logo" src="../../images/logo.png"></a>
		</div>
		
		<!-- 네비게이션 본메뉴 -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<!-- 네비게이션 본메뉴 엘리먼트 -->
			<ul class="nav navbar-nav">
				<li><a href="../emp/Emp_memList.jsp">인사관리</a></li>
				<li><a href="../Pay/Pay.jsp">급여관리</a></li>		
				<li><a href="../attend/Attend_Item_Manage.jsp">근태관리</a></li>
				<li><a href="../approval/Approval.jsp">결재관리</a></li>
				<li><a href="../work/Work_taskUpdate.jsp">업무관리</a></li>
				<li><a href="#">고객관리</a></li>
			</ul>
			<!-- 드롭다운 기능 -->
			<ul class="nav navbar-nav navbar-right">
				<!-- 드롭다운 -->
				<li class="dropdown">
					<!-- 누르기전 이미지 -->
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button"
						aria-haspopup="true"
						aria-expanded="false">회원관리<span class="caret"></span>
					</a>
					<!-- 눌렀을때 이미지 -->
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
				<ul id="group1">
						<a class="active" href="#">거래처정보관리</a>
						<a  href="Name_Card_List.jsp">명함관리</a>
				</ul>
			</ul>	
		</nav>
	</div>
	<div class="contents">
			<a class="btn btn-primary" href="#" >거래처 리스트</a>
			<a class="btn btn-default" href="Customer_Update.jsp?pageNum=${pageNum}" >거래처 등록</a>
			<p></p> 
		<div style="width: 80%">
			<div  align="right">
				<!-- Login 검증 -->
				<!-- jstl의 if문은 else가 없어서 따로 검증해야함. -->
				<c:if test="${id != null}">
					<%-- <%@include file="loginOk.jsp" %> --%>
				</c:if>
				<c:if test="${id == null}">
					<%-- <%@include file="login.jsp" %> --%>
				</c:if>
			</div>
			<div>
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th width="5%">선택</th>
							<th width="10%">번호</th>
							<th width="50%">제목</th>
							<th width="10%">작성자</th>
							<th width="15%">작성일</th>
							<th width="10%">조회</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="article" items="${articles}" varStatus="status">
							<tr>
								<td>${article.Checkbox}</td>
								<td>${article.articleNumber}</td>
								<td id="title">
									<c:if test="${article.depth > 0}">
	                				  &nbsp;&nbsp;
				                	</c:if> 
				                <a href="/bbs/content.bbs?articleNumber=${article.articleNumber}&pageNum=${pageNum}">${article.title}</a>
									<c:if test="${article.hit >= 20}">
									<span class="hit">hit!</span>
								</c:if></td>
								<td>${article.id}</td>
								<td>${article.writeDate}</td>
								<td>${article.hit}</td>
							<tr>
						</c:forEach>
					</tbody>
				</table>
	
				<!-- Paging 처리 -->
				<div id="paging">${pageCode}</div>
			</div>
		</div>
	</div>
</body>
</html>