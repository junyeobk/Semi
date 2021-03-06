<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>삼부초등학교</title>
    <style>
        #footer {border-top: 1px solid #dbdbdb;} 
        * {margin: 0; padding: 0;}
        a{color: black; text-decoration: none; font-size: 1.1em;}
        body {background: white;}
        header {width: 100%; height: 300px;}
        aside {float: left; width: 20%; height: 900px; background:white; }
        section {float: left; width: 80%; height: 20px; background: white;}
        footer {clear: both; width: 100%; height: 150px; background-color: #FAFAFA}

        
         /* 컨테이너 */
        .container {position: relative; margin: 0 auto; /* background: rgba(0,0,0,0.3); */}
        
        
         /* 헤더 */
        .row{height: 100px;}
        .header {height: 100px; }
        .header .logo-icon{height: 80%; width: 25%; padding-top: 1%; position: absolute; left: 0%;}
        .header .header_menu {width: 100%; text-align: right; font-weight: bold;}
        .header .header_menu a {color: #58ACFA ; padding: 8px 0 6px 10px; display: inline-block; transition: color 0.3s ease; font-family: 'Abel', sans-serif;}
        .header .header_menu a:hover {color: #F2F2F2;}
         .nav > div h3 {font-size: 18px; color: #58ACFA; font-weight: bold; margin-bottom: 4px;}
        .header-icon{height: 260%; width: 100%; padding-top: 0%; position: absolute;}
        
        /* 푸터 */
        .footer {text-align: center; padding: 30px 50px;} 
        .footer li {position: relative; display: inline; padding: 0 7px 0 10px; white-space: nowrap;}
        .footer li:before {content: ''; width: 1px; height: 12px; background-color: #dbdbdb; position: absolute; left: 0; top: 2px;}
        .footer li:first-child:before {width: 0;}
        .footer address {padding-top: 15px;}
        
        /* 화면 너비 0 ~ 1200px */
        @media (max-width: 1220px){
             .container {width: 100%;}
            #contents .container {border: 0;}
            
        }

        /* 화면 너비 0 ~ 768px */
        @media (max-width: 768px){
            .header .logo-icon{height: 80%; width: 40%;}
           .header-icon{width: 100%; height: 260%}
        }

        /* 화면 너비 0 ~ 480px */
        @media (max-width: 480px){
            header {height: 400px;}
            .header .logo-icon{height: 80%; width: 50%;}
            .header-icon{width: 100%; height: 260%}
            aside {float: left; width: 100%; height: 300px;}
            section {float: left; width: 100%; height: 300px;}
            
        }
   
        /* 레프트 스타일  */
   body {
    background:white; 
    font-family: Arial,sans-serif;
    font-size: 14px;
    line-height: 1.6;}
    
    #ALL {
    width: 100%;
    margin: 30px auto;
    background: #FFFFD2;
    padding: 20px;
    }  
      
   .menu {
   
    width:100%;
    height: auto;
    background: #9DCFFF;}
  
   .mainmenu a { 
      
    position: relative;
    display: block;
    width: 100%;
    height: 45px;
    color: black; 
    font-family: Arial;
    font-size: 15px;
    font-weight: bold;
    letter-spacing: 1px;
    text-transform: uppercase;
    text-decoration: none;
    cursor: pointer;}
    
    .mainmenu li{
    border-bottom:2px solid gray;
        width: 100%;
        list-style: none;
        padding: 0;
        margin: 0;
        float: left;
        overflow: hidden;
        text-align: center;    
        line-height: 45px;
      }
      
      .submenu{
          border: 3px solid #5587ED;
          width: 100%;
          display:none;
          position:static;
          background: #FFF;  
      }
     .submenu li{
      border-bottom: 0px solid white;
        width: 100%;
        float:none;
       list-style-type:none;
        overflow: hidden;
        text-align: center;    
        line-height: 45px;
      }
      .submenu li a{
          color: black;
          text-align: center;
          font-size: 12px;
         
      }
      
      .mainmenu li:hover ul {
     display:block;
    
    }
    .mainmenu li:hover {
          
        background-color:#6EE3F7;
      } 
    .submenu li:hover{
        background-color:#FFF;
      }
      .submenu li:hover a{
       font-size: 1.1em;
      }

    </style>
</head>
<body>
<aside>
	<div class="menu">
	    <ul class="mainmenu">
	        <li><a href="#">학교안내</a>
	            <ul class="submenu">
	            <li><a href="#">인삿말</a></li>
	            <li><a href="#">교육목표</a></li>
	            <li><a href="#">학교현황</a></li>
	            <li><a href="#">교직원소개</a></li>
	            <li><a href="#">교가</a></li>
	            <li><a href="#">학교둘러보기</a></li>
	            <li><a href="#">오시는길</a></li>
	            </ul>
	        </li>
	        <li><a href="#">학생마당</a>
	            <ul class="submenu">
	            <li><a href="#">방과후교실</a></li>
	            <li><a href="#">시험자료</a></li>
	            </ul>
	        </li>
	        <li><a href="#">학부모마당</a>
	            <ul class="submenu">
	            <li><a href="#">민원신청</a></li>
	            <li><a href="#">학부모회</a></li>
	            </ul>
	        </li>
	        <li><a href="#">선생님마당</a>
	            <ul class="submenu">
	            <li><a href="#">연구자료</a></li>
	            <li><a href="#">업무자료실</a></li>
	            </ul>
	        </li>
	        <li><a href="#">알림마당</a>
	            <ul class="submenu">
	            <li><a href="#">공지사항</a></li>
	            <li><a href="#">가정통신문</a></li>
	            </ul>
	        </li>
	    </ul>
	</div> 
</aside>
</body>
</html>