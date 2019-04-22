<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 왼쪽 네비게이션 -->
	<nav class="nav-left">	
		<ul class="bg-primary">
			<li>
				<a href="../pay/allowance">수당항목</a>
				<a href="../pay/deduction">공제항목</a>
				<a href="../pay/payroll">급여계산/대장</a>
				<a href="../pay/underyearSearch">1년미만자상여지급률</a>
				<a href="../pay/dailyworkList?year=0&month=0&day=0">일별근무기록</a> <!-- request parameter 변경 -->
				<a href="../pay/selectworkconfirm?year=0&month=0&day=0">근무기록확정</a> <!-- request parameter 변경 -->
			</li>
		</ul>
	</nav>
</body>
</html>