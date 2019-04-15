<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script> 
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
	<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.css" rel="stylesheet">
	<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.js"></script>
	<script>
		$(document).ready(function(){
			
			 $('#summernote').summernote({
			        placeholder: 'Write contents',
			        height: 400,
			        minHeight: null,             // set minimum height of editor
			        maxHeight: null,             // set maximum height of editor
			      });
		})
	</script>
</head>
<body>
	<div class="board_div">
		<h2 class="page-header">Write</h2>
 		<form class="form" id="boardSearchVO" name="boardSearchVO">
			<input type="hidden" id="pageIndex" name="pageIndex" value="${boardSearchVO.pageIndex}"/>
			<input type="hidden" id="pageSize" name="pageSize" value="${boardSearchVO.pageSize}"/>
			<input type="hidden" id="bbs_sno" name="bbs_sno" value="${boardSearchVO.bbs_sno}"/>
			<input type="hidden" id="usr_id" name="usr_id" value="${boardSearchVO.usr_id}"/>
			<input type="hidden" id="title" name="title" value="${boardSearchVO.title}"/>
        </form>
        <form class="form-horizontal"  id="boardForm" name="boardForm" method="post" enctype="multipart/form-data">
        	<input type="hidden" id="bbs_contents" name="bbs_contents" value=""/>
        	<input type="hidden" id="ntc_yn" name="ntc_yn" value="N"/>
        	<input type="hidden" id="atch_file_sno" name="atch_file_sno" value="0"/>
        	<input type="hidden" id="bbs_sno" name="bbs_sno" value="${boardSearchVO.bbs_sno}"/>    	
		  <div class="form-group">
		    <label for="inputEmail3" class="col-sm-2 control-label">Title</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="bbs_title" name="bbs_title" placeholder="Title">
		    </div>
		  </div>
		  <div class="form-group">
		   	<label for="inputPassword3" class="col-sm-2 control-label">contents</label>
		   	<div class="col-sm-10">
		   		<div id="summernote"></div>
		   	</div>
		  </div> 
		</form>
        <div class="pull-right"><a href="#" class="btn btn-primary btn-success boardAddBtn"><span class="glyphicon glyphicon-pencil"></span> Write</a></div>   
    </div>
</body>
</html>