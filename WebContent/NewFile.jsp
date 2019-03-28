<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
   	<script language="javascript">
		function ShowTable(wtable) {
		eval(wtable).style.display="";
		}
		function HideTable(wtable) {
		eval(wtable).style.display="none";
		}
	</script>
    <script>
		var jbAry = Array();
		jbAry[0] = '사용자';
		jbAry[1] = '장소';
		jbAry[2] = '시간';
		jbAry[3] = '사유';
    </script>
    <script type="text/javascript">
		var cnt = 1;
        $(function () {
           // $('#lblDisplay').empty();
            $('#btnCreate').click(function () {
            	var str1 = "<input type='button' value='테이블 숨기기' onclick='HideTable(a_table);'>";
            	var str2 = "<input type='button' value='테이블 펼치기' onclick='ShowTable(a_table);'>";
	            $('#Table').append(str1);
            	$('#Table').click(function () {
					if(cnt%2 == 1){
						$('#Table *').remove();
						$('#Table').append(str2);
					} else {
						$('#Table *').remove();
		                $('#Table').append(str1);
					}
	                cnt++;
	        	})
                $('#lblTable').empty();
                var row = 4;
                var col = 4;
                var strTable = "<table id='a_table' display='none' border='1px' width = '600px'>";
                
                for (var i = 0; i < row; i++) {
	                    strTable += "<tr>";
                    for (var j = 0; j < col; j++) {
							if(j == 0){
		                   		strTable += "<td width = '120px'>" + (jbAry[i]) + "</td>";
							}
							if(j == 1){
		                   		strTable += "<td>" + (i) + (j) + "</td>";
							}
							if(j == 2){
		                   		strTable += "<td>" + (i) + (j) + "</td>";
							}
							if(j == 3){
		                   		strTable += "<td>" + (i) + (j) + "</td>";
							}
	                    }
	                    strTable += "</tr>";
                    strTable += "</tbody>"
                }
                strTable += "</table>";
      
                $('#lblTable').append(strTable);
            });
        });
    </script>
</head>
<body>
    <!-- 동적 테이블 추가 -->
    <input id="btnCreate" type="button" value="출근" /><br />
    <form name=form>
    	<div id= "Table">
	    </div>
		<div id="lblTable">
    	</div>
    </form>
</body>
</html>