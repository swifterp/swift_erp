<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"">
<title>Insert title here</title>
<%@ include file="../common/ui_common.jsp" %>
<script type="text/javascript" src="../../js/jquery.timepicker.min.js" ></script><!-- 타이머js -->
<link type="text/css" rel="stylesheet" href="../../css/jquery.timepicker.css" media=""/><!-- 타이머css -->
 
<script type="text/javascript">
    $(document).ready(function() {
        // INPUT 박스에 들어간 ID값을 적어준다.
        $("#START_TIME,#END_TIME").timepicker({
            'minTime': '09:00am', // 조회하고자 할 시작 시간 ( 09시 부터 선택 가능하다. )
            'maxTime': '20:00pm', // 조회하고자 할 종료 시간 ( 20시 까지 선택 가능하다. )
            'timeFormat': 'H:i',
            'step': 30 // 30분 단위로 지정. ( 10을 넣으면 10분 단위 )
    });
    
    $(window).scroll(function(){
        $(".ui-timepicker-wrapper").hide();
    });
 
    });
</script>
</head>
<body>
    <tr>
        <th>이용시간</th>
        <td>
            <input type="text" name="START_TIME" id="START_TIME" value="" maxlength="10"  class="setDatePicker">
            ~
            <input type="text" name="END_TIME" id="END_TIME" value="" maxlength="10"  class="setDatePicker">
        </td>
    </tr>
</body>

</html>