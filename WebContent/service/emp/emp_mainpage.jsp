<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emp_mainpage</title>
<%@ include file="../common/ui_common.jsp" %>

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
<style>
	.Pre_color{
		color: #fff;
	}
</style>
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

	if (totalCount < endRow) 
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
    if(page < totalCount){
		$('#Previous').on('click',function() {
			var pageNum = $(this).attr('data-page')
        	var trIndex = 0;
        	$('.pagination li').removeClass('active')
         	$(this).addClass('active')
         	$(table+' tr:gt(0)').each(function(){
            	trIndex++
            	if(trIndex > (maxRows*pageNum) || trIndex <= ((maxRows*pageNum)-maxRows)){
               		$(this).hide()
            	}else{
               		$(this).show()
            	}
         	})
      })
    }
}

</script>
<style>
table tr:hover {background:#fefefe;}
</style>
</head>
<body>
<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
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
			<table class="table" id="mytable">
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
			<div class="pagination-container">
		         <nav>
		         	<div>
		         	   <ul class="pagination">
		               </ul>
		         	</div>
		         </nav>
		     </div>
			<div class="btn_group">
				<a class="btn btn-outline-primary pull-right" onclick="javascript:goEmpAdd()">사원등록</a>
			</div>
		</div>
	</div>
	
   <script type="text/javascript">
   var table = '#mytable'
   $(document).ready(function(){
      $('.pagination').html('')
      var trnum=0
      var maxRows = parseInt(10)
      var buttons = parseInt(10)
      var totalRows = $(table+' tbody tr').length
      $(table+' tr:gt(0)').each(function(){
         trnum++
         if(trnum > maxRows){
            $(this).hide()
         }
         if(trnum <= maxRows){
            $(this).show()
         }
      })
      if(totalRows > maxRows){
         var pagenum = Math.ceil(totalRows/maxRows)
	   		 	$('.pagination').append(
	   	   		'<button class="btn btn-outline-primary pull-left" style="margin-right: 10px">이전</button>'
	    	    )
       	 for(var i=1; i<=pagenum;){
	   		 $('.pagination').append(
	   	   		'<li data-page="'+i+'"> <span>'+i++ +'<span class="sr-only"> (current) </span></span></li>'
	    	    ).show()
         }	
	   		 	$('.pagination').append(
	   	   		'<button class="btn btn-outline-primary" style="margin-left: 10px">다음</button>'
	    	    )
      }
      $('.pagination li:nth-child(2)').addClass('active')
      $('.pagination li').on('click',function() {
         var pageNum = $(this).attr('data-page')
         var trIndex = 0;
         $('.pagination li').removeClass('active')
         $(this).addClass('active')
         $(table+' tr:gt(0)').each(function(){
            trIndex++
            if(trIndex > (maxRows*pageNum) || trIndex <= ((maxRows*pageNum)-maxRows)){
               $(this).hide()
            }else{
               $(this).show()
            }
         })
      })
   })

   </script>
</body>
</html>