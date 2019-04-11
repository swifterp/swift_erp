<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emp_mainpage</title>
<%@ include file="../common/ui_common.jsp" %>
<script src="../../js/jquery.twbsPagination.js"></script>
<script src="../../js/jquery.twbsPagination.min.js"></script>

<script type="text/javascript">
	<!--사원등록-->
	function goEmpAdd(){
		location.href = "../emp/emp_empAdd.jsp";	
	}
	<!--사원상세보기-->
	function empView(emp_number){
		location.href = "../emp/view?emp_number="+emp_number;	
	}
	<!--사원삭제-->
	function empDel(emp_number){
		location.href = "../emp/delete?emp_number="+emp_number;	
	}
</script>
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
</script>
<script>
$(document).ready(function(){
	$("img").hover(function() {
	var temp = $(this).attr("src");
	$(this).attr("src", $(this).attr("data-alt"));
	$(this).attr("data-alt", temp);
	});
	})
</script>
<script>
function paging(page) {
    $('#list-body').empty();
    var startRow = (page - 1) * pageSize; // + 1 list는 0부터 시작하니깐;
    var endRow = page * pageSize;
    if (endRow > totalCount) 
    {
        endRow = totalCount;
    }  
    var startPage = ((page - 1)/visibleBlock) * visibleBlock + 1;
    var endPage = startPage + visibleBlock - 1;
    if(endPage > totalPages) {    //
      endPage = totalPages;
    }
    for (var j = startRow; j < endRow; j++) 
    {   
        $('#list-body').append(''+ chatLogList[j].fileNo +'<a onclick="getContent(\''+chatLogList[j].fileName+'\')">'
                + textLengthOverCut(chatLogList[j].fileName, '25', '...') +'</a>'+ chatLogList[j].fileDate +'');
    }
    
    totalPages = totalCount/pageSize;
    if (totalCount%pageSize > 0) {
    totalPages++;
    }
}

</script>
<style>
table tr:hover {background:#fefefe;}
</style>
</head>
<body>
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">		
		<%@ include file="../common/left_menu_emp.jsp" %>
		<div class="contents">
			<h1>사원목록</h1>
			<form action="../emp/empSearchNumName">
				<div class="input-group">
					<input type="text" class="form-control" id="empinfo" name="empinfo" placeholder="성명 또는 부서">
					<span class="input-group-btn" style="width:100px;">
						<button type="submit" class="btn btn-default" style="margin-bottom:20px;">검색</button>
					</span>
				</div>
			</form>
			<table class="table">
				<colgroup>
					<col width="10%">
					<col width="10%">
					<col width="20%">
					<col width="15%">
					<col width="10%">
					<col width="15%">
					<col width="5%">
					<col width="5%">
					<col width="5%">
					<col width="5%">
				</colgroup>
				<thead>
					<tr>
						<th>사번</th>
						<th>성명</th>
						<th>주민등록번호</th>
						<th>부서</th>
						<th>직급</th>
						<th>입사일자</th>
						<th>Email</th>
						<th>인쇄</th>
						<th>수정</th>
						<th>삭제</th>
					</tr>
				</thead>
			    <tbody>
					<%
						List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
						if(lst != null){
							for(int i=0;i<lst.size();i++){
					%>
					<tr>
						<td><a onclick="javascript:empView(<%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %>)"><%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %></a></td>
						<td><a onclick="javascript:empView(<%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %>)"><%= lst.get(i).get("EMP_NAME") %></a></td>
						<td><%= lst.get(i).get("EMP_RESIDENT_NUMBER") %></td>
						<td><%= lst.get(i).get("DNAME") %></td>
						<td><%= lst.get(i).get("RANK_NAME") %></td>
						<td><%= lst.get(i).get("EMP_JOIN_DATE") %></td>
						<td><a href="#"><img src="../../images/icon_email_0.png" data-alt="../../images/icon_email_1.png" style="width:35px; height:35px;"/></a></td>
						<td><a href="#"><img src="../../images/icon_print_0.png" data-alt="../../images/icon_print_1.png" style="width:35px; height:35px;"/></a></td>
						<td><a onclick="javascript:empView(<%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %>)" href="#"><img src="../../images/icon_pencil_0.png" data-alt="../../images/icon_pencil_1.png" style="width:35px; height:35px;" /></a></td>
						<td><a onclick="javascript:empDel(<%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %>)" href="#"><img src="../../images/icon_delete_0.png" data-alt="../../images/icon_delete_1.png" style="width:35px; height:35px;"/></a></td>
					</tr>
					<%
							}
						}
				 	%>
			    </tbody>
			</table>
			<div class="btn_group">
				<a class="btn btn-outline-primary pull-right" onclick="javascript:goEmpAdd()">사원등록</a>
			</div>
			<nav aria-label="Page navigation example" style="text-align: center;">
				<ul class="pagination-sm" id="pagination"></ul>
			</nav>
		</div>
	</div>
	
	<script src="/resources/bootstrap/js/jquery.twbsPagination.js"></script>
	<script type="text/javascript">
	$('#pagination').twbsPagination({
		   totalPages: totalPages,  // 전체 page블럭 수
		   visiblePages: visibleBlock,  // 출력될 page 블럭수 상수로 지정해 줘도 되고, 변수로 지정해줘도 된다.
		   prev: "이전",
		   next: "다음",
		   first: '<span aria-hidden="true">«</span>',
		   last: '<span aria-hidden="true">»</span>',
		   onPageClick: function (event, page) {
		   $('#page-content').text('Page ' + page);
		   paging(page);
		   }
		});
	</script>
</body>
</html>