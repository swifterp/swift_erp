<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업무일지 조회</title>
<%@ include file="../common/ui_common.jsp" %>
<script type="text/javascript">
	$(document).ready(function() {
	    $('#pop_clientlist').on("click", function() {	
	    	var url="../work/pop_clientlist";
	    	var windowW = 500;  // 창의 가로 길이
	        var windowH = 300;  // 창의 세로 길이
	        var left = Math.ceil((window.screen.width - windowW)/2);
	        var top = Math.ceil((window.screen.height - windowH)/2);
	  window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
	    });
	});
	$(document).ready(function() {
	    $('#pop_deptlist').on("click", function() {	
	    	var url="../work/pop_deptlist";
	    	var windowW = 500;  // 창의 가로 길이
	        var windowH = 300;  // 창의 세로 길이
	        var left = Math.ceil((window.screen.width - windowW)/2);
	        var top = Math.ceil((window.screen.height - windowH)/2);
	  window.open(url,'',"l top="+top+", left="+left+", height="+windowH+", width="+windowW);
	    });
	});
</script>
<script type="text/javascript">
	function workDataInsert(){
		location.href = "../work/work_BusinessLogInsert.jsp";
	}
</script>
</head>
<body>
<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">		
		<%@ include file="../common/left_menu_attend.jsp" %>
		<div class="contents">
			<h1>업무일지 관리</h1>
			<form action="../work/workDetailList">
				<table class="table tb_left" style="text-align:left; margin-bottom:20px; background:#eee;">
					<tr>
						<th>거래처명</th>
						<td>
							<div id="pop_clientlist">
								<input type="hidden" id="client_code" name="client_code" class="form-control" value="0">
								<input type="text" id="client_name" class="form-control" placeholder="거래처명" style="width:200px;">
							</div>
						</td>
					</tr>
					<tr>
						<th>부서명</th>
						<td>
							<div id="pop_deptlist">
								<input type="hidden" id="deptno" name="deptno" class="form-control" value="0">
								<input type="text" id="dname" class="form-control" placeholder="부서명" style="width:200px;">
							</div>
						</td>
					</tr>
					<tr>
						<td class="line" style="width:155px" colspan="2">
						<div class="input-group pull-right">
							<button type="submit" class="btn btn-outline-primary">검색</button>
						</div>
						</td>
					</tr>
				</table>
			</form>

			<table class="table" id="mytable">
				<colgroup>
					<col width="15%" />
					<col width="10%" />
					<col width="20%" />
					<col width="45%" />
					<col width="5%" />
					<col width="5%" />
				</colgroup>
				<thead>
					<tr>
						<th>업무보고일</th>
						<th>부서</th>
						<th>거래처</th>
						<th>업무일지 제목</th>
						<th>수정</th>
						<th>삭제</th>
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
						<td><%= lst.get(i).get("LOG_DATE") %> </td>
						<td><%= lst.get(i).get("DNAME") %> </td>
						<td><%= lst.get(i).get("CLIENT_NAME") %> </td>
						<td><%= lst.get(i).get("LOG_PROJECT") %> </td>
<%-- 						<td><%= lst.get(i).get("LOG_CONTENT") %> </td> --%>
						<td> 
						<form action="../work/work_DataListLow">
								<input class="form-control" type="hidden" id="log_no" name="log_no" value="<%= String.valueOf(lst.get(i).get("LOG_NO")) %>">
								<input class="form-control btn btn-default" type="submit" value="수정">
						</form>
						</td><td>
						<form action="../work/work_BusinessLogDelete">
							<input class="form-control" type="hidden" id="log_no" name="log_no" value="<%= String.valueOf(lst.get(i).get("LOG_NO")) %>">
							<input class="form-control btn btn-default" type="submit" value="삭제">
						</form>
						</td>
					</tr>
					<%
							}
						}
				 	%>
			    </tbody>
			</table>
			<div class="btn_group">
				<input type="button" class="btn btn-outline-primary pull-right" onclick="javascript:workDataInsert()" value="업무일지등록">
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