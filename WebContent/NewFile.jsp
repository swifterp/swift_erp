<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <title>�޷�</title>
    <style type="text/css">
        td{
            width: 50px;
            height: 50px;
            text-align: center;
            font-size: 20px;
            font-family: ����;
            border:2px border-color:#3333FF;
        }
    </style>
<script type="text/javascript">
        var today = new Date();//���� ��¥//�� ��ǻ�� ������ �������� today�� Date ��ü�� �־���
        var date = new Date();//today�� Date�� �����ִ� ����
        function prevCalendar() {//���� ��
        // ���� ���� today�� ���� �����ϰ� �޷¿� today�� �־���
        //today.getFullYear() ���� �⵵//today.getMonth() ��  //today.getDate() �� 
        //getMonth()�� ���� ���� �޾� ���Ƿ� �������� ����Ϸ��� -1�� �������
         today = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());
         buildCalendar(); //�޷� cell ����� ��� 
        }
 
        function nextCalendar() {//���� ��
            // ���� ���� today�� ���� �����ϰ� �޷¿� today �־���
            //today.getFullYear() ���� �⵵//today.getMonth() ��  //today.getDate() �� 
            //getMonth()�� ���� ���� �޾� ���Ƿ� �������� ����Ϸ��� +1�� �������
             today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
             buildCalendar();//�޷� cell ����� ���
        }
        function buildCalendar(){//���� �� �޷� �����
            var doMonth = new Date(today.getFullYear(),today.getMonth(),1);
            //�̹� ���� ù° ��,
            //new�� ���� ���� : new�� ���� �̹����� ���� ���� ��Ȯ�ϰ� �޾ƿ´�.     
            //new�� ���� �ʾ����� �̹����� �޾ƿ����� +1�� ������Ѵ�. 
            //�ֳĸ� getMonth()�� 0~11�� ��ȯ�ϱ� ����
            var lastDate = new Date(today.getFullYear(),today.getMonth()+1,0);
            //�̹� ���� ������ ��
            //new�� ���ָ� ��Ȯ�� ���� ������, getMonth()+1�� ���ָ� �����޷� �Ѿ�µ�
            //day�� 1���� �����ϴ°� �ƴ϶� 0���� �����ϱ� ������ 
            //��� �� ������ ������(1��)�� ���������� 1 ���� 0, �� ���� �������� �� �������� �ȴ�
            var tbCalendar = document.getElementById("calendar");
            //��¥�� ���� ���̺� ���� ����, �� ���� �� ����
            var tbCalendarYM = document.getElementById("tbCalendarYM");
            //���̺� ��Ȯ�� ��¥ ��� ����
            //innerHTML : js �� HTML�� ���� ǥ�� ���� �ٲ۴�
            //new�� ���� �ʾƼ� month�� +1�� ������� �Ѵ�. 
             tbCalendarYM.innerHTML = today.getFullYear() + "�� " + (today.getMonth() + 1) + "��"; 
 
             /*while�� �̹����� ������ �����޷� �Ѱ��ִ� ����*/
            while (tbCalendar.rows.length > 2) {
            //���� ������
            //�⺻ �� ũ��� body �κп��� 2�� �����Ǿ� �ִ�.
                  tbCalendar.deleteRow(tbCalendar.rows.length-1);
                  //���̺��� tr ���� ��ŭ�� �� ������ -1ĭ ������� 
                //30�� ���ķ� �����޿� ������� ���� ��� �̾�����.
             }
             var row = null;
             row = tbCalendar.insertRow();
             //���̺� ���ο� �� ����//��, �ʱ�ȭ
             var cnt = 0;// count, ���� ������ �����ִ� ����
            // 1���� ���۵Ǵ� ĭ�� ���߾� ��
             for (i=0; i<doMonth.getDay(); i++) {
             /*�̹����� day��ŭ ����*/
                  cell = row.insertCell();//�� ��ĭ��ĭ ��� ������ִ� ����
                  cnt = cnt + 1;//���� ������ ��� �������� ��ġ�ϰ� ���ִ� ����
             }
            /*�޷� ���*/
             for (i=1; i<=lastDate.getDate(); i++) { 
             //1�Ϻ��� ������ �ϱ��� ����
                  cell = row.insertCell();//�� ��ĭ��ĭ ��� ������ִ� ����
                  cell.innerHTML = i;//���� 1���� ������ day���� HTML ������ �־���
                  cnt = cnt + 1;//���� ������ ��� �������� ��ġ�ϰ� ���ִ� ����
              if (cnt % 7 == 1) {/*�Ͽ��� ���*/
                  //1������ 7�� �̹Ƿ� �Ͽ��� ���ϱ�
                  //��ȭ����������� 7�� �������� �������� 1�̸� cnt�� 1��°�� ��ġ���� �ǹ��Ѵ�
                cell.innerHTML = "<font color=#F79DC2>" + i
                //1��°�� cell���� ��ĥ
                
            }    
              if (cnt%7 == 0){/* 1������ 7�� �̹Ƿ� ����� ���ϱ�*/
                  //��ȭ����������� 7�� �������� �������� 0�̸� cnt�� 7��°�� ��ġ���� �ǹ��Ѵ�
                  cell.innerHTML = "<font color=skyblue>" + i
                  //7��°�� cell���� ��ĥ
                   row = calendar.insertRow();
                   //����� ������ �� ���� �߰�
              }
              /*������ ��¥�� ����� ĥ�ϱ�*/
              if (today.getFullYear() == date.getFullYear()
                 && today.getMonth() == date.getMonth()
                 && i == date.getDate()) {
                  //�޷¿� �ִ� ��,�ް� �� ��ǻ���� ���� ��,���� ����, ���� ������ �ϰ� ������
                cell.bgColor = "#FAF58C";//���� ������ ������� 
               }
               for (k=1; k=7; k++){
					if(i==1 && k<=)
                   }
             }
        }
    </script>
</head>
<body>
    <p></p>
    <h3 align="center">��Jerry�� �޷¡�</h3>
<table id="calendar" border="3" align="center" style="border-color:#3333FF ">
    <tr><!-- label�� ���콺�� Ŭ���� ���ϰ� ���� -->
        <td><label onclick="prevCalendar()"> < </label></td>
        <td align="center" id="tbCalendarYM" colspan="5">
        yyyy�� m��</td>
        <td><label onclick="nextCalendar()"> >
            
        </label></td>
    </tr>
    <tr>
        <td align="center"><font color ="#F79DC2">��</td>
        <td align="center">��</td>
        <td align="center">ȭ</td>
        <td align="center">��</td>
        <td align="center">��</td>
        <td align="center">��</td>
        <td align="center"><font color ="skyblue">��</td>
    </tr> 
</table>
<script language="javascript" type="text/javascript">
    buildCalendar();//
</script>
</body>
</html>
