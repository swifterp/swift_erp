<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<script type = "text/javascript" src ="../../js/jquery.min.js"></script>
<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
<!-- �ּ�api -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<script>
	function execPostCode() {
		    new daum.Postcode({
		        oncomplete: function(data) {
		           // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.
		
		           // ���θ� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
		           // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
		           var fullRoadAddr = data.roadAddress; // ���θ� �ּ� ����
		           var extraRoadAddr = ''; // ���θ� ������ �ּ� ����
		
		           // ���������� ���� ��� �߰��Ѵ�. (�������� ����)
		           // �������� ��� ������ ���ڰ� "��/��/��"�� ������.
		           if(data.bname !== '' && /[��|��|��]$/g.test(data.bname)){
		               extraRoadAddr += data.bname;
		           }
		           // �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
		           if(data.buildingName !== '' && data.apartment === 'Y'){
		              extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		           }
		           // ���θ�, ���� ������ �ּҰ� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
		           if(extraRoadAddr !== ''){
		               extraRoadAddr = ' (' + extraRoadAddr + ')';
		           }
		           // ���θ�, ���� �ּ��� ������ ���� �ش� ������ �ּҸ� �߰��Ѵ�.
		           if(fullRoadAddr !== ''){
		               fullRoadAddr += extraRoadAddr;
		           }
		
		           // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
		           console.log(data.zonecode);
		           console.log(fullRoadAddr);
		           
		           
		           $("[name=mem_addr1]").val(data.zonecode);
		           $("[name=mem_addr2]").val(fullRoadAddr);
		           
		           /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5�ڸ� �������ȣ ���
		           document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
		           document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
		       }
		    }).open();
	}
</script>
<style>
    body {background:url('../../images/bg.jpg') no-repeat 0 #FFF; font-size:13px;}
	.container {background-color:white; margin:100px auto; width:400px; padding:20px; border-radius: 1rem;}
	table {border:none;}
</style>
</head>
<body class="text-center">
	<div class="container">
		<form action="../../mem/add">
			<table class="table table-striped">
				<colgroup>
					<col width="30%" />
					<col width="70%" />
				</colgroup>
				<tbody>
					<tr>
						<td>�̸��� *</td>
						<td class="input-group">
							<input type="text" name="mem_email_id" class="form-control" placeholder="�̸��Ͼ��̵�">
							<span class="input-group-btn">
								<button type="button" class="btn btn-info">��������</button> 
							</span>
						</td>
					</tr>
					<tr>
						<td rowspan="2">��й�ȣ *</td>
						<td><input type="text" name="mem_pw" class="form-control" placeholder="��й�ȣ"></td>
					</tr>
					<tr>
						<td><input type="text" name="mem_pw_check" class="form-control" placeholder="��й�ȣ Ȯ��"></td>
					</tr>
					<tr>	
						<td>�̸� *</td>
						<td><input type="text" name="mem_name" class="form-control" placeholder="�̸�"></td>
					</tr>
					<tr>
						<td>�޴�����ȣ *</td>
						<td class="input-group">
							<input type="text" name="mem_mobile" class="form-control" placeholder="-���� �Է�">
							<span class="input-group-btn">
								<button type="button" class="btn btn-info">������ȣ �ޱ�</button> 
							</span>
						</td>
					</tr>
					<tr>	
						<td rowspan="2">�ּ�</td>
						<td class="input-group">
							<input class="form-control" placeholder="�����ȣ" name="mem_addr1" id="mem_addr1" type="text" readonly="readonly" style="display:inline-block; width:" >
							<span class="input-group-btn">
								<button type="button" class="btn btn-info" onclick="execPostCode();">�ּҰ˻�</button> 
							</span>
						</td>
					</tr>
					<tr>
						<td><input class="form-control" placeholder="���θ� �ּ�" name="mem_addr2" id="mem_addr2" type="text" readonly="readonly" /></td>
					</tr>
					<tr>
						<td>��ȭ</td>
						<td><input type="text" name="mem_tel" class="form-control" placeholder="��ȭ��ȣ"></td>
					</tr>
				</tbody>
			</table>
			<a href="login.jsp" class="btn btn-default">���</a>
			<input type="submit" class="btn btn-primary" value="��ϿϷ�">
		</form>
	</div>
</body>
</html>