<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
 <style>
   .wrap {width: 900px; margin: 0 auto;}
    section {float: left; width: 80%; height: 700px; background: white;}
    </style>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<div class="wrap">
    <jsp:include page="../top.jsp" flush="false"/>
    <jsp:include page="../left.jsp" flush="false"/>
	<section>
    <div style="width:100%; margin-left: 5%; margin-top: 5%;">
    <h1 style="color:#424242">학교장인사말</h1>
    <hr>
        <img src ="../img/hi.png" style="height:100%; width: 100%;">
    </div>
        </section>
    <jsp:include page="../bottom.jsp" flush="false"/>
    </div>
</body>
</html>