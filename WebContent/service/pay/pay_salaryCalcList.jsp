<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../common/ui_common.jsp" %>
<title>급여계산현황 페이지</title>

<style type="text/css">
	.text-font{
		font-size: 12px;
	}
</style>

<script type="text/javascript">
	function personalPay(report){
		location.href = "../pay/personalPay?report="+report;
	}
	function totalCalculation(report){
		location.href = "../pay/totalCalculation?report="+report;
	}
	function personalCalculation(report){
		location.href = "../service/pay/pay_personalCalcSearch.jsp?report="+report;
	}
	function payConfirm(report){
		location.href = "../pay/payConfirm?report="+report;
	}
	function payConfirmCancel(report){
		location.href = "../pay/payConfirmCancel?report="+report;
	}
	function deletePayroll(report){
		location.href = "../pay/deletePayroll?report="+report;
	}
</script>
</head>
<body>
	<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
	<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
	<script type="text/javascript">
	$(document).ready(function(){
		$("#chat").load("../common/top_menu.jsp")
	});
	</script>
	<div id="chat"></div>
	<div class="container">
		<%@ include file="../common/left_menu_pay.jsp" %>
		<div class="contents">
			<div id="lblTable">
				<table id='mytable' class='table text-font'>
					<thead>
						<tr>
							<th width="10%">신고귀속</th>
							<th width="10%">대장명칭</th>
							<th width="10%">계산금액</th>
							<th width="10%">급여계산</th>
							<th width="10%">개인별급여내역</th>
							<th width="10%">계산확정</th>
							<th width="10%">삭제</th>
						</tr>
					</thead>
					<%
						List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list");
						float size= lst.size();
						if(lst != null){
							for(int i=0;i<lst.size();i++){
								if(Integer.parseInt(String.valueOf(lst.get(i).get("SALARYCALC_CONFIRM"))) == 0){
					%>
									<tr>
										<td width="10%"><%= lst.get(i).get("SALARYCALC_REPORT") %></td>
										<td width="10%"><%= lst.get(i).get("SALARYCALC_NAME") %></td>
										<td width="10%"><%= String.valueOf(lst.get(i).get("SALARYCALC_TOTAL")) %></td>
										<td width="10%"><input type="button" class="btn btn-primary" onclick="javascript:totalCalculation('<%= lst.get(i).get("SALARYCALC_REPORT") %>')" value="전체계산"></td>
										<td width="10%"><input type="button" class="btn btn-primary" onclick="javascript:personalPay('<%= lst.get(i).get("SALARYCALC_REPORT") %>')" value="개인별급여내역"></td>
										<td width="10%"><input type="button" class="btn btn-primary" onclick="javascript:payConfirm('<%= lst.get(i).get("SALARYCALC_REPORT") %>')" value="계산확정"></td>
										<td width="10%"><input type="button" class="btn btn-default" onclick="javascript:deletePayroll('<%= lst.get(i).get("SALARYCALC_REPORT") %>')" value="삭제"></td>
									</tr>
					<%
								} else {
					%>
									<tr>
										<td width="10%"><%= lst.get(i).get("SALARYCALC_REPORT") %></td>
										<td width="10%"><%= lst.get(i).get("SALARYCALC_NAME") %></td>
										<td width="10%"><%= String.valueOf(lst.get(i).get("SALARYCALC_TOTAL")) %></td>
										<td width="10%"></td>
										<td width="10%"><input type="button" class="btn btn-primary pull-list" onclick="javascript:personalPay('<%= lst.get(i).get("SALARYCALC_REPORT") %>')" value="개인별급여내역"></td>
										<td width="10%"><input type="button" class="btn btn-primary pull-list" onclick="javascript:payConfirmCancel('<%= lst.get(i).get("SALARYCALC_REPORT") %>')" value="확정취소"></td>
										<td width="10%"></td>
									</tr>
					<%
								}
							}
						}
					 %>
				</table>
			</div>
			<div class="btn_group">
				<button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#exampleModal">추가</button>
			</div>
			<div class="pagination-container">
               <nav>
                  <div>
                     <ul class="pagination" id="paging">
                     </ul>
                  </div>
               </nav>
           </div>
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel">추가하기</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
			        <form action="../pay/insertPayroll">
					기준일자(년):<br>
					<input type="text" name="year">
					<br>
					
					기준일자(월):<br>
					<input type="text" name="month">
					<br>
					
					제목:<br>
					<input type="text" name="title">
					<br>
					
					<br>
					<input type="submit" class="btn btn-primary pull-list" value="등록">
					</form>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
			      </div>
			      </div>
				</div>
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