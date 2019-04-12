<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.ArrayList, java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../css/common.css">
<script type = "text/javascript" src ="../../js/jquery.min.js"></script>
<script type = "text/javascript" src ="../../js/bootstrap.js"></script>
</head>
<body>

<div class="collapse" id="collapseExample">
  <div class="card card-body">
	<fieldset>
	    <textarea id="messageWindow" rows="10" cols="50" readonly="true"></textarea>
	    <br/>
	    <input id="inputMessage" type="text"/>
	    <input type="submit" value="send" onclick="send()" />
	</fieldset>
  </div>
</div>
<div class="dropdown">
  <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true">
    Dropdown link
  </a>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
	<button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample" >
		Chat1
	</button>
  </div>
</div>

<script type="text/javascript">
	
	var webSocket = new WebSocket('ws://192.168.0.234:9000/swift_erp/broadcast');
		
	var textarea = document.getElementById("messageWindow");
	var inputMessage = document.getElementById('inputMessage');
	
	webSocket.onerror = function(event) {
		alert(event.data);
	};
	
	webSocket.onmessage = function(event) {
		textarea.value += "상대 : " + event.data + "\n";
	};
	
	function send1() {
	    textarea.value += "나 : " + inputMessage.value + "\n";
	    webSocket.send(inputMessage.value);
	    inputMessage.value = "";
	}
	
</script>

</body>
</html>