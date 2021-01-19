<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
	.wrap {width: 60%; margin: 0 auto;}
	section {float: left; width: 80%; background: white;}
      
        .gallery_content:hover .overlay.right {
            top: 0;
        }
        #gallery_layout {
            width: 560px;
            margin: 2% auto;
        }
        #gallery_layout:after {
            content: "";
            display: block;
            clear: both;
        }
        .gallery_content {
            position: relative;
            float: left;
            width: 50%;
            overflow: hidden;
        }
        .gallery_content img {
            width: 100%;
            height: 240px;
            display: block;
            margin: 0 auto;
            transition: all 1s ease-in-out;
        }
        .content {
            z-index: 1;
            display: none;
            color: #fff;
            position: absolute;
            top: 45%;
            left: 45%;
        /*     transform: translate(-50%, -50%); */
        }
        
        .content h1 {
            font-size: 1.2em;
            text-transform: uppercase;
            text-align: center;
        }
        .content p {
            padding: 2px 0;
            font-size: 0.8em;
            text-align: center;
        }        
        .gallery_content:hover .content {
            display: block;
            transition: all 1s ease-in-out;
        }
        .gallery_content:hover img {
            transform: scale(1.2);
            transition: all 1s ease-in-out;
        }
        .overlay {
            display: none;
            width: 100%;
            height: 100%;
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            transition: top 0.3s, right 0.3s, bottom 0.3s, left 0.3s;
        }
        /* overlay color */

        .overlay.black {
            background-color: rgba(0, 0, 0, 0.5);
        } 
      
        .gallery_content:hover .overlay {
            display: block;
            transition: all 0.5s ease-in-out;
        }
        
        @media all and (min-width: 560px) {
            #gallery_layout {
                position: absolute;
                width: 60%;
            }  
            .gallery_content {
            width: 50%;
        }
        } 
        @media all and (max-width: 559px) {
        #gallery_layout {
            width: 100%;
        }
        .gallery_content {
            width: 50%;
        }
        }
        @media all and (max-width: 99px) {
        #gallery_layout {
            width: 100%;
        }
        .gallery_content {
            width: 50%;
        }
        }
        }
</style>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
<head>
 <meta charset="UTF-8">
 <title>교직원소개</title>
</head>
<body>
<div class="wrap">
    <jsp:include page="../menu_top.jsp" flush="false"/>
    <jsp:include page="../menu_left.jsp" flush="false"/>
	<section>
    <div style="width:80%; margin-left: 10%; margin-top: 5%;">
    <h1 style="color:#424242">교직원소개</h1>
    <hr>
  <div id="gallery_layout" style="width: 518px;">
        <div class="gallery_content">
            <img src="../img/teacher1.png" alt="teacher1">
            <div class="content">
                <h1>영어</h1>
                <p>박신혜</p>
            </div>
            <div class="overlay black"></div>
        </div>
        <div class="gallery_content top">
            <img src="../img/teacher2.png" alt="teacher2">
            <div class="content">
                <h1>수학</h1>
                <p>이선균</p>
            </div>
            <div class="overlay black"></div>
        </div>
        <div class="gallery_content">
            <img src="../img/teacher3.png" alt="teacher3">
            <div class="content">
                <h1>음악</h1>
                <p>신세경</p>
            </div>
            <div class="overlay black"></div>
        </div>
        <div class="gallery_content">
            <img src="../img/teacher4.png" alt="teacher4">
            <div class="content">
                <h1>과학</h1>
                <p>차은우</p>
            </div>
            <div class="overlay black"></div>
        </div>
        <div class="gallery_content">
            <img src="../img/teacher5.png" alt="teacher5">
            <div class="content">
                <h1>문학</h1>
                <p>송혜교</p>
            </div>
            <div class="overlay black"></div>
        </div>
        <div class="gallery_content">
            <img src="../img/teacher6.png" alt="teacher6">
            <div class="content">
                <h1>체육</h1>
                <p>현빈</p>
            </div>
            <div class="overlay black"></div>
        </div>
    </div>
    </div>
            </section>
    <jsp:include page="../bottom.jsp" flush="false"/>
    </div>
</body>
</html>