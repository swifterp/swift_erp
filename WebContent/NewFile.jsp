<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script type = "text/javascript" src ="js/jquery-3.3.1.js"></script>
<script type = "text/javascript" src ="js/bootstrap.js"></script>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    	<script language="javascript">
		function ShowTable(wtable) {
		eval(wtable).style.display="";
		}
		function HideTable(wtable) {
		eval(wtable).style.display="none";
		}
	</script>
	<script type="text/javascript">
		function timer3() {
			var date = new Date();
			var year = date.getFullYear();
			var month = date.getMonth() + 1;
			var day = date.getDate();
			var dateString2 = year + ". " + month + ". " + day;
			
			var hour = date.getHours();
			var ampm = (hour < 12 || hour == 24) ? " ����" : " ����";
			hour = hour % 12 || 12;
			var minute = date.getMinutes();
			minute = (minute > 9) ? minute : "0" + minute;
			var second = date.getSeconds();
			second = (second > 9) ? second : "0" + second;
			var timeString2 = ampm + " " + hour + ":" + minute;
			
			return dateString2 +" / "+ timeString2;
		}
	</script>
    <script>
    
		var jbAry = Array();
		jbAry[0] = '�����';
		jbAry[1] = '���';
		jbAry[2] = '�ð�';
		jbAry[3] = '����';

		var jbAry1 = Array();
		jbAry1[0] = "����� Text�� �� ��"
		jbAry1[1] = "��� Text�� �� ��"
		jbAry1[2] = timer3();
		jbAry1[3] = "���� Text�� �� ��"
			
		var jbAry2 = Array();
		jbAry2[0] = "��ĭ"
		jbAry2[1] =
"<div class='custom-control custom-checkbox'><input type='checkbox' id='jb-checkbox'class='custom-control-input'><label class='custom-control-label' for='jb-checkbox'>�ܱ�</label></div>"
		jbAry2[2] = "��ĭ"
		jbAry2[3] = "��ĭ"

		var jbAry3 = Array();
		jbAry3[0] = "��ĭ"
		jbAry3[1] = "��ĭ"
		jbAry3[2] = "��ĭ"
		jbAry3[3] = "��ĭ"
    </script>
    <script type="text/javascript">
		var cnt = 1; 
		var seton = 0; 
		var setoff = 0;
        $(function () {
           // $('#lblDisplay').empty();
            $('#btnCreate').click(function () {
				/* input ��� ��ư�� ������ �� - ����� ������� �ٲٴ� if��  */
            	if ($(this).val() == '���'){
					$(this).val('���');
					/* input ��� ��ư���� ���� ��ư & ���̺��� ��� �����Ǵ� ���� �����ϱ� ����  seton�� 0�̸� ����,0�� �ƴϸ� �ѱ�� if��*/
					if (seton == 0) {
						/* str1,2�� ���̺��� ���� & ��ġ�⸦ ���� ���� ��ư  HideTable = ���� | ShowTable = ��ġ�� */
						var str1 = "<input type='button' value='���' width ='600px' class='btn btn-primary' onclick='HideTable(a_table);'>";
		            	var str2 = "<input type='button' value='���' width ='600px' class='btn btn-primary' onclick='ShowTable(a_table);'>";
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
			                   		strTable += "<td width = '100px'>" + (jbAry[i]) + "</td>";
								}
								if(j == 1){
			                   		strTable += "<td  width = '200px'>" + (jbAry1[i]) + "</td>";
								}
								if(j == 2){
			                   		strTable += "<td width = '60px'>" + (jbAry2[i]) + "</td>";
								}
								if(j == 3){
			                   		strTable += "<td>" + (jbAry3[i]) + "</td>";
								}
		                    }
		                    strTable += "</tr>";
		                    strTable += "</tbody>"
		                }
		                strTable += "</table>";
		      
		                $('#lblTable').append(strTable);
		                seton++;
					} /* if (set == 0) {}�κ�  */
					else if(seton != 0){
					}
				/* input ��ư�� ����̶�� ������� �ٲ�� �� */
		        }else{
					$(this).val('���');
					/* input ��� ��ư������ ���� �����ϰ� setoff�� 0�̸� ����, 0�� �ƴϸ� �ѱ�� if��*/
					if(setoff == 0){
						var str1 = "<input type='button' value='���' width ='600px' class='btn btn-primary' onclick='HideTable(b_table);'>";
		            	var str2 = "<input type='button' value='���' width ='600px' class='btn btn-primary' onclick='ShowTable(b_table);'>";
			            $('#Table2').append(str1);
		            	$('#Table2').click(function () {
							if(cnt%2 == 1){
								$('#Table2 *').remove();
								$('#Table2').append(str2);
							} else {
								$('#Table2 *').remove();
				                $('#Table2').append(str1);
							}
			                cnt++;
			        	})
				        
		                $('#lblTable2').empty();
		                var row = 4;
		                var col = 4;
		                var strTable = "<table id='b_table' display='none' border='1px' width = '600px'>";
		                
		                for (var i = 0; i < row; i++) {
			                    strTable += "<tr>";
		                    for (var j = 0; j < col; j++) {
		                    	if(j == 0){
			                   		strTable += "<td width = '100px'>" + (jbAry[i]) + "</td>";
								}
								if(j == 1){
			                   		strTable += "<td width = '200px'>" + (jbAry1[i]) + "</td>";
								}
								if(j == 2){
			                   		strTable += "<td width = '60px'>" + (jbAry2[i]) + "</td>";
								}
								if(j == 3){
			                   		strTable += "<td>" + (jbAry3[i]) + "</td>";
								}
			                }
			                strTable += "</tr>";
		                    strTable += "</tbody>"
		                }
		                strTable += "</table>";
		      
		                $('#lblTable2').append(strTable);
		                setoff++;
					}/* if(setoff == 0){}�κ� */
					else if(setoff != 0){
					}
		        }
            });
        });
    </script>
</head>
<body>
    <!-- ���� ���̺� �߰� -->
    <input id="btnCreate" type="button" class="btn btn-primary" value="���"/>
    <br>
    <form name=form>
    	<div id= "Table">
	    </div>
		<div id="lblTable">
    	</div>
    	<br>
    	<div id= "Table2">
	    </div>
		<div id="lblTable2">
    	</div>
    </form>
</body>
</html>