<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style>
   body{
        background-color: #FFFFFF;
      }
      .right {
  position:fixed;
  width: 12%;
  height: 100%;
  top : 300px;
  right : 0px;
  border: 1px solid grey;
  color: #FFFFFF;
}
 .left {
  position:fixed;
  width: 12%;
  height: 100%;
  top : 300px;
  right : 0px;
  border: 1px solid grey;
  color: #FFFFFF;
}
butt{
 position:fixed;
 right : 0px;
}
.s{
border: 1px solid grey;
}
/* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }
    
        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 50%; /* Could be more or less, depending on screen size */                          
        }
        /* The Close Button */
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }
        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
</style>
<style>
.x{
}
</style>
</head>
<body>
<%@include file="header.jsp" %>
       <form action="<c:url value="/board/edit"/>" method="POST" enctype="multipart/form-data" >
    	 <div class="container" style = "border: 1px solid grey; padding: 10px 10px 10px 10px;  
    margin-top: 15px; margin-bottom: 15px;height: auto;  max-width: 500px; min-height: 100px; overflow: auto;">
  <label><input value="${boardVO2.title}" type="text" name="title" placeholder="제목" style = "padding-top: 0px; padding-bottom: 0px"></label>
   <div class="w3-panel w3-border-top w3-border-bottom" style = "margin-top: 0px; margin-bottom: 0px">
    </div>
      <div>
      <label><input value="${boardVO2.content}" type="text" name="content" placeholder="글 내용" style="width:250%;height:300px">	</label><!-- content,regdate 안됨 -->
       </div>
       <input type="hidden" value="${boardVO2.num}" name="num2">
       <div class="w3-panel w3-border-top w3-border-bottom">
        <div><input type="file" name="filename" value="${boardVO2.images}"></div>
        </div>
    	<div style = "float:right">
					<input type="submit" value="등록">
					<a href="<c:url value="/board/list"/>">목록</a>
					</div>
					</div>
		</form>
		<%@include file="footer.jsp" %>
</body>
</html>