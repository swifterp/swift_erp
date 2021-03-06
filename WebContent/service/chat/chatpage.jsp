<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.ArrayList, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<%   List<Map<String, String>> lst = (List<Map<String, String>>)request.getAttribute("list"); %>
<style>
   #chatlist {overflow:scroll; width:300px; height:300px; text-align:left;}
   table td {vertical-align:top; padding:5px;}
</style>
</head>
<body>
<button type="button" class="btn btn-default" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample" onclick="bringEmp()" style="border:none; background:none;">
   <img src="../../images/btn_chat.png" alt="SWIFT MESSENGER" style="width:180px; height:auto;"/>
</button>
<div class="collapse" id="collapseExample">
   <div class="card card-body">
      <table>
         <tr>
            <td>
               <div id="emplist" style="overflow:scroll; width:300px; height:300px; padding:10px; text-align:left;"></div>
            </td>
            <td id="inchatTd">
               <div id="roomTitleDiv"></div>
               <div id="textareaDiv"></div><br>
               <div id="inputDiv"></div>
               <div class="btn_group">
	               <div id="inviteDiv" style="float:right;"></div>
	               <div id="exitDiv" style="float:left;"></div>
	           </div>
            </td>
            <td id="partiTd"></td>
            <td id="chatlist"></td>
         </tr>
      </table>
   </div>
</div>

<script type="text/javascript">

   var x = document.getElementById("hidempno").name;
   
   var xhr1 = null;
   var xhr2 = null;
   var xhr3 = null;
   var xhr4 = null;
   var xhr5 = null;
   var xhr6 = null;
   var xhr7 = null;
   var xhr8 = null;
   var xhr9 = null;

   var empnoArr = [];
   var checkedArr = [];

   var partiflag = 0;
   
   function createRequest(xhr){
   
      try {
         xhr = new XMLHttpRequest();
      } catch (e) {
         try {
            xhr = new ActiveXObject("Msxml2.XMLHTTP");
         } catch (e) {
            try {
               xhr = new ActiveXObject("Microsoft.XMLHTTP")
            } catch (e) {
               xhr = null;
            }
         }
      }
      
      if(xhr == null){
         alert("Error Creating XMLHttpRequest Object");
      }
      
      return xhr;
   
   }

   function bringEmp(){
      xhr1 = createRequest(xhr1);
      xhr1.onreadystatechange = function (){
         
         if(this.readyState == 4 && this.status == 200){
            document.getElementById("emplist").innerHTML = this.responseText;
            removeMe();
         }
         
      };

      xhr1.open("POST", "../emp/read?", true);
      xhr1.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");
      xhr1.send("classify=chat");

      bringRoom();
      
   }

   function bringRoom(){
      xhr2 = createRequest(xhr2);
      xhr2.onreadystatechange = function (){
         
         if(this.readyState == 4 && this.status == 200){
            document.getElementById("chatlist").innerHTML = this.responseText;
         }
         
      };

      xhr2.open("POST", "../chat/room?", true);
      xhr2.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");
      xhr2.send("empno="+x);
   }

   function insertLog(msg, chatroom_code, empno){
      xhr3 = createRequest(xhr3);

      xhr3.open("POST", "../chat/insertlog?", true);
      xhr3.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");
      var d = new Date();
      xhr3.send("empno="+x+"&chatroom_code="+chatroom_code+"&msg="+msg+"&log_time="+d.getFullYear()+"/"+d.getMonth()+"/"+d.getDate()+" "+d.getHours()+":"+d.getMinutes()+":"+d.getSeconds());
   }

   function bringLog(chatroom_code){
      xhr4 = createRequest(xhr4);
      xhr4.onreadystatechange = function (){
         
         if(this.readyState == 4 && this.status == 200){
            textarea.innerHTML = this.responseText;
         }
         
      };

      xhr4.open("POST", "../chat/selectlog?", true);
      xhr4.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");
      xhr4.send("chatroom_code="+chatroom_code);
   }

   function insertRoom(){
      xhr5 = createRequest(xhr5);
      xhr5.onreadystatechange = function (){
         
         if(this.readyState == 4 && this.status == 200){
            document.getElementById("chatlist").innerHTML = this.responseText;
         }
         
      };

      var tmp = "";
      
      for(var i=0;i<checkedArr.length;i++){
         if(tmp == ""){}
         else {
            tmp = tmp + "&";
         }
         tmp = tmp + checkedArr[i]+"="+checkedArr[i];
      }
      tmp = tmp + "&me="+x;
      var cnt = document.getElementById("chatroom_name_text").value;
      tmp = tmp + "&title="+cnt
            
      xhr5.open("POST", "../chat/insertroom?", true);
      xhr5.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");
      xhr5.send(tmp);
   }

   var webSocket = new WebSocket('ws://192.168.0.234:9000/swift_erp/broadcast');
   if(webSocket != null){
      webSocket.onerror = function(event) {
         alert("ERROR: "+event.data);
      };
      
      webSocket.onmessage = function(event) {
         onMessage(event);
      };
   }

   var chattd = document.getElementById("inchatTd");
   
   var textareaDiv = document.getElementById("textareaDiv");
   var roomTitleDiv = document.getElementById("roomTitleDiv");
   var inputDiv = document.getElementById("inputDiv");
   var inviteDiv = document.getElementById("inviteDiv");
   var exitDiv = document.getElementById("exitDiv");
   var participentDiv = document.getElementById("participentDiv");
   
   var textarea = null;
   var inputMessage = null;
   var submitMessage = null;

   var checkArr = [];
   
   function createChat(){
      
      for(var i=0;i<document.getElementById("checkdiv").childNodes.length;i++){
         if(document.getElementById("checkdiv").childNodes[i].checked == true){
            checkedArr.push(document.getElementById("checkdiv").childNodes[i].id.substr(8));
         }
      }

      insertRoom();
   
   }   

   function createRoom(chatroom_code, chatroom_name){
      if(roomTitleDiv.hasChildNodes()){
         roomTitleDiv.removeChild(roomTitleDiv.childNodes[0]);
      }
      if(textareaDiv.hasChildNodes()){
         textareaDiv.removeChild(textareaDiv.childNodes[0]);
      }
      if(inputDiv.hasChildNodes()){
         inputDiv.removeChild(inputDiv.childNodes[0]);
      }

      if(inviteDiv.hasChildNodes()){
         inviteDiv.removeChild(inviteDiv.childNodes[0]);
      }
      if(exitDiv.hasChildNodes()){
         exitDiv.removeChild(exitDiv.childNodes[0]);
      }
      if(partiTd.hasChildNodes()){
    	  partiTd.removeChild(partiTd.childNodes[0]);
      }
      
      textarea = document.createElement("TEXTAREA");
      inputMessage = document.createElement("INPUT");
      submitMessage = document.createElement("INPUT");
      inviteButton = document.createElement("INPUT");
      exitButton = document.createElement("INPUT");
      
      
      textarea.setAttribute("id", "textarea"+chatroom_code);
      textarea.setAttribute("readonly", "true");
      textarea.setAttribute("rows", "10");
      textarea.setAttribute("cols", "50");
      textarea.setAttribute("style", "width:100%; border:1px solid #ddd;")
      inputMessage.setAttribute("id", "input"+chatroom_code);
      inputMessage.setAttribute("type", "text");
      inputMessage.setAttribute("class", "form-control");
      inputMessage.setAttribute("onKeyDown", "send()");
      submitMessage.setAttribute("id", "submit"+chatroom_code);
      submitMessage.setAttribute("type", "submit");
      submitMessage.setAttribute("value", ">");
      submitMessage.setAttribute("onclick", "send()");
      inviteButton.setAttribute("id", "inviteButton"+chatroom_code);
      inviteButton.setAttribute("type", "button");
      inviteButton.setAttribute("value", "초대하기");
      inviteButton.setAttribute("class", "btn-outline-info btn");
      inviteButton.setAttribute("onclick", "inviteEmp("+chatroom_code+")");
      exitButton.setAttribute("id", "exitButton"+chatroom_code);
      exitButton.setAttribute("type", "button");
      exitButton.setAttribute("value", "방나가기");
      exitButton.setAttribute("class", "btn-default btn");
      exitButton.setAttribute("onclick", "exitRoom("+chatroom_code+")");
      roomTitleDiv.setAttribute("style", "background-color:#4bacc6;height:34px;line-height:34px;color:white;")
      
      
      textareaDiv.appendChild(textarea);
      inputDiv.appendChild(inputMessage);
      inviteDiv.appendChild(inviteButton);
      exitDiv.appendChild(exitButton);
      bringLog(chatroom_code);
      //participentList(inputMessage);
      
      //var partibutton = document.createElement("BUTTON");
      //partibutton.setAttribute("class", "btn-outline-primary btn");
      //partibutton.setAttribute("onclick", "participentList("+inputMessage+")");
      var tmp = roomTitleDiv.innerHTML = chatroom_name;
      roomTitleDiv.innerHTML = tmp + "<a class='btn btn-outline-info', style='float:right; font-weight:bold;', onclick='participentList("+inputMessage.id.substr(5)+")'> = </a>"; 
      
   }

   function onMessage(event){
      var strarr = String(event.data).split("|");
      if(strarr[1] == textarea.id.substr(8)){
         textarea.value += strarr[2] + " : " + strarr[0] + "\n";
         textarea.focus();
         inputMessage.focus();
      }
   }
   
   function send() {
      if(event.keyCode == 13){
         var d = new Date();
         textarea.value += x+" : " + inputMessage.value + "(" + d.getFullYear()+"/"+d.getMonth()+"/"+d.getDate()+" "+d.getHours()+":"+d.getMinutes()+":"+d.getSeconds() + ")" +"\n";
         webSocket.send(inputMessage.value+"|"+inputMessage.id.substr(5)+"|"+x);
         insertLog(inputMessage.value, inputMessage.id.substr(5), x);
         inputMessage.value = "";
         textarea.focus();
         inputMessage.focus();
      }
   }

   function removeMe(){
      $("#checkbox"+x).remove();
      $("#checktext"+x).remove();
   }

   function inviteEmp(chatroom_code){

      for(var i=0;i<document.getElementById("checkdiv").childNodes.length;i++){
         if(document.getElementById("checkdiv").childNodes[i].checked == true){
            checkedArr.push(document.getElementById("checkdiv").childNodes[i].id.substr(8));
         }
      }

      xhr6 = createRequest(xhr6);
      xhr6.onreadystatechange = function (){
         
         if(this.readyState == 4 && this.status == 200){
            document.getElementById("participentDiv").innerHTML = this.responseText;
         }
         
      };

      var tmp = "";
      
      for(var i=0;i<checkedArr.length;i++){
         if(tmp == ""){}
         else {
            tmp = tmp + "&";
         }
         tmp = tmp + checkedArr[i]+"="+checkedArr[i];
      }
      
      xhr6.open("POST", "../chat/invite?", true);
      xhr6.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");
      xhr6.send(tmp+"&chatroom_code="+chatroom_code);

   }

   function participentList(inputMessage){
	if(partiflag == 0){
      xhr7 = createRequest(xhr7);
      xhr7.onreadystatechange = function (){
         
         if(this.readyState == 4 && this.status == 200){
             if(document.getElementById("partiTd").hasChildNodes()){
            	 document.getElementById("partiTd").removeChild(document.getElementById("partiTd").childNodes[0]);
              }
             var partidiv = document.createElement("DIV");
             partidiv.setAttribute("id", "participentDiv");
             document.getElementById("partiTd").appendChild(partidiv);
             partidiv.innerHTML = this.responseText;
         }
         
      };
      
      xhr7.open("POST", "../chat/selectparticipent?", true);
      xhr7.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");
      xhr7.send("chatroom_code="+inputMessage);

      partiflag = 1;
      
	} else if(partiflag == 1){
        if(document.getElementById("partiTd").hasChildNodes()){
       	 document.getElementById("partiTd").removeChild(document.getElementById("partiTd").childNodes[0]);
         }
        partiflag = 0;
	}
   }

   function exitRoom(chatroom_code){

      xhr8 = createRequest(xhr8);
      xhr8.onreadystatechange = function (){
         
         if(this.readyState == 4 && this.status == 200){
            document.getElementById("chatlist").innerHTML = this.responseText;

            if(textareaDiv.hasChildNodes()){
               textareaDiv.removeChild(textareaDiv.childNodes[0]);
            }
            if(inputDiv.hasChildNodes()){
               inputDiv.removeChild(inputDiv.childNodes[0]);
            }
            if(inviteDiv.hasChildNodes()){
               inviteDiv.removeChild(inviteDiv.childNodes[0]);
            }
            if(exitDiv.hasChildNodes()){
               exitDiv.removeChild(exitDiv.childNodes[0]);
            }
            if(participentDiv.hasChildNodes()){
               participentDiv.removeChild(participentDiv.childNodes[1]);
            }
            
         }
         
      };
      
      xhr8.open("POST", "../chat/exitroom?", true);
      xhr8.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");
      xhr8.send("chatroom_code="+chatroom_code+"&empno="+x);

   }

	function searchEmp(){

	      xhr9 = createRequest(xhr9);
	      xhr9.onreadystatechange = function (){
	         
	         if(this.readyState == 4 && this.status == 200){
	            document.getElementById("emplist").innerHTML = this.responseText;
	            removeMe();
	         }
	         
	      };

	      xhr9.open("POST", "../emp/read?", true);
	      xhr9.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");
	      xhr9.send("classify=search&empno="+document.getElementById("searchEmpText").value);
	      
	}
   
</script>

</body>
</html>