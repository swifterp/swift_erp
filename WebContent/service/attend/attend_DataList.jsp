<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근태 관리</title>
<script type="text/javascript">
	function attendDataInsert(){
		location.href = "../attend/attend_DataInsert.jsp";
	}
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
<%@ include file="../common/ui_common.jsp" %>
<style>
	.tb_left td {text-align:left;}
</style>
</head>
<body>
<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">		
		<%@ include file="../common/left_menu_attend.jsp" %>
		<div class="contents">
			<h2>근태관리 목록</h2>
			<form action="../attend/attend_DetailData">
				<table class="table tb_left" style="margin-bottom:20px; background:#eee;">

					<tbody>
						<tr>
							<th class="line">사원번호</th>
							<td class="line">
								<input type="text" id="empno" name="empno" class="form-control"
									   style="width:200px; display:inline-block">
							</td>
						</tr>
						<tr>
							<th class="line">근무시간</th>
							<td class="line">
								<div class="input-group">
									<input type="text" class="form-control" style="width:200px; display:inline-block" id="attend_time" name="attend_time">
								</div>
							</td>
						</tr>
						<tr>
							<th class="line" style="width:150px;">
								근태날짜
							</th>
							<td class="line">
							<input type="date" name="attend_date" class="form-control"
								style="width:200px; display:inline-block">
							&nbsp;~&nbsp;
							<input type="date" name="attend_date2" class="form-control"
								style="width:200px; display:inline-block">
							</td>
						</tr>
						<tr>
							<th class="line">
								근태명
							</th>
							<td class="line">
								<div class="input-group">
									<input type="text" id="attend_name" name="attend_name" class="form-control"
										   style="width:200px; display:inline-block">
								</div>
							</td>
						</tr>
						<tr>
							<td class="line" style="width:155px" colspan="2">
								<div class="input-group pull-right">
									<input type="submit" class="btn btn-primary" value="조회">
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
			<table class="table" id="mytable" style="table-layout: fixed">
				<thead>
				<colgroup>
					<col width="15%">
					<col width="10%">
					<col width="10%">
					<col width="10%">
					<col width="10%">
					<col width="10%">
					<col width="10%">
					<col width="10%">
					<col width="10%">
					<col width="10%">
				</colgroup>
					<tr>
						<th> 근태날짜 </th>
						<th> 사원번호 </th>
						<th> 사원명 </th>
						<th> 근태명 </th>
						<th> 근무시간 </th>
						<th> 비고 </th>	
						<th> 출근시간 </th>	
						<th> 퇴근시간 </th>	
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
			               <td><%= lst.get(i).get("ATTEND_DATE") %> </td>
			<%--           <td><input type="checkbox" value="<%= String.valueOf(lst.get(i).get("ATTEND_NO")) %>"></td> --%>
			               <td><%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %> </td>
			               <td><%= String.valueOf(lst.get(i).get("EMP_NAME")) %> </td>
			              
			               <td><%= String.valueOf(lst.get(i).get("ATTEND_NAME")) %> </td>
			               <td><%= String.valueOf(lst.get(i).get("ATTEND_TIME")) %> </td>
			               <td style="white-space:nowrap;  text-overflow:ellipsis; overflow:hidden;">
			               		<%= lst.get(i).get("ATTEND_M_ETC") %> 
			               </td>
			               <td><%= lst.get(i).get("ATTEND_OPEN") %> </td>
			               <td><%= lst.get(i).get("ATTEND_CLOSE") %> </td>
			               <td> 
				                <form action="../attend/attend_DataListLow">
				               		<input class="form-control" type="hidden" id="attendno" name="attendno" value="<%= String.valueOf(lst.get(i).get("ATTEND_NO")) %>">
				               		<input class="form-control btn btn-default" type="submit" value="수정">
				               	</form>
							</td>
							<td>
								<form action="../attend/attend_DataDelete">
									<input class="form-control" type="hidden" id="attend_no" name="attend_no" value="<%= String.valueOf(lst.get(i).get("ATTEND_NO")) %>">
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
				<input type="button" class="btn btn-outline-primary pull-right" onclick="javascript:attendDataInsert()" value="상세등록" style="margin-left:10px;">
			</div>
			<input type="button" class="btn btn-outline-primary pull-right" onclick="javascript:attend_end_add(<%= String.valueOf(sess.get(0).get("EMPNO")) %>)" value="퇴근" style="margin-left:10px;">
			<input type="button" class="btn btn-outline-primary pull-right" onclick="javascript:attend_start_add(<%= String.valueOf(sess.get(0).get("EMPNO")) %>)" value="출근" style="margin-left:10px;">
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
<script type="text/javascript">
	function attend_start_add(EMPNO){
		location.href = "../attend/insertWorkStart?EMPNO="+EMPNO;
	}
</script>
<script type="text/javascript">
	function attend_end_add(EMPNO){
		location.href = "../attend/insertWorkEnd?EMPNO="+EMPNO;
	}
</script>
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