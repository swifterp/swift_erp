<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>거래처정보조회 페이지</title>
<%@ include file="../common/ui_common.jsp" %>
<script type="text/javascript">
	function goClientInfoWrite(){
	location.href="../client/client_clientinfowrite.jsp"
		}
</script>
</head>
<body>
<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">
		<%@ include file="../common/left_menu_client.jsp" %>	
		<div class="contents">
			<h2>거래처정보목록</h2>
			<table class="table" id="mytable">
				<colgroup>
					<col width="10%" />
					<col width="15%" />
					<col width="15%" />
					<col width="15%" />
					<col width="20%" />
					<col width="15%" />
					<col width="5%" />
					<col width="5%" />
				</colgroup>
				<thead>
					<tr>
						<th>업체구분</th>
						<th>업체명</th>
						<th>전화번호</th>
						<th>이메일</th>
						<th>주소</th>
						<th>내용</th>
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
						<td><%= lst.get(i).get("CLIENT_DIVISION") %> </td>
						<td><%= lst.get(i).get("CLIENT_NAME") %> </td>
						<td><%= lst.get(i).get("CLIENT_TEL") %> </td>
						<td><%= lst.get(i).get("CLIENT_EMAIL") %> </td>
						<td><%= lst.get(i).get("CLIENT_ADDRESS") %> </td>
						<td><%= lst.get(i).get("CLIENT_CONTENT") %> </td>
						<td>
							<form action="../client/selectClientInfoDetail">
								<input type="hidden" id="CLIENT_CODE" name="CLIENT_CODE" class="form-control" value=<%= Integer.parseInt(String.valueOf(lst.get(i).get("CLIENT_CODE"))) %>>
								<input type="submit" id="CLIENT_CODE" name="CLIENT_CODE" class="btn btn-default" value="수정">
							</form> 
						</td>
						<td>
							<form action="../client/deleteClientInfo">
								<input type="hidden" id="CLIENT_CODE" name="CLIENT_CODE" class="form-control" value=<%= Integer.parseInt(String.valueOf(lst.get(i).get("CLIENT_CODE"))) %>>
								<input type="submit" id="CLIENT_CODE" name="CLIENT_CODE" class="btn btn-default" value="삭제">
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
				<input type="button" class="btn btn-primary pull-right" onclick="javascript:goClientInfoWrite()" value="등록">
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