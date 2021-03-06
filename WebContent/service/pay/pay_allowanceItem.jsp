<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../common/ui_common.jsp" %>
<title>수당항목등록 페이지</title>
<script type="text/javascript">

	function deleteAllowanceItem(allowance_no){

		location.href = "./deleteAllowance?allowance_no="+allowance_no;
		
	}

</script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#chat").load("../common/top_menu.jsp")
	});
</script>
</head>
<body>
<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
	<div id="chat"></div>
	<div class="container">
		<%@ include file="../common/left_menu_pay.jsp" %>
		<div class="contents">
			<h1>수당항목</h1>
			<form action="../pay/insertAllowance">
				<table class="table" style="margin-bottom:20px;">
					<tbody>
						<tr>
							<th>
								항목이름
							</th>
							<td>
								<input type="text" name="name" class="form-control" style="width:200px;">
							</td>
						</tr>
						<tr>
							<th>
								항목구분
							</th>
							<td>
								<div>
									<select name="division" class="form-control" style="width:200px;">
										<option name="division" value="월정액">월정액</option>
										<option name="division" value="일급">일급</option>
									</select>
								</div>
							</td>
						</tr>	
					</tbody>
				</table>
				<div class="btn_group">
					<input type="submit" class="btn btn-outline-primary" value="등록">
				</div>
			</form>

			<table class="table" id="mytable">
				<tbody>
					<tr>
						<th>
							수당명
						</th>
						<th> 
							수당구분
						</th>
						<th>
							기타
						</th>
					</tr>
	<%
			List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
			float size= lst.size();
			if(lst != null){
				for(int i=0;i<lst.size();i++){
	%>
					<tr>
						<td>
							<%= lst.get(i).get("ALLOWANCE_NAME") %>
						</td>
						<td> 
							<%= lst.get(i).get("ALLOWANCE_DIVISION") %>
						</td>
						<td>
							<input type="button" class="btn btn-default" value="삭제하기" onclick="javascript:deleteAllowanceItem(<%= String.valueOf(lst.get(i).get("ALLOWANCE_NO")) %>)">
						</td>
					</tr>
	<%
				}
			}
	%>
				</tbody>
			</table>
			<div class="btn_group">
				<input type="button" class="btn btn-outline-primary" value="인쇄" >
			</div>
			<div class="pagination-container">
               <nav>
                  <div>
                     <ul class="pagination" id="paging">
                     </ul>
                  </div>
               </nav>
           </div>
		</div>
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
      var totalRows = $(table+' tbody tr').length //총 데이터 수
      var pagenum = Math.ceil(totalRows/maxRows);    //총 페이지버튼 수
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
            $('#paging li:nth-child(1)').addClass('active')
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
            
            if($id == "next")    selectedPage = next;
            if($id == "prev")    selectedPage = prev;

            paging(totalData, dataPerPage, pageCount, selectedPage);
      })
   }
   
   $(document).ready(function(){
       paging(totalData, dataPerPage, pageCount, 1);
   })
   </script>
</body>
</html>