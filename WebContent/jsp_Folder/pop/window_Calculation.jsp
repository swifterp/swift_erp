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
	.type{
		width: 100px;
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
	<table class="table table-striped" data-sorting="true" >
		<thead class="thead-dark">
			<tr>
				<th class="th" colspan="2">계산내역등록</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>A01</td>
				<td>기본급</td>
			</tr>
			<tr>
				<td>A02</td>
				<td>야근수당</td>
			</tr>
		</tbody>
	</table>
	<br>
	<table class="table table-striped" data-sorting="true" >
		<tbody>
			<tr>
				<td><input type="button" class="type" value="괄호 )"></td>
				<td><input type="button" value="괄호 ("></td>
				<td><input type="button" value="더하기 +"></td>
				<td><input type="button" value="빼기-"></td>
			</tr>
			<tr>
				<td><input type="button" value="곱하기 *"></td>
				<td><input type="button" value="나누기 /"></td>
				<td><input type="button" value="반올림 R"></td>
				<td><input type="button" value="절상 C"></td>
			</tr>
			<tr>
				<td><input type="button" value="절사 F"></td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
		</tbody>
	</table>
	<div class="modal-footer">
		<button type="button" class="btn btn-primary" onclick="javascript();">닫기</button>
	</div>
</div>
</body>
</html>