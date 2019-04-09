<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function selectCal(monthfield, yearfield){
	  var today=new Date();
	  for(var i = 1; i < 13; i++){
	   
	   if(today.getMonth() == i) $("#"+monthfield).append("<option value='"+i+"' selected='selected'>"+i+"</option>");
	   else $("#"+monthfield).append("<option value='"+i+"'>"+i+"</option>"); 
	  }

	  var thisyear=today.getFullYear();
	     for (var y=thisyear-10; y<thisyear+10; y++){
	        
	        if(thisyear == y) $("#"+yearfield).append("<option value='"+y+"' selected='selected'>"+y+"</option>"); 
	        else $("#"+yearfield).append("<option value='"+y+"'>"+y+"</option>"); 
	     }
	    
	  }
</script>
<script type="text/javascript">
$(document).ready(function() {

	  selectCal('selectDateMonth1', 'selectDateYear1');

	});
</script>
</head>
<body>  
		<label for="select">정산년월</label>
          <select name="selectDateYear1" id="selectDateYear1">
          </select> 
          <label for="select4"></label>
          <select name="selectDateMonth1" id="selectDateMonth1">
          </select>
</body>
</html>