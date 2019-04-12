<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
/*******************
 **  달력 SELECT BOX
 ********************/
 function dateSelect(docForm,selectIndex)
 {
  watch = new Date(docForm.year.options[docForm.year.selectedIndex].text, docForm.month.options[docForm.month.selectedIndex].value,1);
  hourDiffer = watch - 86400000;
  calendar = new Date(hourDiffer);
  var daysInMonth = calendar.getDate();

  for (var i = 0; i < docForm.day.length; i++)
  {
   docForm.day.options[0] = null;
  }

  for (var i = 0; i < daysInMonth; i++)
  {
   docForm.day.options[i] = new Option(i+1);
  }
  
  document.form1.day.options[0].selected = true;
 }
 
 /************************
 **  현재의 년월일을 구함
 *************************/
 function Today(year,mon,day)
 {
  if(year == "null" && mon == "null")
  {       
   today = new Date();
   this_year=today.getFullYear();
   this_month=today.getMonth();
   this_month+=1;
   if(this_month <10)
   {
    this_month="0" + this_month;
   }
 
  }
 
  montharray=new Array(31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31); 
  maxdays = montharray[this_month-1];
  
  //윤달 구하기
  if (this_month==2)
  { 
   if ((this_year/4)!=parseInt(this_year/4))
   {
    maxdays=28;
   }
     else
     {
      maxdays=29;
     }
  }
 
  document.writeln("<select name='year' size=1 onChange='dateSelect(this.form,this.form.month.selectedIndex);'>");
  for(i=this_year-5;i<this_year+2;i++)
  {
   //현재 년도에서 과거로 5년까지 미래로 1년까지를 표시함
   if(i==this_year)
   {
    document.writeln("<OPTION VALUE="+i+ " selected >" +i);
   }
   else
   {
    document.writeln("<OPTION VALUE="+i+ ">" +i);
   }
  }    
  document.writeln("</select> 년");     

  document.writeln("<select name='month' size=1 onChange='dateSelect(this.form,this.selectedIndex);'>");
  for(i=1;i<=12;i++)
  { 
   if(i<10)
   {
    if(i==this_month)
    {
     document.writeln("<OPTION VALUE=0" +i+ " selected >0"+i);
    }
    else
    {
     document.writeln("<OPTION VALUE=0" +i+ ">0"+i);
    }
   }         
   else
   {
    if(i==this_month)
    {
     document.writeln("<OPTION VALUE=" +i+ " selected >" +i);
    }
    else
    {
     document.writeln("<OPTION VALUE=" +i+ ">" +i);
    }
   }                     
  }
  document.writeln("</select> 월");
 }
 </script>
</head>
<body>
<!--아래와 같이 폼태그를 구성합니다.-->
<form name="form1">
<!--년,월,일 표시-->
<script language="javascript"> Today('null','null','null'); </script>
</form>
<!--여기까지 폼 태그 구성-->
</body>
</html>