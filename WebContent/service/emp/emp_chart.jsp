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

</head>
<body>
<%	List<Map<String, String>> sess = (List<Map<String, String>>)request.getSession().getAttribute("member"); %>
<input type="hidden" id="hidempno" name="<%= String.valueOf(sess.get(0).get("EMPNO")) %>">
	<%@ include file="../common/top_menu.jsp" %>
	<div class="container" style="padding-top:20px;">		
		<%@ include file="../common/left_menu_emp.jsp" %>
		<div class="contents">
			<div id="chartContainer" style="width:400px; height:auto; float:left;"></div>
			<div id="chartContainer2" style="width:400px; height:auto; float:right;"></div>
		</div>
	</div>
	<script type="text/javascript">
var dps = [[]];
var chart = new CanvasJS.Chart("chartContainer", {
	theme: "light2", // "light1", "dark1", "dark2"
	exportEnabled: true,
	animationEnabled: true,
	title: {
		text: "부서별 인원현황",  fontSize:22
	},
	data: [{
		type: "pie",
		showInLegend: "true",
		legendText: "{label}",
		yValueFormatString: "#,###\"%\"",
		indexLabelFontSize: 15,
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
</script>
<script type="text/javascript">
var dps2 = [[]];
var chart2 = new CanvasJS.Chart("chartContainer2", {
	theme: "light2", // "light1", "dark1", "dark2"
	exportEnabled: true,
	animationEnabled: true,
	title: {
		text: "최근5년간 입사자 변동 비율",  fontSize:22
	},
	subtitles: [{
		text: "2014 - 2019"
	}],
	axisX: {
		valueFormatString: "####"
	},
	axisY: {
		title: "Volume (in million carats)"
	},
	data: [{
		type: "spline",
		xValueFormatString: "####",
		yValueFormatString: "#,##0.0 million carats",
		dataPoints: dps2[0]
	
	}]
});
 
var xValue2;
var yValue2;
 
<c:forEach items="${dataPointsList2}" var="dataPoints2" varStatus="loop2">	
	<c:forEach items="${dataPoints2}" var="dataPoint2">
		xValue2 = parseInt("${dataPoint2.x}");
		yValue2 = parseFloat("${dataPoint2.y}");
		dps2[parseInt("${loop2.index}")].push({
			x : xValue2,
			y : yValue2
		});		
	</c:forEach>	
</c:forEach> 
 
chart2.render();

</script>
</body>
</html>