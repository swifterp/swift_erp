<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
<title>서머노트 체험중</title>
<meta charset="UTF-8">
<!-- <link rel="stylesheet" href="../../dist/summernote.css">
<link rel="stylesheet" href="../../dist/summernote-bs4.css">
<link rel="stylesheet" href="../../css/boostrap.css">
<link rel="stylesheet" href="../../css/boostrap.min.css">
  
<script src="../../js/jquery.min.js"></script>
<script src="../../js/bootstrap.js"></script>
<script src="../../dist/summernote.js"></script>
<script src="../../dist/summernote-bs4.js"></script>
 -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
    <script src="../../dist/lang/summernote-ko-KR.js"></script>
</head>
<body>

공통양식 조회 페이지 입니다.<p>

<div id="summernote"></div>
    <script>
      $('#summernote').summernote({
        placeholder: 'Hello bootstrap 4',
        tabsize: 2,
        height: 500
      });
</script>
</body>

</html>
