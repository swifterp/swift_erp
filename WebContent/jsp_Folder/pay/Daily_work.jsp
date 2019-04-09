<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<script type = "text/javascript" src ="../../js/jquery-3.3.1.js"></script>
<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style>
 .line{border-left: 1px solid #fff;
 	   border-right: 1px solid #fff;
 	   }
 .line2{border-top: 1px solid #fff}
</style>
<style type="text/css">
        td{
            width: 40px;
            height: 70px;
            text-align: right;
            font-size: 15px;
            font-family: 굴림;
            font-weight: 400;
            border:2px border-color:#3333FF;
        }
</style>
<script type="text/javascript">
	function timer() {
		var date = new Date();
		var year = date.getFullYear();
		var month = date.getMonth() + 1;
		var dateString = year + "년 " + month+"월";
		return dateString
	}
</script>
<script type="text/javascript">
	function timer2() {
		var date = new Date();
		var month = date.getMonth() + 1;
		var day = date.getDate();
		var dateString1 = "금일 "+month+". "+day;
		return dateString1
	}
</script>

<style type="text/css">
	#realTimer1 {
		text-align: left;	
		font-size: 15px;
	}
	#realTimer2 {
		text-align: right;	
		font-size: 15px;
	}
</style>
<script type="text/javascript">
        var today = new Date();//오늘 날짜//내 컴퓨터 로컬을 기준으로 today에 Date 객체를 넣어줌
        var date = new Date();//today의 Date를 세어주는 역할
        
        function buildCalendar(){//현재 달 달력 만들기
            var doMonth = new Date(today.getFullYear(),today.getMonth(),1);
            //이번 달의 첫째 날,
            //new를 쓰는 이유 : new를 쓰면 이번달의 로컬 월을 정확하게 받아온다.     
            //new를 쓰지 않았을때 이번달을 받아오려면 +1을 해줘야한다. 
            //왜냐면 getMonth()는 0~11을 반환하기 때문
            var lastDate = new Date(today.getFullYear(),today.getMonth()+1,0);
            //이번 달의 마지막 날
            //new를 써주면 정확한 월을 가져옴, getMonth()+1을 해주면 다음달로 넘어가는데
            //day를 1부터 시작하는게 아니라 0부터 시작하기 때문에 
            //대로 된 다음달 시작일(1일)은 못가져오고 1 전인 0, 즉 전달 마지막일 을 가져오게 된다
            var tbCalendar = document.getElementById("calendar");
            //날짜를 찍을 테이블 변수 만듬, 일 까지 다 찍힘
 
             /*while은 이번달이 끝나면 다음달로 넘겨주는 역할*/
            while (tbCalendar.rows.length > 2) {
            //열을 지워줌
            //기본 열 크기는 body 부분에서 2로 고정되어 있다.
                  tbCalendar.deleteRow(tbCalendar.rows.length-1);
                  //테이블의 tr 갯수 만큼의 열 묶음은 -1칸 해줘야지 
                //30일 이후로 담을달에 순서대로 열이 계속 이어진다.
             }
             var row = null;
             row = tbCalendar.insertRow();
             //테이블에 새로운 열 삽입//즉, 초기화
             var cnt = 0;// count, 셀의 갯수를 세어주는 역할
            // 1일이 시작되는 칸을 맞추어 줌
             for (i=0; i<doMonth.getDay(); i++) {
             /*이번달의 day만큼 돌림*/
                  cell = row.insertCell();//열 한칸한칸 계속 만들어주는 역할
                  cnt = cnt + 1;//열의 갯수를 계속 다음으로 위치하게 해주는 역할
             }
            /*달력 출력*/
             for (i=1; i<=lastDate.getDate(); i++) { 
             //1일부터 마지막 일까지 돌림
                  cell = row.insertCell();//열 한칸한칸 계속 만들어주는 역할
                  cell.innerHTML = i;//셀을 1부터 마지막 day까지 HTML 문법에 넣어줌
                  cnt = cnt + 1;//열의 갯수를 계속 다음으로 위치하게 해주는 역할
	            if (cnt % 7 == 1) {/*일요일 계산*/
	                  //1주일이 7일 이므로 일요일 구하기
	                  //월화수목금토일을 7로 나눴을때 나머지가 1이면 cnt가 1번째에 위치함을 의미한다
	                cell.innerHTML = "<font color=#e00>" + i
	                //1번째의 cell에만 색칠
	            }    
	            if (cnt%7 == 0){/* 1주일이 7일 이므로 토요일 구하기*/
	                  //월화수목금토일을 7로 나눴을때 나머지가 0이면 cnt가 7번째에 위치함을 의미한다
	                  cell.innerHTML = "<font color=#1292FF>" + i
	                  //7번째의 cell에만 색칠
	                  row = calendar.insertRow();
	                  //토요일 다음에 올 셀을 추가
	            }
	              /*오늘의 날짜에 노란색 칠하기*/
	            if (today.getFullYear() == date.getFullYear()
	                 && today.getMonth() == date.getMonth()
	                 && i == date.getDate()) {
	                  //달력에 있는 년,달과 내 컴퓨터의 로컬 년,달이 같고, 일이 오늘의 일과 같으면
	                cell.bgColor = "#FAF58C";//셀의 배경색을 노랑으로 
	            }
             }
             for(var i=doMonth; i<=7; i++){
            	 rite("<td><font color='white'><b>"+i+"</b><font></td>");
             }
        }
    </script>
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
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
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
				<li><a href="#">급여관리</a></li>		
				<li><a href="../attend/Attend.jsp">근태관리</a></li>
				<li><a href="../approval/Approval.jsp">결재관리</a></li>
				<li><a href="../work/Work_taskUpdate.jsp">업무관리</a></li>
				<li><a href="../customer/Customer_List.jsp">고객관리</a></li>
			</ul>
			<!-- 드롭다운 기능 -->
			<ul class="nav navbar-nav navbar-right">
				<!-- 드롭다운 -->
				<li class="dropdown">
					<!-- 누르기전 이미지 --> <a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원관리<span class="caret"></span>
				</a> <!-- 눌렀을때 이미지 -->
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
				<li><a data-toggle="collapse" data-target="#group1"
					aria-expanded="false" href="Allowance_Item.jsp">기본사항등록</a>
					<ul class="collapse depth2" id="group1">
						<li><a href="Allowance_Item.jsp">수당항목등록</a></li>
						<li><a href="Deductible_Item.jsp">공제항목등록</a></li>
						<li><a href="Bonus_payment.jsp">1년미만자<br>상여지급률등록</a></li>
					</ul>
				</li>
				<li>
					<a class="active" data-toggle="collapse"
					data-target="#group2" aria-expanded="false" href="#">급여작업</a>
					<ul class="collapse in depth2" id="group2">
						<li><a href="Payroll.jsp">급여계산/대장</a></li>
						<li><a class="active" href="#">일별근무기록등록</a></li>
					</ul>
				</li>
				<li><a data-toggle="collapse"
					data-target="#group3" aria-expanded="false" href="Specification.jsp">출력물</a>
					<ul class="collapse depth2" id="group3">
						<li><a href="Specification.jsp ">명세서인쇄</a></li>
						<li><a href="Individual_benefits.jsp ">개인별급여내역인쇄</a></li>
						<li><a href="Work_record.jsp">근무기록확정현황인쇄</a></li>
						<li><a href="Monthly_Personnel.jsp">월별인원현황인쇄</a></li>
						<li><a href="Payroll_table.jsp">급여집계표</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</div>
	<div class="contents" >
			<table id="calendar" border="3" class="table line2" style="width: 900px"> 
				<thead>
					<tr>
					<!-- 이번년도. 월 -->
						<td class="line" colspan="2" style="padding: 30px 20px 10px 5px; text-align: left;">
						<a id="realTimer1"></a> 
						<script type="text/javascript">
								var tag1 = document.getElementById("realTimer1");
								tag1.innerHTML = timer();
								setInterval(function() {
									tag.innerHTML = timer();
								}, 3600000);
						</script>
						</td>
						<td colspan="3"></td>
					<!-- 금일 날짜  -->
						<td class="line" colspan="2" style="text-align: right; padding: 30px 5px 10px 20px">
						<a id="realTimer2"></a> 
						<script type="text/javascript">
								var tag1 = document.getElementById("realTimer2");
								tag1.innerHTML = timer2();
								setInterval(function() {
									tag.innerHTML = timer2();
								}, 3600000);
						</script>
						</td>
					</tr>
					<tr style="vertical-align: middle; font-size: 18px">
						<th style="color: #e00">일</th>
						<th>월</th>
						<th>화</th>
						<th>수</th>
						<th>목</th>
						<th>금</th>
						<th style="color: #1292FF">토</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
			<script language="javascript" type="text/javascript">
			    buildCalendar();//
			</script>
		</div>
	</div>
</body>
</html>