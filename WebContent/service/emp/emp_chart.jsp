<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emp_mainpage</title>
<%@ include file="../common/ui_common.jsp" %>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<script type="text/javascript">
window.onload = function() {
 
var dps = [[]];
var chart = new CanvasJS.Chart("chartContainer", {
	theme: "light2", // "light1", "dark1", "dark2"
	exportEnabled: true,
	animationEnabled: true,
	title: {
		text: "부서별 인원현황"
	},
	data: [{
		type: "pie",
		showInLegend: "true",
		legendText: "{label}",
		yValueFormatString: "#,###\"%\"",
		indexLabelFontSize: 16,
		indexLabel: "{label} - {y}",
		dataPoints: dps[0]
	}]
});
 
var yValue;
var label;
 
<c:forEach items="${dataPointsList}" var="dataPoints" varStatus="loop">	
	<c:forEach items="${dataPoints}" var="dataPoint">
		yValue = parseFloat("${dataPoint.y}");
		label = "${dataPoint.label}";
		dps[parseInt("${loop.index}")].push({
			label : label,
			y : yValue,
		});		
	</c:forEach>	
</c:forEach> 
 
chart.render();
}
</script>
</head>
<body>
<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container">		
		<%@ include file="../common/left_menu_emp.jsp" %>
		<div class="contents">
			<div id="chartContainer" style="height: 370px; width: 100%;"></div>
			
		</div>
	</div>
</body>
</html>