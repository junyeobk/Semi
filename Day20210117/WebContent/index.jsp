<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head><!---->
    <meta charset="UTF-8">
    <title>layout6</title>
        
    <link rel="stylesheet" href="css/slick.css">
    <link rel="stylesheet" href="css/font-awesome.css">
    
    <!-- 웹 폰트 -->
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Brush+Script" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Abel&display=swap" rel="stylesheet">
    <style>
         /* 폰트 초기화 */
        body, input, textarea, select, button, table {font-family: 'Nanum Gothic', AppleSDGothicNeo-Regular,'Malgun Gothic','맑은 고딕',dotum,'돋움',sans-serif; color: #222; font-size: 13px; line-height: 1.5;}
        
        /*반응형 이미지 초기화*/ 

        img {width: 100%;}
        
        /* 레이아웃 */
        /*body {background: url(../img/header_bg.jpg) repeat-x center top;}*/
        #header {}
        #nav {background-color: #FAFAFA ;}
        #title {background-color: #58ACFA; clear: both;}
        #footer {border-top: 1px solid #dbdbdb;} 

        
        * {margin: 0; padding: 0;}
        a{color: black; text-decoration: none; font-size: 1.1em;}
        body { background-color: white;}
        #wrap {width: 900px; margin: 0 auto;}
        header {width: 100%; height: 300px; background-color: #fff;}
        #main_image{width: 100%; height: 65%; background-color: #fff;}
        article {width: 100%; height: 50px; background-color: #81DAF5 ; border-radius: 10px; }
        section {overflow: hidden; padding: 1%; width: 98%; background-color: #fff; text-align: center;}
        #cont_center > div {width: 48%; margin: 1%; height: 300px; background-color: #FAFAFA ; float: left; border-radius: 5px;
        }
        #quick > div {width: 14.666%; margin: 1%; height: 150px; background-color: #F5ECCE ; float: left; border-radius: 5px; }
        #banner > div {width: 100%; height: 70px; background-color: #FAFAFA; float: left; border-radius: 5px;}
        footer {width: 100%; height: 100px; background-color: #FAFAFA}
        .quick-icon{width: 60%; height: 50%; margin: 8%; }
        .map{width: 60%; height: 40%; margin: 2%; }
        #quick a{color: black; text-decoration: none; font-size: 1.1em; font-weight: bold;}
        
        /* 컨테이너 */
        .container {position: relative; margin: 0 auto; /* background: rgba(0,0,0,0.3); */}
        
         /* 헤더 */
        
        .header {height: 100px;}
        .header .logo-icon{height: 80%; width: 25%; padding-top: 1%; position: absolute; left: 0%;}
        .header .header_menu {width: 100%; text-align: right; font-weight: bold;}
        .header .header_menu a {color: #58ACFA ; padding: 8px 0 6px 10px; display: inline-block; transition: color 0.3s ease; font-family: 'Abel', sans-serif;}
        .header .header_menu a:hover {color: #F2F2F2;}
        #main_image > img{ 
        position: relative; top:0; left: 0;
        width: 100%;
        height: 100%;
        }}
         /* 전체 메뉴 */
        .nav {overflow: hidden; padding: 10px 0; display: none;}
        .nav > div {float: left; width: 18%; padding: 1%}
        .nav > div ol {overflow: hidden;}
        .nav > div li {float: left; width: 100%; position: relative; padding-left: 25px; box-sizing: border-box;}
        .nav > div li:before {
            content: '';
            width: 3px; height: 3px;
            background-color: #58ACFA;
            border-radius: 50%;
            position: absolute; left: 10px; top: 10px;
        }
        .nav > div h3 {font-size: 18px; color: #58ACFA; padding-left: 10px; font-weight: bold; margin-bottom: 4px;}
        .nav > div li a {position: relative;}
        .nav > div li a:after {
            content: '';
            display: inline-block;
            width: 0; height: 1px;
            background: #58ACFA;
            transition: all .2s ease-out;
            position: absolute; bottom: 0; left: 0;
        }
        .nav > div li:hover a:after {width: 100%;}

        
         /* 타이틀 */
        .title {position: relative; text-align: center;}
        .title h2 {font-size: 23px; color: #fff; padding: 10px 0;}
        .title .btn {
            position: absolute; right: 0; top: 10px;
            width: 30px; height: 30px;
            line-height: 25px;
            background: #FAFAFA; color: #084B8A;
            font-size: 20px;
            border-radius: 50%;
            transition: all 0.3s ease;
        }
        .title .btn:hover {
            box-shadow:
                0 0 0 3px rgba(71,154,191,0.9) inset,
                0 0 0 100px rgba(0,0,0,0.1) inset; 
        }


       
        /*공지사항*/
        .notice1 h1 {font-size: 1.5em; color: #fff; padding: 10px;}
        .notice1 li {position: relative; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; padding-top: 6%;}
        /*.notice1 li:before {
            content: '';
            width: 5px; height: 5px;
            border-radius: 50%;
            background: #449ce2;
            position: absolute; left: 3px; top: 20px;
        }*/
        .notice1 .plus{color: #fff; font-size: 0.8em; position: absolute; right: 5%; top: 22px;}
        
        /*이미지 슬라이드*/
        .slider figure img{position: relative; width: 70%; height: 50%; margin: 0 auto;}
        .slider1 figure img {position: relative; width: 320px; height: 80px; margin: 0 auto;}
        .slider .slick-dots {display: block; width: 100%; text-align: center;}
        .slider .slick-dots li {display: inline-block; width: 10px; height: 10px; margin: 10px;}
        .slider .slick-dots li button {
            font-size: 0; line-height: 0;
            display: block; width: 10px; height: 10px;
            cursor: pointer;
            background: #5dbfeb;
            border-radius: 50%;
        }
        .slider .slick-dots li.slick-active button {background: #2b91c8;}
        .slider .slick-prev {
            position: absolute; left: 0; bottom: 0; z-index: 1000;
            width: 30px; height: 30px;
            display: inline-block;
            text-indent: -9999px;
            font: normal normal normal 14px/1 FontAwesome;
        }
        .slider .slick-prev::before {
            content:"\f053";
            color: #5dbfeb;
            text-indent: 0;
            position: absolute; left: 9px; top: 8px;
        }
        .slider .slick-next {position: absolute; right: 0; bottom: 0; z-index: 1000;
            width: 30px; height: 30px;
            display: inline-block;
            text-indent: -9999px;
            font: normal normal normal 14px/1 FontAwesome;
        }
        .slider .slick-next::before { 
            content:"\f054";
            color: #5dbfeb;
            text-indent: 0;
            position: absolute; left: 11px; top: 8px;
        }
         /* 푸터 */
        .footer {text-align: center; padding: 30px 50px;} 
        .footer li {position: relative; display: inline; padding: 0 7px 0 10px; white-space: nowrap;}
        .footer li:before {content: ''; width: 1px; height: 12px; background-color: #dbdbdb; position: absolute; left: 0; top: 2px;}
        .footer li:first-child:before {width: 0;}
        .footer address {padding-top: 15px;}

        /* 화면 너비 0 ~ 1200px */
        @media (max-width: 1220px){
            #wrap {width: 100%;}
            .container {width: 100%;}
            .nav > div {width: 31.33%; padding: 1%}
            /*.row {padding: 0 15px;}*/
            #contents .container {border: 0;}

            .title .btn {right: 5px;}

        }

        /* 화면 너비 0 ~ 768px */
        @media (max-width: 768px){
            .nav > div li{float: none; width: 100%;}
            .header .logo-icon{height: 80%; width: 40%;}
            #cont_center > div {width: 98%;}
            #quick > div {width: 31.33%}
        }

            /* 화면 너비 0 ~ 550px */
        @media (max-width: 550px){
            .header .logo-icon{height: 80%; width: 50%;}
            /*.title .btn {display: none;}*/
            .nav > div li {width: 100%;}
            
            #cont_center > div {width: 98%;}
            #quick > div {width: 48%}
            .slider1 figure img {position: relative; width: 80%; height: 20%; overflow: hidden; margin: 0 auto;}
        }
    </style>
</head>

<body>
    <div id="wrap">
       <header id="header">
        <div class="container">
            <div class="row">
                <div class="header">
                   <div class="header_menu">
                     <img src="img/logo_black.png" title="logo" class="logo-icon"/>
                        <a href="#">홈</a>
                        <a href="login.jsp">로그인</a>
                        <a href="#">회원가입</a>
                    </div>
                    </div>
                    <!-- //header_menu -->
            </div>
        </div>
        <div id="main_image">
            <img src="img/main1.png">
        </div>
        <div>
        <!-- <img src="img/main.png">-->
        </div>
    </header>
       <!-- //header --> 
       
       <article id="title">
        <div class="container">
            <div class="title">
                <h2>MENU</h2>
                <a href="#" class="btn">
                    <i class="fa fa-angle-down" aria-hidden="true"></i>
                    <span class="ir_su"></span>
                </a>
            </div>
        </div>
    </article>
    <!-- //title -->
       
        <nav id="nav">
        <div class="container">
            <div class="row">
                <div class="nav">
                    <h2 class="ir_su"></h2>
                    <div class="last">
                        <h3>학교안내</h3>
                        <ol>
                            <li><a href="#">인삿말</a></li>
                            <li><a href="#">교육목표</a></li>
                            <li><a href="#">학교현황</a></li>
                            <li><a href="#">교직원소개</a></li>
                            <li><a href="#">교가</a></li>
                            <li><a href="#">학교둘러보기</a></li>
                            <li><a href="#">오시는길</a></li>
                        </ol>
                    </div>
                    <div class="last">
                        <h3>학생마당</h3>
                        <ol>
                            <li><a href="bbs.jsp?boardID=1&pageNumber=1">방과후교실</a></li>
                            <li><a href="bbs.jsp?boardID=2&pageNumber=1">시험자료</a></li>
                        </ol>
                    </div>
                    <div class="last">
                        <h3>학부모마당</h3>
                        <ol>
                            <li><a href="bbs.jsp?boardID=3&pageNumber=1">민원신청</a></li>
                            <li><a href="bbs.jsp?boardID=4&pageNumber=1">학부모회</a></li>
                        </ol>
                    </div>
                    <div class="last">
                        <h3>선생님마당</h3>
                        <ol>
                            <li><a href="bbs.jsp?boardID=5&pageNumber=1">연구자료</a></li>
                            <li><a href="bbs.jsp?boardID=6&pageNumber=1">업무자료실</a></li>
                        </ol>
                    </div>
                    
                    <div class="last">
                        <h3>열림마당</h3>
                        <ol>
                            <li><a href="bbs.jsp?boardID=7&pageNumber=1">공지사항</a></li>
                            <li><a href="bbs.jsp?boardID=8&pageNumber=1">가정통신문</a></li>
                             <li><a href="bbs.jsp?boardID=9&pageNumber=1">이달의행사</a></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <!-- nav -->
      
       
        
        <section id="contents">
           <div class="container">
            <section id="cont_center">
                <div>
                <article class="column col2">
                        <!-- 게시판 -->
                        <div class="notice1">
                            <h1>공지사항 <a href="#" class="plus">더보기 +</a></h1>
                            <ul>
                                <li><a href="#"> 이 줄은 한 줄 효과입니다. 이 줄은 한 줄 효과입니다. 이 줄은 한 줄 효과입니다. 이 줄은 한 줄 효과입니다.</a></li>
                                <li><a href="#"> 이 줄은 한 줄 효과입니다. 이 줄은 한 줄 효과입니다. 이 줄은 한 줄 효과입니다. 이 줄은 한 줄 효과입니다.</a></li>
                                <li><a href="#"> 이 줄은 한 줄 효과입니다. 이 줄은 한 줄 효과입니다. 이 줄은 한 줄 효과입니다. 이 줄은 한 줄 효과입니다.</a></li>
                                <li><a href="#"> 이 줄은 한 줄 효과입니다. 이 줄은 한 줄 효과입니다. 이 줄은 한 줄 효과입니다. 이 줄은 한 줄 효과입니다.</a></li>
                            </ul>
                        </div>
                        <!-- //게시판 -->
                    </article>
                </div>
                <div>
                    <article class="column col2">
                        <!-- 게시판 -->
                        <div class="notice1">
                            <h1>가정통신문<a href="bbs.jsp?boardID=8&pageNumber=1" class="plus">더보기 +</a></h1>
                            <ul>
                                <li><a href="#"> 이 줄은 한 줄 효과입니다. 이 줄은 한 줄 효과입니다. 이 줄은 한 줄 효과입니다. 이 줄은 한 줄 효과입니다.</a></li>
                                <li><a href="#"> 이 줄은 한 줄 효과입니다. 이 줄은 한 줄 효과입니다. 이 줄은 한 줄 효과입니다. 이 줄은 한 줄 효과입니다.</a></li>
                                <li><a href="#"> 이 줄은 한 줄 효과입니다. 이 줄은 한 줄 효과입니다. 이 줄은 한 줄 효과입니다. 이 줄은 한 줄 효과입니다.</a></li>
                                <li><a href="#"> 이 줄은 한 줄 효과입니다. 이 줄은 한 줄 효과입니다. 이 줄은 한 줄 효과입니다. 이 줄은 한 줄 효과입니다.</a></li>
                            </ul>
                        </div>
                        <!-- //게시판 -->
                    </article>
                </div>
                <div>
                    <article class="column col2">
                       <div class="notice1">
                            <h1>학교둘러보기</h1>
                        <div class="slider">              
                            <div>
                                <figure>
                                    <img src="img/gil.jpg" alt="둘러보기"  id="gil">
                                </figure>
                            </div>
                            <div>
                                <figure>
                                    <img src="img/gil1.jpg" alt="둘러보기"  id="gil">
                                </figure>
                            </div>
                            <div>
                                <figure>
                                    <img src="img/gil2.jpg" alt="둘러보기"  id="gil">
                                </figure>
                            </div>
                        </div>
                        <!-- //이미지 슬라이드 -->
                        </div>
                        <!-- //게시판 -->
                    </article>
                </div>
                <div>
                    <article class="column col2">
                        <!-- 게시판 -->
                        <div class="notice1">
                            <h1>오시는길</h1>
                            <ul>
                               <img src="img/map.png" title="방과후" class="map"/>
                            </ul>
                        </div>
                        <!-- //게시판 -->
                    </article>
                </div>
            </section>
            <section id="quick">
                <div class="quick-box"><a href="#"><img src="img/pallete.png" title="방과후" class="quick-icon"/><br>방과후교실</a></div>
                <div class="quick-box"><a href="#"><img src="img/board.png" title="시험" class="quick-icon"/><br>시험자료</a></div>
                <div class="quick-box"><a href="#"><img src="img/plane.png" title="민원" class="quick-icon"/><br>민원신청</a></div>
                <div class="quick-box"><a href="#"><img src="img/note.png" title="학부모" class="quick-icon"/><br>학부모회</a></div>
                <div class="quick-box"><a href="#"><img src="img/graduation.png" title="연구" class="quick-icon"/><br>연구자료</a></div>
                <div class="quick-box"><a href="#"><img src="img/book.png" title="업무" class="quick-icon"/><br>업무자료실</a></div>
            </section>
            <section id="banner">
                <div >
                    <div class="slider1">              
                            <div>
                                <figure>
                                    <img src="img/banner1.jpg" alt="이미지1">
                                </figure>
                            </div>
                            <div>
                                <figure>
                                    <img src="img/banner2.png" alt="이미지2">
                                </figure>
                            </div>
                            <div>
                                <figure>
                                    <img src="img/banner3.jpg" alt="이미지3">
                                </figure>
                            </div>
                            <div>
                                <figure>
                                    <img src="img/banner4.jpg" alt="이미지1">
                                </figure>
                            </div>
                            <div>
                                <figure>
                                    <img src="img/banner5.png" alt="이미지1">
                                </figure>
                            </div>
                            <div>
                                <figure>
                                    <img src="img/banner6.png" alt="이미지1">
                                </figure>
                            </div>
                            <div>
                                <figure>
                                    <img src="img/banner7.jpg" alt="이미지1">
                                </figure>
                            </div>
                            <div>
                                <figure>
                                    <img src="img/banner8.png" alt="이미지1">
                                </figure>
                            </div>
                            
                        </div>
                        <!-- //이미지 슬라이드 -->
                    <!-- //col4 -->
                </div>
            </section>
            </div>
        </section>
        <footer id="footer">
        <div class="container">
            <div class="row">
                <div class="footer">
                    <ul>
                        <li><a href="#">사이트 도움말</a></li>
                        <li><a href="#">사이트 이용약관</a></li>
                        <li><a href="#">사이트 운영원칙</a></li>
                        <li><a href="#"><strong>개인정보취급방침</strong></a></li>
                        <li><a href="#">책임의 한계와 법적고지</a></li>
                        <li><a href="#">게시중단요청서비스</a></li>
                        <li><a href="#">고객센터</a></li>
                    </ul>
                    <address>
                        Copyright ©
                        <a href="http://webstoryboy.co.kr"><strong>상부삼조</strong></a>
                        All Rights Reserved.
                    </address>
                </div>
            </div>
        </div>
    </footer>
    <!-- //footer -->
    </div>
        <script src="js/jquery.min_1.12.4.js"></script>
        <script src="js/slick.min.js"></script>
        <script>
        //이미지 슬라이더
        $(".slider").slick({
            dots: true,
            autoplay: true,
            autoplaySpeed: 3000,
            arrows: false,
            responsive: [
                {
                    breakpoint: 768,
                    settings: {
                        arrows: true,
                        dots: false
                        }
                }
            ]
        });
            $(".slider1").slick({
            dots: true,
            autoplay: true,
            autoplaySpeed: 5000,
            arrows: false,
            infinite: true,
              slidesToShow: 3,
              slidesToScroll: 3,
            responsive: [
                {
                    breakpoint: 768,
                    settings: {
                        arrows: true,
                        dots: false
                        }
                }
            ]
        });
            
            //접기/펼치기
            $(".btn").click(function(e){
                e.preventDefault();
                $(".nav").slideToggle();
                $(".btn").toggleClass("open");

                if($(".btn").hasClass("open")){
                    //open이 있을 때
                    $(".btn").find("i").attr("class","fa fa-angle-up");                
                } else {
                    //open이 없을 때
                    $(".btn").find("i").attr("class","fa fa-angle-down");
                }
            });
    </script>
    
</body>
</html>