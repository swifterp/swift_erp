<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">

<title>Insert title here</title>
<style type="text/css">
   .td{
      background-color: rgba(255,255,255,0);
      border: 0;
   }
</style>
<script>
   function order(){
      var Order = document.getElementById('order').value;
         if(Order == "정렬순서 ▼"){
            $('#order').val("정렬순서 ▲");
         }else{
            $('#order').val("정렬순서 ▼");
         }
   }
</script>
<script type="text/javascript">
   function form_name(){
      var Form_name = document.getElementById('form_name').value;
         if(Form_name == "양식명 ▼"){
            $('#form_name').val("양식명 ▲");
         }else{
            $('#form_name').val("양식명 ▼");
         }
   }
</script>
<script>
   function division(){
      var Division = document.getElementById('division').value;
         if(Division == "구분 ▼"){
            $('#division').val("구분 ▲");
         }else{
            $('#division').val("구분 ▼");
         }
   }
</script>
<script>
var col = 4;
var row = 200;
$(function(){
   $('#lbTable').empty();
   var styTable = "<table class='table table-bordered table-striped' id='mytable' width='1000px'>";
      for(var i=0; i<row; i++){
         styTable += "<tr>";
         for(var j=0; j<col; j++){
            if(i == 0){
               if(j == 0){
               styTable += "<td width='15%'>"+ "00" + "</td>"
               }
               if(j == 1){
               styTable += "<td width='45%'>"+ "기본양식" + "</td>"
               }
               if(j == 2){
               styTable += "<td width='25%'>"+ "&nbsp;" + "</td>"
               }
               if(j == 3){
               styTable += "<td width='15%'>"+ "&nbsp;" + "</td>"
               }
            }
            else{
               if(j == 0){
               styTable += "<td width='10%'>"+ (+i) + "</td>"
               }
               if(j == 1){
               styTable += "<td width='45%'>"+ "명" + "</td>"
               }
               if(j == 2){
               styTable += "<td width='25%'>"+ "구분" + "</td>"
               }
               if(j == 3){
               styTable += "<td width='15%'>"+ "전표명" + "</td>"
               }
            }
         }
         styTable += "</tr>";
      }
      styTable += "</table>"
   $('#lbTable').append(styTable);
   
});
</script>

</head>
<body>
<!-- 네비게이션 -->
   <nav class="navbar navbar-default" style="z-index: 1">
      <!-- 네비게이션 헤더-->
      <div class="navbar-header">
         <!-- 네비게이션 오른쪽 헤더-->
         <button type="button" class="navbar-toggle collapsed"
            data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
            aria-expanded="false">
            <span class="icon-bar"></span> <span class="icon-bar"></span> <span
               class="icon-bar"></span>
         </button>
         <!-- 네비게이션 왼쪽 헤더(로고) -->
         <a class="navbar-brand" href="../welcome/welcome.jsp">
         <img class="logo" src="../../images/logo.png"></a>
      </div>
      
      <!-- 네비게이션 본메뉴 -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
         <!-- 네비게이션 본메뉴 엘리먼트 -->
         <ul class="nav navbar-nav">
            <li><a href="../emp/Emp_memList.jsp">인사관리</a></li>
            <li><a href="../pay/Allowance_Item.jsp">급여관리</a></li>         
            <li><a href="../attend/Attend_Item_Manage.jsp">근태관리</a></li>
            <li><a href="#">결재관리</a></li>
            <li><a href="../work/Work_taskUpdate.jsp">업무관리</a></li>
            <li><a href="../customer/Customer_List.jsp">고객관리</a></li>
         </ul>
         <!-- 드롭다운 기능 -->
         <ul class="nav navbar-nav navbar-right">
            <!-- 드롭다운 -->
            <li class="dropdown">
               <!-- 누르기전 이미지 --> <a href="#" class="dropdown-toggle"
               data-toggle="dropdown" role="button" aria-haspopup="true"
               aria-expanded="false">회원관리<span class="caret"></span>
            </a> <!-- 눌렀을때 이미지 -->
               <ul class="dropdown-menu">
                  <li><a href="login.jsp">로그아웃</a></li>
               </ul>
            </li>
         </ul>
      </div>
   </nav>
   <div class="container">
      <!-- 왼쪽 네비게이션 -->
      <nav class="nav-left">
         <ul class="bg-primary">
            <a class="active" href="#">기안서 작성</a>
            <a href="My_Progress.jsp">내 결재관리</a>
            <a href="Integrated_Progress.jsp">기안서 통합관리</a>
            <li>
               <a data-toggle="collapse"
                  data-target="#group1" aria-expanded="false" href="Payment_line.jsp">기초자료등록</a>
               <ul class="collapse depth2" id="group3">
                  <li><a href="Payment_line.jsp ">결재라인등록</a></li>
                  <li><a href="Common_form.jsp ">공통양식등록</a></li>
               </ul>
            </li>
         </ul>
      </nav>
   </div>
   <div style="width: 1000px"  class="contents">
      <div class="form-group">
         <select name="state" id="maxRows" class="form-control" style="width: 150px">
            <option value="5000">Show All</option>
            <option value="5">5</option>
            <option value="10">10</option>
            <option value="15">15</option>
            <option value="20">20</option>
            <option value="50">50</option>
            <option value="75">75</option>
            <option value="100">100</option>
         </select>
      </div>
      <table class="table">
         <thead>
            <tr>
               <th width='15%'>
                  <input type="button" class="td" onclick="order();"      id="order"    value="정렬순서 ▼">
               </th>
               <th width='45%'>
                    <input type="button" class="td" onclick="form_name();"      id="form_name"    value="양식명 ▼">
               </th>
               <th width='25%'>
                  <input type="button" class="td" onclick="division();" id="division" value="구분 ▼">
               </th>
               <td width='15%'>ERP전표</td>
            </tr>
         </thead>
         <tbody>
         </tbody>
      </table>
      <div id="lbTable"></div>
      <div class="pagination-container">
         <nav>
            <ul class="pagination">
            </ul>
         </nav>
      </div>
   </div>
   
   <script type="text/javascript" src ="../../js/jquery.min.js"></script>
   <script type = "text/javascript" src ="../../js/bootstrap.js"></script>
   <script type="text/javascript">
   var table = '#mytable'
   $('#maxRows').on('change', function(){
      $('.pagination').html('')
      var trnum=0
      var maxRows = parseInt($(this).val())
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
         for(var i=1; i<=pagenum;){
            $('.pagination').append('<li data-page="'+i+'"><span>'+
             i++ +'<span class="sr-only">(current)</span></span></li>').show()
         }
      }
      $('.pagination li:first-child').addClass('active')
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
   $(function(){
      $('table tr:eq(1)').prepend('<td></td>')
      var id=0;
      $('table tr:gt(0)').each(function(){
         id++
         $(this).prepend('<td>'+id+'</td>')
      })
   })
   </script>
</body>
</html>