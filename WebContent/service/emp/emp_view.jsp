<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emp_mainpage</title>

</head>
<body>
	<div class="container">
		<div class="contents">
			<form  action="../emp/update">
			<table class="table table-striped">
				<colgroup>
					<col width="20%" />
					<col width="10%" />
					<col width="25%" />
					<col width="10%" />
					<col width="35%" />
				</colgroup>
				<tbody>
					<tr>
						<td rowspan="4">
							<img style="width:140px; heigth:auto;" src="../../images/profile_0.png"/>
						</td>	
						<td>사원번호</td>
						<td><input type="text" name="emp_number" class="form-control" value="${list.get(0).get("EMP_NUMBER")}" readonly="readonly"></td>
						<td>사원명</td>
						<td><input type="text" name="emp_name" class="form-control" value="${list.get(0).get("EMP_NAME")}" ></td>
					</tr>
					<tr>	
						<td>주민번호</td>
						<td><input type="text" name="emp_resident_number" class="form-control" value="${list.get(0).get("EMP_RESIDENT_NUMBER")}"></td>
						<td>이메일</td>
						<td><input type="email" name="emp_email" class="form-control" value="${list.get(0).get("EMP_EMAIL")}"></td>
					</tr>
					<tr>	
						<td>전화번호</td>
						<td><input type="text" name="emp_tel" class="form-control" value="${list.get(0).get("EMP_TEL")}"></td>
						<td>모바일</td>
						<td><input type="text" name="emp_mobile" class="form-control" value="${list.get(0).get("EMP_MOBILE")}"></td>
					</tr>
					<tr>	
						<td>주소</td>
						<td class="input-group">
							<input class="form-control" value="${list.get(0).get("EMP_ADDR1")}" name="emp_addr1" id="emp_addr1" type="text" readonly="readonly" style="display:inline-block; width:" >
							<span class="input-group-btn">
								<button type="button" class="btn btn-default" onclick="execPostCode();">검색</button> 
							</span>
						</td>
						<td colspan="2"><input class="form-control" value="${list.get(0).get("EMP_ADDR2")}" name="emp_addr2" id="emp_addr2" type="text" readonly="readonly" /></td>
					</tr>
					<tr>
						<table class="table table-striped">
							<colgroup>
								<col width="50px" />
								<col width="120px" />
								<col width="50px" />
								<col width="120px" />
								<col width="50px" />
								<col width="120px" />
							</colgroup>
							<tbody>
								<tr>
									<td>입사일자</td>
									<td>	
										<input type="text" name="emp_join_date" class="form-control" id="datepicker" value="${list.get(0).get("EMP_JOIN_DATE")}" style="width:80%; display:inline-block; margin-right:5px;">
									</td>
									<td>퇴사일자</td>
									<td>		
										<input type="text" name="emp_retire_date" class="form-control" id="datepicker2" value="${list.get(0).get("EMP_RETIRE_DATE")}" style="width:80%; display:inline-block; margin-right:5px;">
									</td>
									<td>퇴사사유</td>
									<td><input type="text" name="emp_retire_reason" class="form-control" value="${list.get(0).get("EMP_RETIRE_REASON")}"></td>
								</tr>
								<tr>
									<td>부서</td>
									<td class="input-group">
										<input type="text" name="deptno" class="form-control" value="${list.get(0).get("DNAME")}">
										<span class="input-group-btn">
											 <button class="btn btn-default" type="button" data-toggle="modal" data-target="#exampleModal">Go!</button>
										</span>
									</td>
									<td>직급</td>
									<td class="input-group">
										<input type="text" name="rank_no" class="form-control" value="${list.get(0).get("RANK_NAME")}">
										<span class="input-group-btn">
											 <button class="btn btn-default" type="button">Go!</button>
										</span>
									</td>
									<td>직책</td>
									<td class="input-group">
										<input type="text" name="duty_no" class="form-control" value="${list.get(0).get("DUTY_NAME")}">
										<span class="input-group-btn">
											 <button class="btn btn-default" type="button">Go!</button>
										</span>
									</td>
								</tr>
								<tr>
									<td>은행명</td>
									<td class="input-group">
										<input type="text" name="bank_no" class="form-control" value="${list.get(0).get("BANK_NAME")}">
										<span class="input-group-btn">
											 <button class="btn btn-default" type="button">Go!</button>
										</span>
									</td>
									<td>계좌번호</td>
									<td><input type="text" name="emp_account_num" class="form-control" value="${list.get(0).get("EMP_ACCOUNT_NUM")}"></td>
									<td>예금주</td>
									<td><input type="text" name="emp_account_holder" class="form-control" value="${list.get(0).get("EMP_ACOUNT_HOLDER")}"></td>
								</tr>
								<tr>
									<td>사진첨부</td>		
									<td colspan="5">
										<input type="file" name="emp_profile" class="form-control" value="${list.get(0).get("EMP_PROFILE")}">
									</td>
								</tr>
								<tr>
									<td>첨부파일</td>
									<td colspan="5">
										<input type="file" class="form-control" name="emp_attach_file" value="${list.get(0).get("EMP_ATTACH_FILE")}">
									</td>
								</tr>
								<tr>
									<td>비고</td>
									<td colspan="5"><textarea class="form-control" name="emp_etc" value="${list.get(0).get("EMP_ETC")}"></textarea></td>
								</tr>
							</tbody>
						</table>
					</tr>
				</tbody>
			</table>
			<div class="btn_group">
				<a href="../emp/read" class="btn btn-primary pull-left">목록</a>
				<input type="submit" value="수정완료">
			</div>
		</form>
			<!-- Button trigger modal -->
		</div>
	</div>
</body>
</html>