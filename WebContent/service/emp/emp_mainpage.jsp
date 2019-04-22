
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
      location.href = "../pay/allowNdeduc";
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

<style>
table tr:hover {background:#fefefe;}
</style>
</head>
<body>
<%   List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
   <%@ include file="../common/top_menu.jsp" %>
   <div class="container">      
      <%@ include file="../common/left_menu_emp.jsp" %>
      <div class="contents">
         <h1>사원목록</h1>
         <form action="../emp/empSearchNumName">
            <div class="input-group" style="float:left;">
               <input type="text" class="form-control" id="empinfo" name="empinfo" placeholder="성명 또는 부서">
               <span class="input-group-btn" style="width:100px;">
                  <button type="submit" class="btn btn-default" style="margin-bottom:20px;">검색</button>
               </span>
            </div>
         </form>
         <form action="../emp/retiredemp">
            <button type="submit" class="btn btn-outline-secondary" style="float:right;">퇴사자명단</button>
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
                  <td><a onclick="javascript:empView(<%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %>)"><%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %></a></td>
                  <td><a onclick="javascript:empView(<%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %>)"><%= lst.get(i).get("EMP_NAME") %></a></td>
                  <td><%= lst.get(i).get("EMP_RESIDENT_NUMBER") %></td>
                  <td><%= lst.get(i).get("DNAME") %></td>
                  <td><%= lst.get(i).get("RANK_NAME") %></td>
                  <td><%= lst.get(i).get("EMP_JOIN_DATE") %></td>
                  <td><a onclick="javascript:empView(<%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %>)" href="#" class="btn btn-default">수정</a></td>
                  <td><a onclick="javascript:empDel(<%= String.valueOf(lst.get(i).get("EMP_NUMBER")) %>)" href="#" class="btn btn-default">삭제</a></td>
               </tr>
               <%
                     }
                  }
                %>
             </tbody>
         </table>
		<div class="pagination-container" style="float:left;">
			<nav>
				<div>
					<ul class="pagination" id="paging"></ul>
				</div>
			</nav>
         </div>
         <div class="btn_group" style="float:right">
            <a class="btn btn-outline-primary" onclick="javascript:goEmpAdd()">사원등록</a>
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
      var totalRows = $(table+' tbody tr').length; //총 데이터 수
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