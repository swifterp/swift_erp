<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기안서 조회 페이지</title>
<%@ include file="../common/ui_common.jsp" %>
<script type="text/javascript">

	function goDraftSearch(draft_code){
		location.href = "./selectDraftDetail?draft_code="+draft_code;
		
		}
	function goApprovalPath(draft_code){
		var url="./selectApprovalPath?draft_code=" +draft_code;
    	var windowW = 800;  // 창의 가로 길이
        var windowH = 300;  // 창의 세로 길이
        var left = Math.ceil((window.screen.width - windowW)/2);
        var top = Math.ceil((window.screen.height - windowH)/2);
  window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
		}
</script>
</head>
<body>
<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">		
		<%@ include file="../common/left_menu_approval.jsp" %>
		<div class="contents">
			<h2>결재조회</h2>		
			<form action="./draftSearch">
				<div class="input-group">
					<input type="text" class="form-control" name="draft_code" placeholder="서류 번호">
					<span class="input-group-btn" style="width:100px;">	
						<input type="submit" class="btn btn-outline-primary" style="margin-bottom:20px;" value="검색">
					</span>
				</div>
			</form> 
			<table class="table" id="mytable">
				<thead>
					<tr> 
						<th>No.</th>
						<th>기안일자</th>
						<th>제목</th>
						<th>작성자</th>
						<th>최종결재상태</th>
						<th>보기</th>
						<th>결재라인 보기</th>
						
					</tr>
				</thead>
			    <tbody>
					<%
						List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
						float size= lst.size();
						if(lst != null){
							for(int i=0;i<lst.size();i++){
					%>
					<tr>
						<td><%= Integer.parseInt(String.valueOf(lst.get(i).get("DRAFT_NO"))) %> </td>
						<td><%= String.valueOf(lst.get(i).get("DRAFT_DATE")).substring(0,10) %> </td>
						<td><%= lst.get(i).get("STYLE_NAME") %> </td>
						<td><%= lst.get(i).get("EMP_NAME") %> </td>
						<td><%= lst.get(i).get("DRAFT_STATE") %> </td>
						<td><a class="btn btn-outline-primary" onclick="javascript:goDraftSearch(<%= Integer.parseInt(String.valueOf(lst.get(i).get("DRAFT_NO"))) %>)" >조회</a></td>
						<td><a class="btn btn-default" onclick="javascript:goApprovalPath(<%= Integer.parseInt(String.valueOf(lst.get(i).get("DRAFT_NO"))) %>)" >결재라인 조회</a></td>
					
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
   var pageCount = "<%= Math.ceil(size/10) %>";  // 한 화면에 나타낼 페이지버튼 수
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
      if (last > pagenum)
           last = pagenum;
      var first = last - (maxPageNum-1);
      var next = last+1;
      var prev = first-1;
      
      //alert("maxRows ="+maxRows); //한 페이지에 보여줄 데이터 수
      //alert("totalRows ="+totalRows); //총 데이터 수
      //alert("maxPageNum ="+maxPageNum);//한 페이지에 보여줄 버튼수
      //alert("pagenum ="+pagenum);//한 페이지에 보여줄 버튼수
      //alert("pageGroup ="+pageGroup);  //페이지 그룹번호
      //alert("last ="+last);  //마지막 버튼 번호
      //alert("first ="+first);  //첫번째 버튼 번호
      //alert("next ="+next);  //다음 페이지 첫번째 버튼
      //alert("prev ="+prev);  //이전 버튼 번호
      
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
      $('#paging li:first-child').addClass('active')
      $('#paging li').on('click',function() {
         var pageNum = $(this).attr('data-page');
         //alert("pageNum ="+pageNum); //클릭한 페이지 번호
           var trIndex = 0;
           
          //var d = (maxRows*pageNum)-maxRows;
          //alert("d ="+d); //전체 데이터 범위에서 클릭한 페이지번호의 첫번째에 보여줄 데이터번호
          //var a = maxRows*pageNum;
          //alert("a ="+a); //전체 데이터 범위에서 클릭한 페이지번호의 마지막에 보여줄 데이터번호
         //alert(this);
         
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
            //alert("$id ="+$id);

            paging(totalData, dataPerPage, pageCount, selectedPage);
      })
   }
   
   $(document).ready(function(){
       paging(totalData, dataPerPage, pageCount, 1);
   })
   </script>
</body>
</html>