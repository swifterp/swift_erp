<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../common/ui_common.jsp" %>
<!-- sweetAlter api -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript">
  $(document).ready(function(){
      $('#check').on('click', function(){
          $.ajax({
              type: 'POST',
              url: '../emp/checkDeptNum',
              data: {
                  "dept_no" : $('#dept_no').val()
              },
              success: function(data){
                  if($.trim(data) == 0){
                	  swal("Ok","사용가능한 부서코드입니다.","success");
                  }
                  else{
                	  swal("NO","중복된 부서이름입니다.","error");
                  }
              }
          });    //end ajax    
      });    //end on    
  });
  </script>
  <script type="text/javascript">
  $(document).ready(function(){
      $('#check2').on('click', function(){
          $.ajax({
              type: 'POST',
              url: '../emp/checkRankNum',
              data: {
                  "rank_no" : $('#rank_no').val()
              },
              success: function(data){
                  if($.trim(data) == 0){
                	  swal("Ok","사용가능한 직급코드입니다.","success");
                  }
                  else{
                	  swal("NO","중복된 직급이름입니다.","error");
                  }
              }
          });    //end ajax    
      });    //end on    
  });
  </script>
  <script type="text/javascript">
  $(document).ready(function(){
      $('#check3').on('click', function(){
          $.ajax({
              type: 'POST',
              url: '../emp/checkDutyNum',
              data: {
                  "duty_no" : $('#duty_no').val()
              },
              success: function(data){
                  if($.trim(data) == 0){
                	  swal("Ok","사용가능한 직위코드입니다.","success");
                  }
                  else{
                	  swal("NO","중복된 직위이름입니다.","error");
                  }
              }
          });    //end ajax    
      });    //end on    
  });
  </script>
  <script type="text/javascript">
  $(document).ready(function(){
      $('#check4').on('click', function(){
          $.ajax({
              type: 'POST',
              url: '../emp/checkBankNum',
              data: {
                  "bank_no" : $('#bank_no').val()
              },
              success: function(data){
                  if($.trim(data) == 0){
                	  swal("Ok","사용가능한 은행코드입니다.","success");
                  }
                  else{
                	  swal("NO","중복된 은행이름입니다.","error");
                  }
              }
          });    //end ajax    
      });    //end on    
  });
  </script>
  
<script type="text/javascript">
var xhr1 = null;
var xhr2 = null;
var xhr3 = null;
var xhr4 = null;
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
function rank(){
  	xhr1 = createRequest(xhr1);
  	xhr1.onreadystatechange = function (){		
		if(this.readyState == 4 && this.status == 200){
			document.getElementById("ajax_rank").innerHTML = this.responseText;
		}	
	};
	xhr1.open("POST", "../emp/pop_rankRead?", true);
	xhr1.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");
	xhr1.send();
}
function duty(){
  	xhr2 = createRequest(xhr2);
  	xhr2.onreadystatechange = function (){		
		if(this.readyState == 4 && this.status == 200){
			document.getElementById("ajax_duty").innerHTML = this.responseText;
		}	
	};
	xhr2.open("POST", "../emp/pop_dutyRead?", true);
	xhr2.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");
	xhr2.send();
}
function bank(){
  	xhr3 = createRequest(xhr3);
  	xhr3.onreadystatechange = function (){		
		if(this.readyState == 4 && this.status == 200){
			document.getElementById("ajax_bank").innerHTML = this.responseText;
		}	
	};
	xhr3.open("POST", "../emp/pop_bankRead?", true);
	xhr3.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");
	xhr3.send();
}
function dept(){
  	xhr4 = createRequest(xhr4);
  	xhr4.onreadystatechange = function (){		
		if(this.readyState == 4 && this.status == 200){
			document.getElementById("ajax_dept").innerHTML = this.responseText;
		}	
	};
	xhr4.open("POST", "../emp/pop_deptRead?", true);
	xhr4.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");
	xhr4.send();
}
</script>

<style>
	.etcCode li {float:left; width:120px; margin-left:4px;}
</style> 


</head>
<body>
<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">		
		<%@ include file="../common/left_menu_emp.jsp" %>
		<div class="contents">
			<h1>기타코드등록</h1>
			<ul class="etcCode">
				<li>
					<span>부서등록</span>
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#dept" onclick="dept()"><img src="../../images/icon_plus.png" /></button>
				</li>
				<li>
					<span>직급등록</span>
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#rank" onclick="rank()"><img src="../../images/icon_plus.png" /></button>
				</li>
				<li>
					<span>직책등록</span>
					<button type="button" class="btn btn-primary" href="#" data-toggle="modal" data-target="#duty" onclick="duty()"><img src="../../images/icon_plus.png" /></button>
				</li>
				<li>
					<span>은행등록</span>
					<button type="button" class="btn btn-primary" href="#" data-toggle="modal" data-target="#bank" onclick="bank()"><img src="../../images/icon_plus.png" /></button>
				</li>
			</ul>
			<!-- dept Modal -->
			 <form action="../emp/deptAdd">
				<div class="modal fade" id="dept" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="margin-top:150px;">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLabel">부서등록</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>   
				      <div class="modal-body">
				      	<div class="input-group">
						  <span class="input-group-addon" id="basic-addon1">부서코드</span>
						  <input type="text" class="form-control" id="dept_no" name="dept_no" placeholder="부서코드를 입력하세요" aria-describedby="basic-addon1" required />
							<span class="input-group-btn">
								<button type="button" id="check" class="btn btn-info">중복확인</button> 
							</span>
						</div>
						<div class="input-group">
						  <span class="input-group-addon" id="basic-addon2">부서이름</span>
						  <input type="text" class="form-control" name="dept_name" placeholder="부서이름을 입력하세요" aria-describedby="basic-addon2" required />
						</div>
						<div id="ajax_dept"></div>
				      </div>
					  <div class="modal-footer">
			          	<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			         	<button type="submit" class="btn btn-primary">등록완료</button>
			     	 </div>
				    </div>
				  </div>
				</div>
			</form>
			<!-- rank Modal -->
			 <form action="../emp/rankAdd">
				<div class="modal fade" id="rank" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="margin-top:150px;">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLabel">직급등록</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>   
				      <div class="modal-body">
				      	<div class="input-group">
						  <span class="input-group-addon" id="basic-addon1">직급코드</span>
						  <input type="text" class="form-control" id="rank_no" name="rank_no" placeholder="직급코드를 입력하세요" aria-describedby="basic-addon1" required />
							<span class="input-group-btn">
								<button type="button" id="check2" class="btn btn-info">중복확인</button> 
							</span>
						</div>
						<div class="input-group">
						  <span class="input-group-addon" id="basic-addon2">직급이름</span>
						  <input type="text" class="form-control" name="rank_name" placeholder="직급이름을 입력하세요" aria-describedby="basic-addon2" required />
						</div>
						<div id="ajax_rank"></div>
				      </div>
					  <div class="modal-footer">
			          	<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			         	<button type="submit" class="btn btn-primary">등록완료</button>
			     	 </div>
				    </div>
				  </div>
				</div>
			</form>
			<!-- duty Modal -->
			 <form action="../emp/dutyAdd">
				<div class="modal fade" id="duty" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="margin-top:150px;">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="dutyLabel">직책등록</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>   
				      <div class="modal-body">
				      	<div class="input-group">
						  <span class="input-group-addon" id="basic-addon1">직책코드</span>
						  <input type="text" class="form-control" id="duty_no" name="duty_no" placeholder="직책코드를 입력하세요" aria-describedby="basic-addon1" required>
							<span class="input-group-btn">
								<button type="button" id="check3" class="btn btn-info">중복확인</button> 
							</span>
						</div>
						<div class="input-group">
						  <span class="input-group-addon" id="basic-addon2">직책이름</span>
						  <input type="text" class="form-control" name="duty_name" placeholder="직책이름을 입력하세요" aria-describedby="basic-addon2" required>
						</div>
						<div id="ajax_duty"></div>
				      </div>
					  <div class="modal-footer">
			          	<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			         	<button type="submit" class="btn btn-primary">등록완료</button>
			     	 </div>
				    </div>
				  </div>
				</div>
			</form>
			<!-- bank Modal -->
			 <form action="../emp/bankAdd">
				<div class="modal fade" id="bank" tabindex="-1" role="dialog" aria-labelledby="bankLabel" aria-hidden="true" style="margin-top:150px;">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLabel">직급등록</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>   
				      <div class="modal-body">
				      	<div class="input-group">
						  <span class="input-group-addon" id="basic-addon1">은행코드</span>
						  <input type="text" class="form-control" id="bank_no" name="bank_no" placeholder="은행코드를 입력하세요" aria-describedby="basic-addon1" required>
							<span class="input-group-btn">
								<button type="button" id="check4" class="btn btn-info">중복확인</button> 
							</span>
						</div>
						<div class="input-group">
						  <span class="input-group-addon" id="basic-addon2">은행이름</span>
						  <input type="text" class="form-control" name="bank_name" placeholder="은행이름을 입력하세요" aria-describedby="basic-addon2" required>
						</div>
						<div id="ajax_bank"></div>
				      </div>
					  <div class="modal-footer">
			          	<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			         	<button type="submit" class="btn btn-primary">등록완료</button>
			     	 </div>
				    </div>
				  </div>
				</div>
			</form>
		</div>
	</div>

</body>
</html>