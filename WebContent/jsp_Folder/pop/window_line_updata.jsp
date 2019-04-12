<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부서목록</title>
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style>
	.th{
		background-color: #4F81BD;
		color: #fff;
	}
</style>
<script language="javascript">
function javascript(){
    self.close();   //자기자신창을 닫습니다.
}
</script>
</head>
<body>
<div style="padding: 10px 10px 10px 10px">
	<div style="padding: 10px 10px 10px 10px">
		결재라인명칭&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" class="" style="width: inherit; text-align: left;">
	</div>
	<table class="table table-striped" data-sorting="true" >
		<thead class="thead-dark">
			<tr>
				<th class="th">계정코드</th>
				<th class="th">계정명</th>
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
	<div class="modal-footer">
		<button type="button" class="btn btn-primary" onclick="javascript();">닫기</button>
	</div>
</div>
</body>
</html>