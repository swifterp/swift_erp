<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SWIFT ERP</title>
<%@ include file="../common/ui_common.jsp" %>
<!-- sweetAlter api -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript">
var xhr1 = null;
var xhr2 = null;
var xhr3 = null;
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
function dept(){
  	xhr1 = createRequest(xhr1);
  	xhr1.onreadystatechange = function (){		
		if(this.readyState == 4 && this.status == 200){
			document.getElementById("ajax_dept").innerHTML = this.responseText;
		}	
	};
	xhr1.open("POST", "../emp/pop_deptRead?", true);
	xhr1.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");
	xhr1.send();
}
function rank(){
  	xhr2 = createRequest(xhr2);
  	xhr2.onreadystatechange = function (){		
		if(this.readyState == 4 && this.status == 200){
			document.getElementById("ajax_rank").innerHTML = this.responseText;
		}	
	};
	xhr2.open("POST", "../emp/pop_rankRead?", true);
	xhr2.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");
	xhr2.send();
}
function duty(){
  	xhr3 = createRequest(xhr3);
  	xhr3.onreadystatechange = function (){		
		if(this.readyState == 4 && this.status == 200){
			document.getElementById("ajax_duty").innerHTML = this.responseText;
		}	
	};
	xhr3.open("POST", "../emp/pop_dutyRead?", true);
	xhr3.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");
	xhr3.send();
}
</script>
</head>
<body>
<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">
		<%@ include file="../common/left_menu_emp.jsp" %>
		<div class="contents">
			<form action="../emp/listView">
				<h1>사원명부 조회</h1>
				<table class="table">
					<colgroup>
						<col width="30%" />
						<col width="70%" />
					</colgroup>
					<tbody>
						<tr>
							<th>부서</th>					
							<td class="input-group">
								<input type="text" value="" class="form-control">
								<span class="input-group-btn">
									<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#dept" onclick="dept()"><img src="../../images/icon_plus.png" /></button>
								</span>
							</td>	
						</tr>
						<tr>
							<th>직급</th>
							<td class="input-group">
								<input type="text" value="" class="form-control">
								<span class="input-group-btn">
									<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#rank" onclick="rank()"><img src="../../images/icon_plus.png" /></button>
								</span>
							</td>
						</tr>
						<tr>
							<th>직책</th>
							<td class="input-group">
								<input type="text" value="" class="form-control">
								<span class="input-group-btn">
									<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#duty" onclick="duty()"><img src="../../images/icon_plus.png" /></button>
								</span>
							</td>
						</tr>
						<tr>
							<th>입사일</th>
							<td><input type="date" value="" class="form-control"></td>
						</tr>
						<tr>
							<th>생년월일</th>
							<td><input type="date" value="" class="form-control"></td>
						</tr>
					</tbody>
				</table>
				<div class="btn_group">
					<input type="submit" id="submit" class="btn btn-outline-primary pull-right" value="조건검색">
				</div>
			</form>
		</div>
	</div>
	<!-- dept Modal -->
	<div class="modal fade" id="dept" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="margin-top:150px;">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">직급</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>   
	      <div class="modal-body">   	
			<div id="ajax_dept"></div>
	      </div>
		  <div class="modal-footer">
          	<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
     	 </div>
	    </div>
	  </div>
	</div>
	<!-- rank Modal -->
	<div class="modal fade" id="rank" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="margin-top:150px;">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">직급</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>   
	      <div class="modal-body">   	
			<div id="ajax_rank"></div>
	      </div>
		  <div class="modal-footer">
          	<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
     	 </div>
	    </div>
	  </div>
	</div>
	<!-- duty Modal -->
	<div class="modal fade" id="duty" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="margin-top:150px;">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">직급</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>   
	      <div class="modal-body">   	
			<div id="ajax_duty"></div>
	      </div>
		  <div class="modal-footer">
          	<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
     	 </div>
	    </div>
	  </div>
	</div>
</body>
</html>