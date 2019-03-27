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

<script type="text/javascript">
	function timer() {
		var date = new Date();
		var hour = date.getHours();
		var ampm = (hour < 12 || hour == 24) ? " 오전" : " 오후";
		hour = hour % 12 || 12;
		var minute = date.getMinutes();
		minute = (minute > 9) ? minute : "0" + minute;
		var second = date.getSeconds();
		second = (second > 9) ? second : "0" + second;
		var millisec = date.getMilliseconds();
		millisec = (millisec > 99) ? millisec : (millisec > 9) ? "0" + millisec
				: "00" + millisec;
		var timeString = ampm + " " + hour + ":" + minute + ":" + second;
		
		return timeString;
	}
</script>

<script type="text/javascript">
	function timer2() {
		var date = new Date();
		var year = date.getFullYear();
		var month = date.getMonth() + 1;
		var day = date.getDate();
		var dateString1 = year + ". " + month + ". " + day;
		return dateString1
	}
</script>

<style type="text/css">
	#realTimer {
		text-align: center;
		font-size: 40px;
	}
</style>

<style type="text/css">
	#realTimer2 {
		text-align: center;
		font-size: 15px;
	}
</style>

<title>SWIFT ERP</title>
</head>
<body onload="printClock()">
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
				<li><a href="../Pay/Pay.jsp">급여관리</a></li>		
				<li><a href="../attend/Attend_Item_Manage.jsp">근태관리</a></li>
				<li><a href="../approval/Approval.jsp">결재관리</a></li>
				<li><a href="#">업무관리</a></li>
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
					aria-expanded="false" href="Work_task.jsp">업무일지</a>
					<ul class="collapse depth2" id="group1">
						<li><a href="Work_taskUpdate.jsp">업무일지 작성</a></li>
						<li><a href="Work_task.jsp">업무일지 조회</a></li>
					</ul></li>
				<li><a class="active" data-toggle="collapse"
					data-target="#group2" aria-expanded="false" href="#">출/퇴근</a>
					<ul class="collapse in depth2" id="group2">
						<li><a class="active" href="#">출/퇴근 기록부</a></li>
						<li><a href="Work_Search.jsp">출/퇴근현황 조회</a></li>
						<li><a href="Work_time.jsp">근무시간 조회</a></li>
						<li><a href="Work_All_Search.jsp">출퇴근/근태/일정 조회</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</div>
	<div style="width: 600px" class="contents">
		<a class="btn btn-default" href="Work_on_off.jsp" style="width: 150px">출/퇴근 기록부</a> <a
			class="btn btn-primary" href="#" style="width: 150px">출/퇴근 작성</a>
		<p/>
		<br>
		<table class="table" style="margin: auto; text-align: left;">
			<thead style="vertical-align: middle;">
				<tr>
					<td colspan="4">
						<p id="realTimer"></p>
						 <script type="text/javascript">
						 var tag = document.getElementById( "realTimer" ); 
						     tag.innerHTML = timer(); 
							 setInterval ( function() { tag.innerHTML = timer(); } , 1000 ); 
						</script>
					</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td style="width: 120px">사용자</td>
					<td colspan="3">
					<input type="text" class="form-control input-sm"
						style="width: 300px; height: 50%; display: inline-block"/>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: middle;">장소</td>
					<td colspan="2"  style="width: 150px">
					<input type="text" class="form-control input-sm"
						style="width: 300px; height: 50%; display: inline-block" />
					</td>
					<td>
						<div class="custom-control custom-checkbox">
							<input type="checkbox" id="jb-checkbox"
								class="custom-control-input">
							<label class="custom-control-label" for="jb-checkbox">외근</label>
						</div>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: middle;">시간</td>
					<td style="width: 120px;">
						<p id="realTimer2"></p> 
						<script type="text/javascript">
							var tag1 = document.getElementById("realTimer2");
							tag1.innerHTML = timer2();
							setInterval(function() {
								tag.innerHTML = timer2();
							}, 3600000);
						</script>
					</td>
					<td colspan="2">
						<div class="btn-toolbar" role="toolbar"
							aria-label="Toolbar with button groups">
							<div class="input-group" aria-label="First group">
								<select class="custom-select" id="inputGroupSelect01">
									<option value="am00">오전 0</option>
									<option value="am01">오전 1</option>
									<option value="am02">오전 2</option>
									<option value="am03">오전 3</option>
									<option value="am04">오전 4</option>
									<option value="am05">오전 5</option>
									<option value="am06">오전 6</option>
									<option value="am07">오전 7</option>
									<option value="am08">오전 8</option>
									<option value="am09">오전 9</option>
									<option value="am10">오전 10</option>
									<option value="am11">오전 11</option>
									<option value="pm12">오후 12</option>
									<option value="pm01">오후 1</option>
									<option value="pm02">오후 2</option>
									<option value="pm03">오후 3</option>
									<option value="pm04">오후 4</option>
									<option value="pm05">오후 5</option>
									<option value="pm06">오후 6</option>
									<option value="pm07">오후 7</option>
									<option value="pm08">오후 8</option>
									<option value="pm09">오후 9</option>
									<option value="pm10">오후 10</option>
									<option value="pm11">오후 11</option>
								</select>
							</div>
							<div class="input-group" aria-label="Second group">
								<select class="custom-select" id="inputGroupSelect02">
									<option value="minute_00">00</option>
									<option value="minute_01">01</option>
									<option value="minute_02">02</option>
									<option value="minute_03">03</option>
									<option value="minute_04">04</option>
									<option value="minute_05">05</option>
									<option value="minute_06">06</option>
									<option value="minute_07">07</option>
									<option value="minute_08">08</option>
									<option value="minute_09">09</option>
									<option value="minute_10">10</option>
									<option value="minute_11">11</option>
									<option value="minute_12">12</option>
									<option value="minute_13">13</option>
									<option value="minute_14">14</option>
									<option value="minute_15">15</option>
									<option value="minute_16">16</option>
									<option value="minute_17">17</option>
									<option value="minute_18">18</option>
									<option value="minute_19">19</option>
									<option value="minute_20">20</option>
									<option value="minute_21">21</option>
									<option value="minute_22">22</option>
									<option value="minute_23">23</option>
									<option value="minute_24">24</option>
									<option value="minute_25">25</option>
									<option value="minute_26">26</option>
									<option value="minute_27">27</option>
									<option value="minute_28">28</option>
									<option value="minute_29">29</option>
									<option value="minute_30">30</option>
									<option value="minute_31">31</option>
									<option value="minute_32">32</option>
									<option value="minute_33">33</option>
									<option value="minute_34">34</option>
									<option value="minute_35">35</option>
									<option value="minute_36">36</option>
									<option value="minute_37">37</option>
									<option value="minute_38">38</option>
									<option value="minute_39">39</option>
									<option value="minute_40">40</option>
									<option value="minute_41">41</option>
									<option value="minute_42">42</option>
									<option value="minute_43">43</option>
									<option value="minute_44">44</option>
									<option value="minute_45">45</option>
									<option value="minute_46">46</option>
									<option value="minute_47">47</option>
									<option value="minute_48">48</option>
									<option value="minute_49">49</option>
									<option value="minute_50">50</option>
									<option value="minute_51">51</option>
									<option value="minute_52">52</option>
									<option value="minute_53">53</option>
									<option value="minute_54">54</option>
									<option value="minute_55">55</option>
									<option value="minute_56">56</option>
									<option value="minute_57">57</option>
									<option value="minute_58">58</option>
									<option value="minute_59">59</option>
								</select>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>사유</td>
					<td colspan="3"><input type="text"
						class="form-control input-sm"
						style="width: 300px; height: 50%; display: inline-block" /></td>
				</tr>
			</tbody>
		</table>
		<br> 
		<input type="button" class="btn btn-primary pull-left"
			value="출근">
	</div>
</body>
</html>