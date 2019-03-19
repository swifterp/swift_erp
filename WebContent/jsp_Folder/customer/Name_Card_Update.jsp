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
<script>
jQuery(function($){
	$('#modal-reserve').footable({
		"useParentWidth": true,
		"columns": $.get('columns.json'),
		"rows": $.get('rows.json')
	});
});
</script>
<script>
jQuery(function($){
	$('#modal-name_card').footable({
		"useParentWidth": true,
		"columns": $.get('columns.json'),
		"rows": $.get('rows.json')
	});
});
</script>

<style>
input {
    vertical-align: middle;
  }
  input.img-button {
    background: url("../../images/btn_Searc.png" ) no-repeat;
    border: none;
    width: 20px;
    height: 20px;
    cursor: pointer;
</style>
<style>/* modal 중앙에 띄우기  */
  .modal {
          text-align: center;
        }
        @media screen and (min-width: 768px) {
          .modal:before {
            display: inline-block;
            vertical-align: middle;
            content: " ";
            height: 100%;
          }
        }
        .modal-dialog {
          display: inline-block;
          text-align: left;
          vertical-align: middle;
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
				<li>
					<ul id="group1">
						<a href="Customer_List.jsp">거래처정보관리</a>
						<a class="active" href="#">명함관리</a>
					</ul>
				</li>
			</ul>	
		</nav>
		<div class="contents">
			<a class="btn btn-default" href="Name_Card_List.jsp" >명함 리스트</a>
			<a class="btn btn-primary" href="#" >명함 등록</a>
			<p></p> 
			<table class="table table-striped" style="margin: auto; text-align: left;">
				<thead>
				</thead>
				<tbody>
					<tr>
						<td style="width:120px; vertical-align: middle;">성명</td>
						<td><input type="text" class="form-control input-sm"
							 	  style="width:40%; height: 50%; display: inline-block"></td>
						<td style="width:120px; vertical-align: middle;">잠재 거래처 명</td>
						<td>
							<input type="text" class="form-control input-sm"
							 	  style="width:40%; height: 50%; display: inline-block"></td>
							</div>
						</td>
					</tr>
					<tr>
						<td style="vertical-align: middle;">부서</td>
						<td><input type="text" class="form-control input-sm"
							 	  style="width:80%; height: 50%; display: inline-block"></td>
						<td style="vertical-align: middle;">직급</td>
						<td><input type="text" class="form-control input-sm"
							   style="width:80%; height: 50%; display: inline-block"></td>
					</tr>
						<td style="vertical-align: middle;">생년월일</td>
						<td><input type="text" class="form-control input-sm"
							 	  style="width:80%; height: 50%; display: inline-block"></td>
						<td style="vertical-align: middle;">전화</td>
						<td><input type="text" class="form-control input-sm"
							   style="width:80%; height: 50%; display: inline-block"></td>
					</tr>
					<tr>
						<td style="vertical-align: middle;">모바일</td>
						<td><input type="text" class="form-control input-sm"
							   style="width:80%; height: 50%; display: inline-block"></td>
						<td style="vertical-align: middle;">Fax</td>
						<td><input type="text" class="form-control input-sm"
							   style="width:80%; height: 50%; display: inline-block"></td>
					</tr>
					<tr>
						<td style="vertical-align: middle;">Email</td>
						<td><input type="text" class="form-control input-sm"
							   style="width:80%; height: 50%; display: inline-block"></td>
						<td style="vertical-align: middle;">홈페이지</td>
						<td><input type="text" class="form-control input-sm"
							   style="width:80%; height: 50%; display: inline-block"></td>
					</tr>
					<tr>
						<td style="vertical-align: middle;">잠재 거래처</td>
						<td>
							<input type="text" class="form-control input-sm" style=" width:130px; height:50%; display:inline-block">
							<input type="button" class="img-button" data-toggle="modal" data-target="#reserve_deal_name"></td>
						<td style="vertical-align: middle;">기타설정</td>
						<td>
							<div class="custom-control custom-checkbox">
									<input type="checkbox" id="jb-checkbox"
										class="custom-control-input"> 
									<label class="custom-control-label" for="jb-checkbox">
										공유여부 &nbsp; &nbsp;
									</label>
									<input type="checkbox" id="jb-checkbox"
										class="custom-control-input"> 
									<label class="custom-control-label" for="jb-checkbox">
										중요고객
									</label>
								</div>
						</td>
					</tr>
					<tr>
						<td style="vertical-align: middle;">명함 그룹</td>
						<td>
							<input type="text" class="form-control input-sm" style=" width:130px; height:50%; display:inline-block">
							<input type="button" class="img-button" data-toggle="modal" data-target="#Name_Card">
							<input type="text" class="form-control input-sm" style="width: 140px; height:50%; display:inline-block">
						</td>
						<td style="vertical-align: middle;">명함 그룹2</td>
						<td>
							<input type="text" class="form-control input-sm" style=" width:130px; height:50%; display:inline-block">
							<input type="button" class="img-button" data-toggle="modal" data-target="#Name_Card">
							<input type="text" class="form-control input-sm" style="width: 140px; height:50%; display:inline-block">
						</td>
					</tr>
					<tr>
						<td style="vertical-align: middle;">명함 그룹3</td>
						<td>
							<input type="text" class="form-control input-sm" style=" width:130px; height:50%; display:inline-block">
							<input type="button" class="img-button" data-toggle="modal" data-target="#Name_Card">
							<input type="text" class="form-control input-sm" style="width: 140px; height:50%; display:inline-block">
						</td>
						<td colspan="2">
						</td>
					</tr>
					<tr>
						<td style="vertical-align: middle;">주소</td>
						<td colspan="3">
							<input type="button" style="color: black;" class="btn btn-link" value="우편번호 검색"> 
							<!-- ↑ 모달로 변경하기  -->
							<input type="text" class="form-control input-sm"
								   style="width:120px; height: 50%; display: inline-block">
						<br>
							<input type="textarea" class="form-control input-gl"
								   style="width:270px; height: 50px; display: inline-block">
						</td>
					</tr>
					<tr>
						<td style="vertical-align: middle;">적요</td>
						<td colspan="3"><input type="textarea" class="form-control input-sm"
							   style="width:90%; height: 80px; display: inline-block"></td>
					</tr>
				</tbody>
			</table>
			<br>
			<input type="submit" class="btn btn-primary pull-right" value="등록완료">
		</div>
	</div>
	<div class="modal fade" id="reserve_deal_name" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-body">
					<table id="modal-reserve" class="table table-striped" data-paging="true" data-filtering="true" data-sorting="true">
						<thead class="thead-dark">
							<tr>
								<td scope="col">코드</td>
								<td scope="col">거래처 명</td>
								<td scope="col">전화</td>
								<td scope="col">업체주소</td>
								<td scope="col">상세내역</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>&nbsp</td>
								<td>&nbsp</td>
								<td>&nbsp</td>
								<td>&nbsp</td>
								<td>&nbsp</td>
							</tr>
							<tr>
								<td>&nbsp</td>
								<td>&nbsp</td>
								<td>&nbsp</td>
								<td>&nbsp</td>
								<td>&nbsp</td>
							</tr>
							<tr>
								<td>&nbsp</td>
								<td>&nbsp</td>
								<td>&nbsp</td>
								<td>&nbsp</td>
								<td>&nbsp</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="Name_Card" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-body">
					<table id="modal-name_card" class="table table-striped" data-paging="true" data-filtering="true" data-sorting="true">
						<thead class="thead-dark">
							<tr>
								<td scope="col">그룹 코드</td>
								<td scope="col">그룹 명</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>&nbsp</td>
								<td>&nbsp</td>
							</tr>
							<tr>
								<td>&nbsp</td>
								<td>&nbsp</td>
							</tr>
							<tr>
								<td>&nbsp</td>
								<td>&nbsp</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>