<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"> 
<HTML> 
<HEAD> 
<TITLE> New Document </TITLE> 
<META NAME="Generator" ConTENT="EditPlus"> 
<META NAME="Author" ConTENT=""> 
<META NAME="Keywords" ConTENT=""> 
<META NAME="Description" ConTENT=""> 
</HEAD> 

<BODY> 

<form method=post action="a2_post.php"> 
<input type=button value="행추가" onclick="add_row();"> 
<input type=button value="열추가" onclick="add_col();"> 
<input type=button value="행삭제" onclick="del_row();"> 
<input type=button value="열삭제" onclick="del_col();"> 
<table id='stock_table' border=1> 
    <thead id='stock_thead'> 
        <tr> 
            <td> 
            	하이
                <input type=text name=opty size=4> 
                <input type=text name=optx size=4> 
            </td> 
            <td> 
                <input type=text name='optx_subj[]' size=10> 
            </td> 
        </tr> 
    </thead> 
    <tbody id='stock_tbody'> 
        <tr> 
            <td><input type=text name='opty_subj[]' size=10></td> 
            <td><input type=text name='opt[0][]' size=10></td> 
        </tr> 
    </tbody> 
</table> 

<input type=submit> 
</form> 

<span id=msg></span> 

<script> 
var stock_table = document.getElementById('stock_table'); 
var stock_thead = document.getElementById('stock_thead'); 
var stock_tbody = document.getElementById('stock_tbody'); 
var stock_tr = null; 
var stock_td = null; 
var stock_x = 0; 
var stock_y = 0; 
var msg = document.getElementById('msg'); 

function add_row() 
{ 
    // 행 제목 추가 
    stock_tr = document.createElement('tr'); 
    stock_tbody.appendChild(stock_tr); 
    stock_td = document.createElement('td'); 
    stock_tr.appendChild(stock_td); 
    add_input('opty_subj[]'); 
    stock_y++; 

    // 열의 갯수에 따라 추가된 행의 열 추가 
    var stock_thead_td = stock_thead.getElementsByTagName('td'); 
    for (i=0; i<stock_thead_td.length-1; i++) 
    { 
        stock_td = document.createElement('td'); 
        stock_tr.appendChild(stock_td); 
        add_input('opt['+stock_y+'][]'); 
    } 
} 

function add_col() 
{ 
    // 열 제목 추가 
    var stock_thead_tr = stock_thead.getElementsByTagName('tr'); 
    stock_td = document.createElement('td'); 
    stock_thead_tr[0].appendChild(stock_td); 
    add_input('optx_subj[]'); 

    var stock_tbody_tr = stock_tbody.getElementsByTagName('tr'); 
    for (i=0; i<stock_tbody_tr.length; i++) { 
        stock_td = document.createElement('td'); 
        stock_tbody_tr[i].appendChild(stock_td); 
        add_input('opt['+i+'][]'); 
    } 
} 

function add_input(name) 
{ 
    var inp = document.createElement('input'); 
    inp.setAttribute('type', 'text'); 
    inp.setAttribute('size', '10'); 
    inp.setAttribute('name', name); 
    stock_td.appendChild(inp); 
} 

function del_row() 
{ 
    var stock_tbody_tr = stock_tbody.getElementsByTagName('tr'); 
    if (stock_tbody_tr.length > 1) { 
        stock_tbody.deleteRow(stock_tbody_tr.length-1); 
        stock_y--; 
    } 
} 

function del_col() 
{ 
    var stock_thead_tr = stock_thead.getElementsByTagName('tr'); 
    var stock_thead_td = stock_thead.getElementsByTagName('td'); 
    if (stock_thead_td.length > 2) { 
        stock_thead_tr[0].deleteCell(stock_thead_td.length-1); 

        var stock_tbody_tr = stock_tbody.getElementsByTagName('tr'); 
        for (i=0; i<stock_tbody_tr.length; i++) { 
            var tr_td = stock_tbody_tr[i].getElementsByTagName('td'); 
            stock_tbody_tr[i].deleteCell(tr_td.length-1); 
        } 
    } 
} 
</script> 

</BODY> 
</HTML>