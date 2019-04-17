<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.ArrayList, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근무기록확정현황 페이지</title>
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<script type = "text/javascript" src ="../../js/jquery.min.js"></script>
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
	var today = new Date();
	var date = new Date();
	
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
	          cell.innerHTML = "<button type='button' data-toggle='modal' data-target='#exampleModal' onclick='onModal("+today.getFullYear()+","+parseInt(today.getMonth()+1)+","+i+")' class='btn btn-outline-black'>"+i+"</button>";//셀을 1부터 마지막 day까지 HTML 문법에 넣어줌
	          cnt = cnt + 1;//열의 갯수를 계속 다음으로 위치하게 해주는 역할
	     if (cnt % 7 == 1) {/*일요일 계산*/
	           //1주일이 7일 이므로 일요일 구하기
	           //월화수목금토일을 7로 나눴을때 나머지가 1이면 cnt가 1번째에 위치함을 의미한다
	         cell.innerHTML = "<button type='button' data-toggle='modal' data-target='#exampleModal' onclick='onModal("+today.getFullYear()+","+parseInt(today.getMonth()+1)+","+i+")' class='btn btn-outline-danger'><font color='red'>"+i+"</font></button>";
	         //1번째의 cell에만 색칠
	     }    
	     if (cnt%7 == 0){/* 1주일이 7일 이므로 토요일 구하기*/
	           //월화수목금토일을 7로 나눴을때 나머지가 0이면 cnt가 7번째에 위치함을 의미한다
	           cell.innerHTML = "<button type='button' data-toggle='modal' data-target='#exampleModal' onclick='onModal("+today.getFullYear()+","+parseInt(today.getMonth()+1)+","+i+")' class='btn btn-outline-primary'><font color='blue'>"+i+"</font></button>";
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

<link rel="stylesheet" href="../../css/datepicker.css">
<script>
	$(document).ready(function() {
		$( "#datepicker" ).datepicker({
	        showOn: "both", 
	        buttonImage: "../../images/btn_calendar.png", 
	        buttonImageOnly: true, 
	        dateFormat: "yy/mm/dd",
	        changeYear: true,
	       	changeMonth: true,
	       	changeDate: true,
	        dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
	        dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
	        monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
	        monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
		});
	});
	
</script>
<script type="text/javascript">

	function changeCalendar(){
		var tmp1 = document.getElementById("datepicker").value;
		var arr = tmp1.split("/");
		today = new Date(arr[0], arr[1]-1, arr[2]);
		date  = new Date(arr[0], arr[1]-1, arr[2]);
		buildCalendar();	
	}

	var xhr1 = null;
	var xhr2 = null;

	function createRequest(xhr){
		
		try {
			xhr = new XMLHttpRequest();
		} catch (e) {
			try {
				xhr = new ActiveXObject("Msxml2.XMLHTTP");
			} catch (e) {
				try {
					xhr = new ActiveXObject("Microsoft.XMLHTTP")
				} catch (e) {
					xhr = null;
				}
			}
		}
		
		if(xhr == null){
			alert("Error Creating XMLHttpRequest Object");
		}
		
		return xhr;
	
	}
	
	function onModal(year, month, date){

		document.getElementById("insertempno").value = document.getElementById("hidempno").name;
		document.getElementById("yeartext").value = year;
		document.getElementById("monthtext").value = month;
		document.getElementById("daytext").value = date;

		document.getElementById("yeartext").readOnly = true;
		document.getElementById("monthtext").readOnly = true;
		document.getElementById("daytext").readOnly = true;

		xhr1 = createRequest(xhr1);
		xhr1.onreadystatechange = function (){
			
			if(this.readyState == 4 && this.status == 200){
				document.getElementById("notconfirmlist").innerHTML = this.responseText;
			}
			
		};

		xhr1.open("POST", "../pay/selectworkconfirm?", true);
		xhr1.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");
		xhr1.send("classify=1&empno="+document.getElementById("hidempno").name+"&year="+year+"&month="+month+"&day="+date);
	}

	function selectconfirmlist(){
		var tmp = document.getElementById("datepicker").value;
		var tmparr = tmp.split("/");
		location.href = "./selectworkconfirm?classify=2&year="+tmparr[0]+"&month="+tmparr[1]+"&day="+tmparr[2]+"&empno="+document.getElementById("hidempno").name;
	}

	function insertConfirm(empno){
		xhr2 = createRequest(xhr2);
		xhr2.onreadystatechange = function (){
			
			if(this.readyState == 4 && this.status == 200){
				document.getElementById("notconfirmlist").innerHTML = this.responseText;
			}
			
		};

		xhr2.open("POST", "./insertworkconfirm?", true);
		xhr2.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");
		xhr2.send("empno="+empno+"&year="+document.getElementById("yeartext").value+"&month="+document.getElementById("monthtext").value+"&day="+document.getElementById("daytext").value);
	}

	function cancelConfirm(empno, selectedDate){

		location.href = "./cancelworkconfirm?empno="+empno+"&selectedDate="+selectedDate;
		
	}

</script>
</head>
<body>
<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
	<script type="text/javascript">
	$(document).ready(function(){
		$("#chat").load("../common/top_menu.jsp")
	});
	</script>
	<div id="chat"></div>
	<div class="container">
		<%@ include file="../common/left_menu_pay.jsp" %>
		<div class="contents">
		
				연월선택 : <input type="text" oninput="changeCalendar()" class="form-control" name="selectedDate" id="datepicker" style="width:7%; display:inline-block; margin-right:5px;">
		<button type='button' onclick="changeCalendar()" class='btn btn-outline-black'>변경</button>
		<button type='button' onclick="selectconfirmlist()" class='btn btn-outline-black'>조회</button>
		<br>
		<table id="calendar" border="3" class="table line2" style="width: 900px"> 
			<thead>
				<tr>
					<td class="line" colspan="2" style="padding: 30px 20px 10px 5px; text-align: left;">
					<a id="realTimer1"></a> 
					</td>
					<td colspan="3"></td>
					<td class="line" colspan="2" style="text-align: right; padding: 30px 5px 10px 20px">
					<a id="realTimer2"></a>
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
		<script type="text/javascript">
		    buildCalendar();
		</script>
		
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">추가하기</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div id="dwinsert" class="modal-body">
			<table>
				<tr>
					<td>
						<input type="hidden" name="empno" id="insertempno">
						기준일자(년):<input type="text" id="yeartext" name="year">
					</td>
					<td>					
						기준일자(월):<input type="text" id="monthtext" name="month">
					</td>
					<td>
						기준일자(일):<input type="text" id="daytext" name="day">
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<div id="notconfirmlist"></div>
					</td>
				</tr>
			</table>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
	      </div>
	    </div>
	  </div>
	</div>

	<%
		List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
		List<String> empno = new ArrayList<String>();
		List<String> workdate = new ArrayList<String>();
		
	%>
<table>
	<%
		big1 : for(int i=0;i<lst.size();i++){
			
			for(int j=0;j<empno.size();j++){
				if(empno.get(j).equals(String.valueOf(lst.get(i).get("EMPNO")))){
					if(lst.get(i).get("DAILYWORK_DATE").equals(workdate.get(j))){
						continue big1;
					}
				}
			}
	%>
	<tr>
	<td>
		<%= lst.get(i).get("DAILYWORK_DATE") %>
	</td>
	<td>
		<%= String.valueOf(lst.get(i).get("EMPNO")) %>
	</td>
		<%
			if(String.valueOf(lst.get(i).get("DAILYWORK_CONFIRM")).equals("1")){
				%>
				<td>
					<button type="button" class="btn btn-secondary" onclick="cancelConfirm('<%= String.valueOf(lst.get(i).get("EMPNO")) %>', '<%= String.valueOf(lst.get(i).get("DAILYWORK_DATE")) %>')">확정</button>
				</td>
				<%
			} else {
				%>
				<td>
					미확정
				</td>
				<%
			}
		%>
	</tr>
	<tr>
	<%
			if(lst != null){
				for(int j=0;j<lst.size();j++){
					if(String.valueOf(lst.get(i).get("EMPNO")).equals(String.valueOf(lst.get(j).get("EMPNO")))) {
						if(lst.get(i).get("DAILYWORK_DATE").equals(lst.get(j).get("DAILYWORK_DATE"))){
	%>
						<td><%= lst.get(j).get("ALLOWANCE_NAME") %></td>					
	<%
						}
					}
				}
			}
	%>
	
	</tr>
	<tr>
	<%
			if(lst != null){
				for(int j=0;j<lst.size();j++){
					if(String.valueOf(lst.get(i).get("EMPNO")).equals(String.valueOf(lst.get(j).get("EMPNO")))) {
						if(lst.get(i).get("DAILYWORK_DATE").equals(lst.get(j).get("DAILYWORK_DATE"))){
	%>
						<td><%= String.valueOf(lst.get(j).get("DAILYWORK_TIME")) %></td>
	<%
						}
					}
				}
			}
	%>
	</tr>
	<%
			empno.add(String.valueOf(lst.get(i).get("EMPNO")));
			workdate.add(lst.get(i).get("DAILYWORK_DATE"));
		}
	%>
</table>
</div></div>
</body>
</html>