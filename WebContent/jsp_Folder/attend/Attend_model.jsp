<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type = "text/javascript" src ="../../js/jquery.min.js"></script>
<script type = "text/javascript" src ="../../js/jquery-3.3.1.js"></script>
<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#datepicker").datepicker(
			{
				showOn : "both",
				buttonImage: "../../images/btn_calendar.png", 
				buttonImageOnly : true,
				dateFormat : "yy/mm/dd",
				changeMonth : true,
				dayNames : [ '월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일' ],
				dayNamesMin : [ '월', '화', '수', '목', '금', '토', '일' ],
				monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7', '8',	'9', '10', '11', '12' ],
				monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월' ]
			});
	});
</script>
<script>
	$(function() {
		$("#datepicker2").datepicker(
			{
				showOn : "both",
				buttonImage: "../../images/btn_calendar.png", 
				buttonImageOnly : true,
				dateFormat : "yy/mm/dd",
				changeMonth : true,
				dayNames : [ '월요일', '화요일', '수요일', '목요일', '금요일', '토요일',
						'일요일' ],
				dayNamesMin : [ '월', '화', '수', '목', '금', '토', '일' ],
				monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7', '8',
						'9', '10', '11', '12' ],
				monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
						'8월', '9월', '10월', '11월', '12월' ]
			});
	});
</script>
<script>
	$(function() {
		$("#datepicker3").datepicker(
			{
				showOn : "both",
				buttonImage: "../../images/btn_calendar.png", 
				buttonImageOnly : true,
				dateFormat : "yy/mm/dd",
				changeMonth : true,
				dayNames : [ '월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일' ],
				dayNamesMin : [ '월', '화', '수', '목', '금', '토', '일' ],
				monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7', '8',	'9', '10', '11', '12' ],
				monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월' ]
			});
	});
</script>
<script>
	$(function() {
		$("#datepicker4").datepicker(
			{
				showOn : "both",
				buttonImage: "../../images/btn_calendar.png", 
				buttonImageOnly : true,
				dateFormat : "yy/mm/dd",
				changeMonth : true,
				dayNames : [ '월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일' ],
				dayNamesMin : [ '월', '화', '수', '목', '금', '토', '일' ],
				monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7', '8',	'9', '10', '11', '12' ],
				monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월' ]
			});
	});
</script>
<script>
	$(function() {
		$("#datepicker5").datepicker(
			{
				showOn : "both",
				buttonImage: "../../images/btn_calendar.png", 
				buttonImageOnly : true,
				dateFormat : "yy/mm/dd",
				changeMonth : true,
				dayNames : [ '월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일' ],
				dayNamesMin : [ '월', '화', '수', '목', '금', '토', '일' ],
				monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7', '8',	'9', '10', '11', '12' ],
				monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월' ]
			});
	});
</script>
<script>
	$(function() {
		$("#datepicker6").datepicker(
			{
				showOn : "both",
				buttonImage: "../../images/btn_calendar.png", 
				buttonImageOnly : true,
				dateFormat : "yy/mm/dd",
				changeMonth : true,
				dayNames : [ '월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일' ],
				dayNamesMin : [ '월', '화', '수', '목', '금', '토', '일' ],
				monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7', '8',	'9', '10', '11', '12' ],
				monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월' ]
			});
	});
</script>
<script>
	$(function() {
		$("#datepicker7").datepicker(
			{
				showOn : "both",
				buttonImage: "../../images/btn_calendar.png", 
				buttonImageOnly : true,
				dateFormat : "yy/mm/dd",
				changeMonth : true,
				dayNames : [ '월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일' ],
				dayNamesMin : [ '월', '화', '수', '목', '금', '토', '일' ],
				monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7', '8',	'9', '10', '11', '12' ],
				monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월' ]
			});
	});
</script>
<script>
	$(function() {
		$("#datepicker8").datepicker(
			{
				showOn : "both",
				buttonImage: "../../images/btn_calendar.png", 
				buttonImageOnly : true,
				dateFormat : "yy/mm/dd",
				changeMonth : true,
				dayNames : [ '월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일' ],
				dayNamesMin : [ '월', '화', '수', '목', '금', '토', '일' ],
				monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7', '8',	'9', '10', '11', '12' ],
				monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월' ]
			});
	});
</script>
<script>
	$(function() {
		$("#datepicker9").datepicker(
			{
				showOn : "both",
				buttonImage: "../../images/btn_calendar.png", 
				buttonImageOnly : true,
				dateFormat : "yy/mm/dd",
				changeMonth : true,
				dayNames : [ '월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일' ],
				dayNamesMin : [ '월', '화', '수', '목', '금', '토', '일' ],
				monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7', '8',	'9', '10', '11', '12' ],
				monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월' ]
			});
	});
</script>
<script>
	$(function() {
		$("#datepicker10").datepicker(
			{
				showOn : "both",
				buttonImage: "../../images/btn_calendar.png", 
				buttonImageOnly : true,
				dateFormat : "yy/mm/dd",
				changeMonth : true,
				dayNames : [ '월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일' ],
				dayNamesMin : [ '월', '화', '수', '목', '금', '토', '일' ],
				monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7', '8',	'9', '10', '11', '12' ],
				monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월' ]
			});
	});
</script>


<script>
jQuery(function($){
	$('#modal-user_name').footable({
		"useParentWidth": true,
		"columns": $.get('columns.json'),
		"rows": $.get('rows.json')
	});
});
</script>
<script>
jQuery(function($){
	$('#modal-dept_name').footable({
		"useParentWidth": true,
		"columns": $.get('columns.json'),
		"rows": $.get('rows.json')
	});
});
</script>
<script>
jQuery(function($){
	$('#modal-Working_attitude').footable({
		"useParentWidth": true,
		"columns": $.get('columns.json'),
		"rows": $.get('rows.json')
	});
});
</script>
<script>
jQuery(function($){
	$('#modal-Vacation').footable({
		"useParentWidth": true,
		"columns": $.get('columns.json'),
		"rows": $.get('rows.json')
	});
});
</script>


<script>
jQuery(function($){
	$('#modal-Mod1').footable({
		"useParentWidth": true,
		"columns": $.get('columns.json'),
		"rows": $.get('rows.json')
	});
});
</script>
<script>
jQuery(function($){
	$('#modal-Mod2').footable({
		"useParentWidth": true,
		"columns": $.get('columns.json'),
		"rows": $.get('rows.json')
	});
});
</script>
<script>
jQuery(function($){
	$('#modal-Mod3-1').footable({
		"useParentWidth": true,
		"columns": $.get('columns.json'),
		"rows": $.get('rows.json')
	});
});
</script>
<script>
jQuery(function($){
	$('#modal-Mod3-2').footable({
		"useParentWidth": true,
		"columns": $.get('columns.json'),
		"rows": $.get('rows.json')
	});
});
</script>
<script>
jQuery(function($){
	$('#modal-Mod3-3').footable({
		"useParentWidth": true,
		"columns": $.get('columns.json'),
		"rows": $.get('rows.json')
	});
});
</script>
<script>
jQuery(function($){
	$('#modal-Mod4').footable({
		"useParentWidth": true,
		"columns": $.get('columns.json'),
		"rows": $.get('rows.json')
	});
});
</script>
<style>
input {
    vertical-align: middle;
  }
  input.img-button {
    background: url("../../images/btn_Searc.png" ) no-repeat;
    border: none;
    width: 20px;
    height: 20px;
    cursor: pointer;
</style>
<style>/* modal 중앙에 띄우기  */
  .modal {
          text-align: center;
        }
        @media screen and (min-width: 768px) {
          .modal:before {
            display: inline-block;
            vertical-align: middle;
            content: " ";
            height: 100%;
          }
        }
        .modal-dialog {
          display: inline-block;
          text-align: left;
          vertical-align: middle;
        }
</style>
</head>
<body>
	<input type="button" class="img-button" data-toggle="modal" data-target="#Working_attitude">

	<button type="button" class="btn btn-primary " data-toggle="modal" data-target="#mod_Update1">근태항목관리</button>
	<button type="button" class="btn btn-primary " data-toggle="modal" data-target="#mod_Update2">휴가항목관리</button>
	<button type="button" class="btn btn-primary " data-toggle="modal" data-target="#mod_Update3-1">근태조회(전부)</button>
	<button type="button" class="btn btn-primary " data-toggle="modal" data-target="#mod_Update3-2">근태조회(결재중)</button>
	<button type="button" class="btn btn-primary " data-toggle="modal" data-target="#mod_Update3-3">근태조회(결재완료)</button>
	<button type="button" class="btn btn-primary " data-toggle="modal" data-target="#mod_Update4">근태현황</button>
	




		
<div class="modal fade" id="mod_Update1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-body">
				<table id="modal-Mod1" class="table" style="background-color: #eee" data-paging="true" data-filtering="true" data-sorting="true">
					<thead class="thead-dark">
					</thead>
					<tbody>
						<tr>
							<td style="width: 100px">근태코드</td>
							<td>
							<input type="text" class="form-control input-sm pull-left"
							   style="width:98%; height: 50%; display: inline-block">
							</td>
						</tr>
						<tr>
							<td>코드명칭</td>
							<td>
							<input type="text" class="form-control input-sm pull-left"
							   style="width:98%; height: 50%; display: inline-block">
							</td>
						</tr>
						<tr>
							<td>휴가코드</td>
							<td>
							<input type="button" class="img-button" data-toggle="modal" data-target="#Vacation">
							<input type="text" class="form-control input-sm"
							   style="width:90%; height: 50%; display: inline-block">
							</td>
						</tr>
						<tr>
							<td style="vertical-align: middle;">사용여부</td>
							<td>
								<div class="radio pull-left">
									<label> <input type="radio" name="optionsRadios"
										id="optionsRadios1" value="option4" checked> 전체
									</label>
									<label><input type="radio" name="optionsRadios"
										id="optionsRadios2" value="option5" checked> 사용중 
									</label>
									<label> <input type="radio" name="optionsRadios"
										id="optionsRadios3" value="option6" checked> 사용안함
									</label>
								</div>
							</td>
						</tr>
						<tr>
							<td>적요</td>
							<td>
							<input type="text" class="form-control input-sm pull-left"
							   style="width:98%; height: 50%; display: inline-block">
							</td>
						</tr>
						<tr>
							<td colspan="2">
							<button type="button" class="btn btn-primary pull-right" data-dismiss="modal">조회</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="mod_Update2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-body">
				<table id="modal-Mod2" class="table" style="background-color: #eee" data-paging="true" data-filtering="true" data-sorting="true">
					<thead class="thead-dark">
					</thead>
					<tbody>
						<tr>
							<td style="width: 100px">기준일자</td>
							<td class="pull-left">
							<input type="text" id="datepicker" class="form-control input-sm"
								   style="width: 180px; height: 50%; display: inline-block">
							</td>
							<td class="pull-right">
							<input type="text" id="datepicker2" class="form-control input-sm"
							   	   style="width: 180px; height: 50%; display: inline-block">
							   	   &nbsp;&nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td>휴가코드</td>
							<td colspan="2">
							<input type="text" class="form-control input-sm pull-left"
							   style="width:98%; height: 50%; display: inline-block">
							</td>
						</tr>
						<tr>
							<td>휴가명</td>
							<td colspan="2">
							<input type="text" class="form-control input-sm pull-left"
							   style="width:98%; height: 50%; display: inline-block">
							</td>
						</tr>
						<tr>
							<td style="vertical-align: middle;">사용구분</td>
							<td colspan="2">
								<div class="radio pull-left">
									<label> <input type="radio" name="optionsRadios"
										id="optionsRadios1" value="option4" checked> 전체
									</label>
									<label><input type="radio" name="optionsRadios"
										id="optionsRadios2" value="option5" checked> 사용중 
									</label>
									<label> <input type="radio" name="optionsRadios"
										id="optionsRadios3" value="option6" checked> 사용안함
									</label>
								</div>
							</td>
						</tr>
						<tr>
							<td>적요</td>
							<td colspan="2">
							<input type="text" class="form-control input-sm pull-left"
							   style="width:98%; height: 50%; display: inline-block">
							</td>
						</tr>
						<tr>
							<td colspan="4">
							<button type="button" class="btn btn-primary pull-right" data-dismiss="modal">조회</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="mod_Update3-1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-body">
				<table id="modal-Mod3-1" class="table" style="background-color: #eee" data-paging="true" data-filtering="true" data-sorting="true">
					<thead class="thead-dark">
					</thead>
					<tbody>
						<tr>
							<td style="width: 100px">기준일자</td>
							<td class="pull-left">
							<input type="text" id="datepicker3" class="form-control input-sm"
								   style="width: 180px; height: 50%; display: inline-block">
							</td>
							<td class="pull-right">
							<input type="text" id="datepicker4" class="form-control input-sm"
							   	   style="width: 180px; height: 50%; display: inline-block">
							   	   &nbsp;&nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td>사원</td>
							<td>
							<input type="button" class="img-button" data-toggle="modal" data-target="#user_name">
							<input type="text" class="form-control input-sm"
							   style="width:90%; height: 50%; display: inline-block">
							</td>
						</tr>
						<tr>
							<td>부서</td>
							<td>
							<input type="button" class="img-button" data-toggle="modal" data-target="#dept_name">
							<input type="text" class="form-control input-sm"
							   style="width:90%; height: 50%; display: inline-block">
							</td>
						</tr>
						<tr>
							<td>프로젝트</td>
							<td>
								<div class="radio pull-left">
									<label> <input type="radio" name="optionsRadios"
										id="optionsRadios1" value="option4" checked> 전체
									</label>
									<label><input type="radio" name="optionsRadios"
										id="optionsRadios2" value="option5" checked> 사용 
									</label>
									<label> <input type="radio" name="optionsRadios"
										id="optionsRadios3" value="option6" checked> 사용안함
									</label>
								</div>
							</td>
						</tr>
						<tr>
							<td>근태항목</td>
							<td>
							<input type="button" class="img-button" data-toggle="modal" data-target="#Working_attitude">
							<input type="text" class="form-control input-sm"
							   style="width:90%; height: 50%; display: inline-block">
							</td>
						</tr>
						<tr>
							<td>휴가항목</td>
							<td>
							<input type="button" class="img-button" data-toggle="modal" data-target="#Vacation">
							<input type="text" class="form-control input-sm "
							   style="width:90%; height: 50%; display: inline-block">
							</td>
						</tr>
						<tr>
							<td colspan="2">
							<button type="button" class="btn btn-primary pull-right" data-dismiss="modal">조회</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="mod_Update3-2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-body">
				<table id="modal-Mod3-2" class="table" style="background-color: #eee" data-paging="true" data-filtering="true" data-sorting="true">
					<thead >
					</thead>
					<tbody>
						<tr>
							<td style="width: 100px">기준일자</td>
							<td class="pull-left">
							<input type="text" id="datepicker5" class="form-control input-sm"
								   style="width: 180px; height: 50%; display: inline-block">
							</td>
							<td class="pull-right">
							<input type="text" id="datepicker6" class="form-control input-sm"
							   	   style="width: 180px; height: 50%; display: inline-block">
							   	   &nbsp;&nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td>사원</td>
							<td>
							<input type="button" class="img-button" data-toggle="modal" data-target="#user_name">
							<input type="text" class="form-control input-sm"
							   style="width:90%; height: 50%; display: inline-block">
							</td>
						</tr>
						<tr>
							<td>부서</td>
							<td>
							<input type="button" class="img-button" data-toggle="modal" data-target="#dept_name">
							<input type="text" class="form-control input-sm"
							   style="width:90%; height: 50%; display: inline-block">
							</td>
						</tr>
						<tr>
							<td>프로젝트</td>
							<td>
								<div class="radio pull-left">
									<label> <input type="radio" name="optionsRadios"
										id="optionsRadios1" value="option4" checked> 전체
									</label>
									<label><input type="radio" name="optionsRadios"
										id="optionsRadios2" value="option5" checked> 사용 
									</label>
									<label> <input type="radio" name="optionsRadios"
										id="optionsRadios3" value="option6" checked> 사용안함
									</label>
								</div>
							</td>
						</tr>
						<tr>
							<td>근태항목</td>
							<td>
							<input type="button" class="img-button" data-toggle="modal" data-target="#Working_attitude">
							<input type="text" class="form-control input-sm"
							   style="width:90%; height: 50%; display: inline-block">
							</td>
						</tr>
						<tr>
							<td>휴가항목</td>
							<td>
							<input type="button" class="img-button" data-toggle="modal" data-target="#Vacation">
							<input type="text" class="form-control input-sm "
							   style="width:90%; height: 50%; display: inline-block">
							</td>
						</tr>
						<tr>
							<td colspan="2">
							<button type="button" class="btn btn-primary pull-right" data-dismiss="modal">조회</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="mod_Update3-3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-body">
				<table id="modal-Mod3-3" class="table" style="background-color: #eee" data-paging="true" data-filtering="true" data-sorting="true">
					<thead>
					</thead>
					<tbody>
						<tr>
							<td style="width: 100px">기준일자</td>
							<td class="pull-left">
							<input type="text" id="datepicker7" class="form-control input-sm"
								   style="width: 180px; height: 50%; display: inline-block">
							</td>
							<td class="pull-right">
							<input type="text" id="datepicker8" class="form-control input-sm"
							   	   style="width: 180px; height: 50%; display: inline-block">
							   	   &nbsp;&nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td>사원</td>
							<td>
							<input type="button" class="img-button" data-toggle="modal" data-target="#user_name">
							<input type="text" class="form-control input-sm"
							   style="width:90%; height: 50%; display: inline-block">
							</td>
						</tr>
						<tr>
							<td>부서</td>
							<td>
							<input type="button" class="img-button" data-toggle="modal" data-target="#dept_name">
							<input type="text" class="form-control input-sm"
							   style="width:90%; height: 50%; display: inline-block">
							</td>
						</tr>
						<tr>
							<td>프로젝트</td>
							<td>
								<div class="radio pull-left">
									<label> <input type="radio" name="optionsRadios"
										id="optionsRadios1" value="option4" checked> 전체
									</label>
									<label><input type="radio" name="optionsRadios"
										id="optionsRadios2" value="option5" checked> 사용 
									</label>
									<label> <input type="radio" name="optionsRadios"
										id="optionsRadios3" value="option6" checked> 사용안함
									</label>
								</div>
							</td>
						</tr>
						<tr>
							<td>근태항목</td>
							<td>
							<input type="button" class="img-button" data-toggle="modal" data-target="#Working_attitude">
							<input type="text" class="form-control input-sm"
							   style="width:90%; height: 50%; display: inline-block">
							</td>
						</tr>
						<tr>
							<td>휴가항목</td>
							<td>
							<input type="button" class="img-button" data-toggle="modal" data-target="#Vacation">
							<input type="text" class="form-control input-sm "
							   style="width:90%; height: 50%; display: inline-block">
							</td>
						</tr>
						<tr>
							<td colspan="2">
							<button type="button" class="btn btn-primary pull-right" data-dismiss="modal">조회</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="mod_Update4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-body">
				<table id="modal-Mod4" class="table" style="background-color: #eee" data-paging="true" data-filtering="true" data-sorting="true">
					<thead>
					</thead>
					<tbody>
						<tr>
							<td style="width: 100px">기준일자</td>
							<td class="pull-left">
							<input type="text" id="datepicker9" class="form-control input-sm"
								   style="width: 180px; height: 50%; display: inline-block">
							</td>
							<td class="pull-right">
							<input type="text" id="datepicker10" class="form-control input-sm"
							   	   style="width: 180px; height: 50%; display: inline-block">
							   	   &nbsp;&nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td>사원</td>
							<td>
							<input type="button" class="img-button" data-toggle="modal" data-target="#user_name">
							<input type="text" class="form-control input-sm"
							   style="width:90%; height: 50%; display: inline-block">
							</td>
						</tr>
						<tr>
							<td>부서</td>
							<td>
							<input type="button" class="img-button" data-toggle="modal" data-target="#dept_name">
							<input type="text" class="form-control input-sm"
							   style="width:90%; height: 50%; display: inline-block">
							</td>
						</tr>
						<tr>
							<td>프로젝트</td>
							<td>
								<div class="radio pull-left">
									<label> <input type="radio" name="optionsRadios"
										id="optionsRadios1" value="option4" checked> 전체
									</label>
									<label><input type="radio" name="optionsRadios"
										id="optionsRadios2" value="option5" checked> 사용 
									</label>
									<label> <input type="radio" name="optionsRadios"
										id="optionsRadios3" value="option6" checked> 사용안함
									</label>
								</div>
							</td>
						</tr>
						<tr>
							<td>근태항목</td>
							<td>
							<input type="button" class="img-button" data-toggle="modal" data-target="#Working_attitude">
							<input type="text" class="form-control input-sm"
							   style="width:90%; height: 50%; display: inline-block">
							</td>
						</tr>
						<tr>
							<td>휴가항목</td>
							<td>
							<input type="button" class="img-button" data-toggle="modal" data-target="#Vacation">
							<input type="text" class="form-control input-sm "
							   style="width:90%; height: 50%; display: inline-block">
							</td>
						</tr>
						<tr>
							<td colspan="2">
							<button type="button" class="btn btn-primary pull-right" data-dismiss="modal">조회</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>


















<div class="modal fade" id="Working_attitude" tabindex="-2" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-body">
				<table id="modal-Working_attitude" class="table table-striped" data-paging="true" data-filtering="true" data-sorting="true">
					<thead style="background-color: #4F81BD; color: #fff">
						<tr>
							<td>근태 코드</td>
							<td>근태 코드 명</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>&nbsp</td>
							<td>&nbsp</td>
						</tr>
						<tr>
							<td>&nbsp</td>
							<td>&nbsp</td>
						</tr>
						<tr>
							<td>&nbsp</td>
							<td>&nbsp</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="user_name" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-body">
				<table id="modal-user_name" class="table table-striped" data-paging="true" data-filtering="true" data-sorting="true">
					<thead style="background-color: #4F81BD; color: #fff">
						<tr>
							<td>소속부서</td>
							<td>성명</td>
							<td>ID</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>&nbsp</td>
							<td>&nbsp</td>
							<td>&nbsp</td>
						</tr>
						<tr>
							<td>&nbsp</td>
							<td>&nbsp</td>
							<td>&nbsp</td>
						</tr>
						<tr>
							<td>&nbsp</td>
							<td>&nbsp</td>
							<td>&nbsp</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="dept_name" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-body">
				<table id="modal-dept_name" class="table table-striped" data-paging="true" data-filtering="true" data-sorting="true">
					<thead style="background-color: #4F81BD; color: #fff">
						<tr>
							<td>부서코드</td>
							<td>부서 명</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>&nbsp</td>
							<td>&nbsp</td>
						</tr>
						<tr>
							<td>&nbsp</td>
							<td>&nbsp</td>
						</tr>
						<tr>
							<td>&nbsp</td>
							<td>&nbsp</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="Vacation" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-body">
				<table id="modal-Vacation" class="table table-striped" data-paging="true" data-filtering="true" data-sorting="true">
					<thead style="background-color: #4F81BD; color: #fff">
						<tr>
							<td>휴가코드</td>
							<td>휴가명</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>&nbsp</td>
							<td>&nbsp</td>
						</tr>
						<tr>
							<td>&nbsp</td>
							<td>&nbsp</td>
						</tr>
						<tr>
							<td>&nbsp</td>
							<td>&nbsp</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>
</body>
</html>