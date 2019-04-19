<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근태 항목</title>

<script type="text/javascript">
	function attendCodeInsert(){
		location.href = "../attend/attend_CodeInsert.jsp";
	}
</script>
<%@ include file="../common/ui_common.jsp" %>
<!-- 날짜선택 관련 -->
<script>
	$(function() {
	  $( "#datepicker" ).datepicker({
	        showOn: "both", 
	        buttonImage: "../../images/btn_calendar.png", 
	        buttonImageOnly: true, 
	        dateFormat: "yy/mm/dd",
	       	changeMonth: true, 
	        dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
	        dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
	        monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
	        monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
		});
	});
</script>

<style>
	.tb_left {text-align:left;}
</style>
</head>
<body>
<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">		
		<%@ include file="../common/left_menu_attend.jsp" %>
		<div class="contents">
			<h2>근태항목관리 목록</h2>
			<form action="../attend/attend_DetailCode">
				<table class="table tb_left" style="text-align:left; margin-bottom:20px; background:#eee;">
					<colgroup>
						<col width="20%" />
						<col width="80%" />
					</colgroup>
					<tr>
						<th>근태코드</th>
						<td><input type="text" id="attend_code" name="attend_code" class="form-control" style="width:200px;"></td>
					</tr>
					<tr>
						<th>근태명</th>
						<td><input type="text" id="attend_name" name="attend_name" class="form-control" style="width:200px;"></td>
					</tr>
					<tr>
						<th>근태코드상태</th>
						<td>
							<select id="attend_code_state" name="attend_code_state" class="form-control" style="width:200px;">
								<option value="">전체</option>			  
								<option value="사용">사용</option>
								<option value="중지">중지</option>
							</select>
						</td>
					</tr>
<!-- 					<tr>
						<th>비고</th>
						<td><input type="text" id="attend_c_etc" name="attend_c_etc" class="form-control" style="width:200px;"></td>
					</tr> -->
					<tr>
						<td class="line" style="width:155px" colspan="2">
							<div class="input-group pull-right">
								<input type="submit" class="btn btn-primary" value="조회">
							</div>
						</td>
					</tr>
				</table>
			</form>
			<table class="table" id="mytable" style="table-layout: fixed">
				<thead>
					<tr>
						<th>근태코드</th>
						<th>근태명</th>
						<th>근태코드상태</th>
						<th>비고</th>
						<th>    </th>
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
			               <td><%= String.valueOf(lst.get(i).get("ATTEND_CODE")) %> </td>
			               <td><%= lst.get(i).get("ATTEND_NAME") %> </td>
			               <td><%= lst.get(i).get("ATTEND_CODE_STATE") %> </td>
			               <td style="white-space:nowrap;  text-overflow:ellipsis; overflow:hidden;"><%= lst.get(i).get("ATTEND_C_ETC") %> </td>
			               <td>
			               <form action="../attend/attend_CodeLow">
			               <input type="hidden" id="attend_code" name="attend_code" value="<%= String.valueOf(lst.get(i).get("ATTEND_CODE")) %>">
			               <input type="submit" class="btn btn-default" value="수정">
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
				<input type="button" class="btn btn-primary pull-right" onclick="javascript:attendCodeInsert()" value="등록">
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