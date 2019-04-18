<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<script type = "text/javascript" src ="../../js/jquery.min.js"></script>
<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
<title>JSP 게시판 웹 사이트</title>
<style>
    body {background:url('../../images/bg.jpg') no-repeat 0 #FFF;}
	.container {background-color:white; margin:100px auto; width:400px; padding:40px; border-radius: 1rem;}
	.checkbox {float:left; margin-top:20px; font-size:13px; line-height:20px;}
	.mem_add {float:right; margin-top:20px;}
	.mem_add span a {padding-left:10px; font-size:13px; line-height:20px;}
	.mem_add span a:hover {color:#6799FF;}
	.btn_login {height:50px;}
</style>
</head>
	<body class="text-center">
	   <div class="container">
		    <form action="../mem/login">
				  <img src="../../images/login_bg.png" alt="" width="120" height="auto">
				  <h1 class="h3 font-weight-normal">로그인</h1>
				  <input type="email" id="mem_email_id" name="mem_email_id" class="form-control" placeholder="이메일아이디" required="" autofocus="">
				  <input type="password" id="mem_pw" name="mem_pw" class="form-control" placeholder="비밀번호" required="">
				  <div class="checkbox">
				    <label>
				      <input type="checkbox" value="아이디저장"> 아이디저장
				    </label>
				  </div>
				  <div class="mem_add">
				  
				  	<span><a href="../mem/join.jsp">사용자등록</a></span>
				  	<span><a href="#">비밀번호찾기</a></span>
				  </div>
				  <button class="btn btn-primary btn-block btn_login" type="submit">로그인</button>
			</form>
		</div>
	</body>	
</html>