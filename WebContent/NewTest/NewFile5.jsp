<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <script src ="https://code.jquery.com/jquery-1.11.2.js"></script>
    </head>
    <body>
        <input type="text"></input>
        <button>현재페이지</button>
        <div id="pageZone"></div>
    </body>
    <script>    
    var totalCount = 1000; //전체 건수
    var totalPage = Math.ceil(totalCount/15);//페이지 수
    var PageNum;
    var page;
    $("button").click(function(){    
        page = parseInt($("input").val());
        drawPage(page);
    });
    function drawPage(goTo){        
        page = goTo;    
        var pageGroup = Math.ceil(page/10);    //페이지 그룹 넘버링
        var next = pageGroup*10;
        var prev = next-9;            
        var goNext = next+1;
        if(prev-1<=0){
            var goPrev = 1;
        }else{
            var goPrev = prev-1;
        }    
        if(next>totalPage){
            var goNext = totalPage;
            next = totalPage;
        }else{
            var goNext = next+1;
        }
        var prevStep = " <a href='javascript:drawPage("+goPrev+");'>"+goPrev+"이동</a> ";

        var nextStep = " <a href='javascript:drawPage("+goNext+");'>"+goNext+"이동</a> ";            
        $("#pageZone").empty();

        $("#pageZone").append(prevStep);

        for(var i=prev; i<=next;i++){
            PageNum = "<strong>"+i+"</strong> ";
            $("#pageZone").append(PageNum);
        }    
        $("#pageZone").append(nextStep);    
    }    
    </script>

</html>
