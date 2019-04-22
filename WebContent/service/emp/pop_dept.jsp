<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List, java.util.Map, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부서목록</title>
<%@ include file="../common/ui_common.jsp" %>
<script>
	function deptSelect(deptno,parent_dname){
            opener.document.getElementById("p_dept_no").value = deptno;
            opener.document.getElementById("p_dept_name").value = parent_dname;
            window.close();
	}
</script>
<style>
	table tbody tr:hover {background-color:#eee;}
</style>
</head>
<body>
	<form action="../emp/deptUpd">
	<table class="table" id="mytable">
		<thead>
			<tr>
				<th>부서코드</th>
				<th>부서명</th>
				<th>수정</th>
			</tr>
		</thead>
		<%
			List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
			float size= lst.size(); 
			if(lst != null){
				for(int i=0;i<lst.size();i++){
		%>
		<tbody>
				<tr onclick="javascript:deptSelect('<%= Integer.parseInt(String.valueOf(lst.get(i).get("DEPTNO"))) %>','<%= String.valueOf(lst.get(i).get("DNAME")) %>')">
					<td><%= String.valueOf(lst.get(i).get("DEPTNO")) %></td>
					<td><input type="text" class="form-control" value="<%= lst.get(i).get("DNAME") %>"></td>
					<td><button class="btn btn-outline-primary" type="submit">수정</button></td>
				</tr>
		</tbody>
		<%
				}
			} 
		%>
	</table>
	</form>
	<div class="pagination-container" style="float:left;">
		<nav>
			<div>
				<ul class="pagination" id="paging"></ul>
			</div>
		</nav>
	</div>
	<script>
   var totalData = "<%=size%>"
   var dataPerPage = 10;    // 한 페이지에 나타낼 데이터 수
   var pageCount = 10;  // 한 화면에 나타낼 페이지버튼 수
   var currentPage = 1;
   var table = '#mytable'

   function paging(totalData, dataPerPage, pageCount, currentPage){
      $('#paging').html('')
      var trnum=0
      var maxRows = dataPerPage // 한 페이지에 나타낼 데이터 
      var maxPageNum = pageCount; // 한 화면에 나타낼 페이지버튼 수
      var totalRows = $(table+' tbody tr').length; //총 데이터 수
      var pagenum = Math.ceil(totalRows/maxRows);
      var pageGroup = Math.ceil(currentPage/maxPageNum);
      var last = pageGroup*maxPageNum;
      var nextPageNumBer = last-(maxPageNum-1);
      //alert("nextPageNumBer ="+nextPageNumBer); 
      //마지막 버튼 번호(10,20,30...)-(10-1) = 1,11,21...
      if (last > pagenum)
           last = pagenum;
      var first = nextPageNumBer;
      var next = last+1;
      var prev = first-1;
      
      $(table+' tr:gt(0)').each(function(){
         trnum++
         if(trnum > maxRows){
            $(this).hide()
         }
         if(trnum <= maxRows){
            $(this).show()
         }
      })
         if(prev > 0){
              $('#paging').append(
                '<a id="prev" class="btn btn-outline-primary pull-left" style="margin-right: 10px">이전</a>'
            )
         }
        for(var i=first; i<=last;){
             $('#paging').append(
                '<li data-page="'+(i)+'"> <span>'+i++ +'<span class="sr-only"> (current) </span></span></li>'
                )
        }   
        if(last < pagenum){
              $('#paging').append(
                '<a id="next" class="btn btn-outline-primary" style="margin-left: 10px ">다음</a>'
                )
        }
        if(first == 1 && last == 10){
            $('#paging li:first-child').addClass('active')
            }else{
            $('#paging li:nth-child(2)').addClass('active')
       }
      $('#paging li').on('click',function() {
         var pageNum = $(this).attr('data-page');
         //alert("pageNum ="+pageNum); //클릭한 페이지 번호
           var trIndex = 0;

           
          $('#paging li').removeClass('active')
            $(this).addClass('active')
            $(table+' tr:gt(0)').each(function(){
             trIndex++
               // alert("trIndex ="+trIndex); //총 데이터수
               if(trIndex <= ((maxRows*pageNum)-maxRows) || trIndex > (maxRows*pageNum)){
                 $(this).hide()
               }else{
                 $(this).show()
               }
         })
      })
     $('#paging a').on('click', function(){
        var $item = $(this);
       var $id = $item.attr("id");
       var selectedPage = $item.text();
        var item_paging = $('#paging li').last().attr('data-page');
      
      item_paging++;

      //alert("item_paging : "+item_paging)
      
       if($id == "next")              selectedPage = next;
      if($id == "prev")             selectedPage = prev;

         //alert("next : "+next)
      
       paging(totalData, dataPerPage, pageCount, selectedPage);

      if(item_paging == next){
         var set_paging = $('#paging li').attr('data-page');
            alert("set_paging : "+set_paging)
         
         $('#paging li').first().trigger('click')
         $('#paging li').removeClass('active')
           $('#paging li').first().addClass('active')
      }   
   })
   }
   $(document).ready(function(){
       paging(totalData, dataPerPage, pageCount, 1);
   })
   </script>
</body>
</html>