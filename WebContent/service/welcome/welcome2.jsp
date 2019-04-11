<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
<%@ include file="../common/ui_common.jsp" %>
<style>
body {background:url('../../images/bg_main3.jpg') no-repeat 0 0 #FFF;}
.snip1445 {
  font-family: 'Raleway', Arial, sans-serif;
  position: relative;
  overflow: hidden;
  margin: 10px;
  min-width: 230px;
  max-width: 315px;
  width: 100%;
  color: #ffffff;
  text-align: center;
  font-size: 16px;
  background-color: #000000;
}
.snip1445 *,
.snip1445 *:before,
.snip1445 *:after {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: all 0.55s ease;
  transition: all 0.55s ease;
}
.snip1445 img {
  max-width: 100%;
  backface-visibility: hidden;
  vertical-align: top;
}
.snip1445 figcaption {
  position: absolute;
  bottom: 25px;
  right: 25px;
  padding: 5px 10px 10px;
}
.snip1445 figcaption:before,
.snip1445 figcaption:after {
  height: 2px;
  width: 400px;
  position: absolute;
  content: '';
  background-color: #ffffff;
}
.snip1445 figcaption:before {
  top: 0;
  left: 0;
  -webkit-transform: translateX(100%);
  transform: translateX(100%);
}
.snip1445 figcaption:after {
  bottom: 0;
  right: 0;
  -webkit-transform: translateX(-100%);
  transform: translateX(-100%);
}
.snip1445 figcaption div:before,
.snip1445 figcaption div:after {
  width: 2px;
  height: 300px;
  position: absolute;
  content: '';
  background-color: #ffffff;
}
.snip1445 figcaption div:before {
  top: 0;
  left: 0;
  -webkit-transform: translateY(100%);
  transform: translateY(100%);
}
.snip1445 figcaption div:after {
  bottom: 0;
  right: 0;
  -webkit-transform: translateY(-100%);
  transform: translateY(-100%);
}
.snip1445 h2,
.snip1445 h4 {
  margin: 0;
  text-transform: uppercase;
}
.snip1445 h2 {
  font-weight: 400;
}
.snip1445 h4 {
  display: block;
  font-weight: 700;
  background-color: #ffffff;
  padding: 5px 10px;
  color: #000000;
}
.snip1445 a {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
}
.snip1445:hover img,
.snip1445.hover img {
  zoom: 1;
  filter: alpha(opacity=50);
  -webkit-opacity: 0.5;
  opacity: 0.5;
}
.snip1445:hover figcaption:before,
.snip1445.hover figcaption:before,
.snip1445:hover figcaption:after,
.snip1445.hover figcaption:after,
.snip1445:hover figcaption div:before,
.snip1445.hover figcaption div:before,
.snip1445:hover figcaption div:after,
.snip1445.hover figcaption div:after {
  -webkit-transform: translate(0, 0);
  transform: translate(0, 0);
}
.snip1445:hover figcaption:before,
.snip1445.hover figcaption:before,
.snip1445:hover figcaption:after,
.snip1445.hover figcaption:after {
  -webkit-transition-delay: 0.15s;
  transition-delay: 0.15s;
}
figure {float:left; margin-top:20px; margin-right:10px;}
</style>
<script>
/* Demo purposes only */
$(".hover").mouseleave(
  function () {
    $(this).removeClass("hover");
  }
);
</script>
</head>
<body>
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">	
		<div class="contents">	
			<p style="color:white">Welcome! This is Swift Corporation.</p>
			<h2 style="color:white">${member}님 환영합니다.</h2>
			<figure class="snip1445">
			  <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample84.jpg" alt="sample84" />
			  <figcaption>
			    <div>
			      <h2>인사차트</h2>
			      <h4>바로가기</h4>
			    </div>
			  </figcaption>
			  <a href="#"></a>
		</figure>
		<figure class="snip1445"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample51.jpg" alt="sample51" />
			  <figcaption>
			    <div>
			      <h2>문서작성</h2>
			      <h4>바로가기</h4>
			    </div>
			  </figcaption>
			  <a href="#"></a>
		</figure>
		</div>		
	</div>
</body>
</html>