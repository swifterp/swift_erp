<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.Map" %>
    <%@page import="java.util.HashMap" %>
    <%@page import="java.util.List" %>
    <%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../common/ui_common.jsp" %>
<%
//List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member");
//int style1 =Integer.parseInt(String.valueOf(sess.get(0).get("EMPNO")));

%>
  <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script> 
  <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
  <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.js"></script>
  <script>
	$(document).ready(function() {
	    $('#pop_dept1').on("click", function() {	
	    	var url="../approval/approval_path_dept1?EMPNO=" + document.getElementById("hidempno").name
	    									+"&idValue=1"
	    	var windowW = 300;  // 창의 가로 길이
	        var windowH = 500;  // 창의 세로 길이
	        var left = Math.ceil((window.screen.width - windowW)/2);
	        var top = Math.ceil((window.screen.height - windowH)/2);
	  window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
	    });
	}); 
	
	function pop_emp(i){	
	    	var url="../approval/approval_path_dept1?EMPNO=" + document.getElementById("hidempno").name
	    									+"&idValue="+i;
	    	var windowW = 300;  // 창의 가로 길이
	        var windowH = 500;  // 창의 세로 길이
	        var left = Math.ceil((window.screen.width - windowW)/2);
	        var top = Math.ceil((window.screen.height - windowH)/2);
	  window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
	}   
	</script>

<% int style_code = Integer.parseInt(request.getParameter("style_code")); 
   int draft_no = Integer.parseInt(request.getParameter("draft_no"));
   List<HashMap<String,Integer>> reference_list = new ArrayList<HashMap<String,Integer>>();
%>

</head>
<body>
	<%	
	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); 
	String style = String.valueOf(request.getAttribute("style"));
	%>
	<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
	<%@ include file="../common/top_menu.jsp" %>
		<div class="container">		
			<%@ include file="../common/left_menu_approval.jsp" %>
			<div class="contents">
				<h3>서류작성</h3>
				<script>
				var i=2;
				function addReference(){
					
				  var txt = document.createTextNode(i+'차 결재자');
				  var txtbox1 = document.createElement("INPUT");
				  var txtbox2 = document.createElement("INPUT");
				  var txtbtn= document.createElement("INPUT");
				  var btn= document.createElement("INPUT");
				  var div=document.createElement("div");
				  
				  //txt.setAttribute("type", "text");
				  txtbox1.setAttribute("type", "hidden");
				  txtbox2.setAttribute("type", "text");
				  txtbtn.setAttribute("type", "button");
				  btn.setAttribute("type", "button");
				  
				 
				  div.setAttribute("id","test"+i);
					
				  txtbox1.setAttribute("id", "approval_empno"+i);
				  txtbox1.setAttribute("name", "reference_empno");
				/*   txtbox1.setAttribute("value", "111"); */
				  
				  txtbox1.setAttribute("class", "form-control");
				  txtbox2.setAttribute("id","approval_emp_name"+i)
				  /* txtbox2.setAttribute("name","reference_empno") */
				  txtbox2.setAttribute("class", "form-control");
				  txtbox2.setAttribute("required", "");
				  txtbox2.setAttribute("onclick", "pop_emp("+i+")");
				  txtbtn.setAttribute("class","btn btn-default");
				  txtbtn.setAttribute("value","보기");
				  btn.setAttribute("class", "btn btn-default");
				  btn.setAttribute("value", "결재자 추가");
				  btn.setAttribute("onclick", "addReference("+i+")");
				
				
				  document.getElementById("test2").appendChild(txt);
				  document.getElementById("test2").appendChild(txtbox1);
				  document.getElementById("test2").appendChild(txtbox2);
				  document.getElementById("test2").appendChild(txtbtn);
				  document.getElementById("test2").appendChild(div);
				  i=i+1;
				}
				
				function add_text(){
					var div= document.createElement('div');
					div.innerHTML = document.getElementById('pre_set').innerHTML;
					document.getElementById('field').appendChild(div);
					
				}
				</script>
				<section>
				<script>
					$(document).ready(function() {
						$('#summernote').summernote({
							height : 800, // 에디터의 높이 
							minHeight : null,
							maxHeight : null,
							focus : true,
							lang : 'ko-KR' // 기본 메뉴언어 US->KR로 변경
						});
					});	
				 	var postForm = function() {
						var contents =  $(style).html($('#summernote').code());
					} 
				</script>
				<form action="./approval_write" method="POST">
				<table class="table">
					<tr id="test1">
						<th width="200">1차결재 <span class="essential">*</span></th>
						<td id="pop_dept1" class="input-group" width="200">
							<input type="hidden" id="approval_empno1" name="reference_empno" class="form-control" required="" >
							<input type="text" id="approval_emp_name1" class="form-control" required="" readonly/>
							
							<span class="input-group-btn">
								 <button class="btn btn-default" type="button" data-toggle="modal" data-target="#exampleModal">보기</button>
							</span>
						</td>
						<td>
						<button class="btn btn-default" type="button" onclick="addReference()">결재자 추가</button>
						</td>
					</tr>
					
					<tr id="test2">
					
					</tr>
				</table>
				<!-- summernote와 관련된 영역 -->
				<textarea id="summernote" name="draft_data">
				<%
				out.print(style);
				%>
				</textarea>
				
				<!-- <input type="submit" onclick = "javascript:goSaveData()" value="결재"> -->
				
			<%-- 	<input type="hidden" name="approval_style" value="<%sess.get(0).get("EMPNO"); %>">
				<input type="hidden" name="approval_path_code" value="<%sess.get(0).get("EMPNO"); %>">
				<input type="hidden" name="approval_writer" value="<%sess.get(0).get("EMPNO"); %>" --%>
				<%-- <input type="hidden" name="style" value="<%= style %>"> --%>
				<!-- <input type="hidden" name="reference" value=""> -->
				<input type="hidden" name="style_code" value="<%= style_code %>">
				<input type="hidden" name="draft_no" value="<%= draft_no %>">
				<input type="hidden" name="empno" value="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
				<input type="submit" value="결재" class="btn btn-outline-primary" style="width:200px">
				</form>
			</section>
		</div>
	</div>

</body>
</html>