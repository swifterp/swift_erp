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
<!-- 팝업창 -->
<script>
$(document).ready(function() {
    $('#pop_dept').on("click", function() {	
    	var url="../emp/pop_deptRead";
    	var windowW = 300;  // 창의 가로 길이
        var windowH = 300;  // 창의 세로 길이
        var left = Math.ceil((window.screen.width - windowW)/2);
        var top = Math.ceil((window.screen.height - windowH)/2);
  window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
    });
});$(document).ready(function() {
    $('#pop_rank').on("click", function() {	
    	var url="../emp/pop_rankRead";
    	var windowW = 300;  // 창의 가로 길이
        var windowH = 300;  // 창의 세로 길이
        var left = Math.ceil((window.screen.width - windowW)/2);
        var top = Math.ceil((window.screen.height - windowH)/2);
  window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
    });
});
$(document).ready(function() {
    $('#pop_duty').on("click", function() {	
    	var url="../emp/pop_dutyRead";
    	var windowW = 300;  // 창의 가로 길이
        var windowH = 300;  // 창의 세로 길이
        var left = Math.ceil((window.screen.width - windowW)/2);
        var top = Math.ceil((window.screen.height - windowH)/2);
  window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
    });
});
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
						<col width="10%" />
						<col width="40%" />
						<col width="10%" />
						<col width="40%" />
					</colgroup>
					<tbody>
						<tr>
							<th>부서</th>					
							<td class="input-group">
								<input type="hidden" id="p_dept_no" name="deptno" class="form-control">
								<input type="text" id="p_dept_name" class="form-control">		
								<span class="input-group-btn">
									<button type="button" id="pop_dept" class="btn btn-primary" data-toggle="modal" data-target="#dept" onclick="dept()"><img src="../../images/icon_plus.png" /></button>
								</span>
							</td>	
							<th>직급</th>
							<td class="input-group">
								<input type="hidden" id="p_rank_no" name="rank_no" class="form-control">
								<input type="text" id="p_rank_name" class="form-control">
								<span class="input-group-btn">
									<button type="button" id="pop_rank" class="btn btn-primary"><img src="../../images/icon_plus.png" /></button>
								</span>
							</td>
						</tr>
						<tr>
							<th>직책</th>
							<td class="input-group">
								<input type="hidden" id="p_duty_no" name="duty_no" class="form-control">
								<input type="text" id="p_duty_name" class="form-control">
								<span class="input-group-btn">
									<button type="button" id="pop_duty" name="dept" class="btn btn-primary" data-toggle="modal" data-target="#duty" onclick="duty()"><img src="../../images/icon_plus.png" /></button>
								</span>
							</td>
							<th>입사일</th>
							<td><input type="date" name="emp_join_date" class="form-control"></td>
						</tr>
					</tbody>
				</table>
				<div class="btn_group">
					<input type="submit" id="submit" class="btn btn-outline-primary pull-right" value="검색">
				</div>
			</form>
			<div>
				<%
			 	  List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list"); 
			      if(lst != null){
			         for(int i=0;i<lst.size();i++){
			    %>
				<p style="clear:both;">검색결과 : 총  <%= String.valueOf(lst.get(0).get("EMPNO1")) %>명</p>
				<table class="table">
					<thead>
						<tr>
							<th>사원번호</th>
							<th>사원이름</th>
						</tr>
					</thead>
					<tbody>

					            <tr>
					               <td><%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %> </td>
					               <td><%= lst.get(i).get("EMP_NAME") %> </td>
					            </tr>
					   <%
					         }
					      }
					    %>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>