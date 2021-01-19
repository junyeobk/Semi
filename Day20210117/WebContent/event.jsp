<%@page import="kr.or.kh.member.MemberDAO"%>
<%@page import="kr.or.kh.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.lang.Math" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/custom.css">
<link href='packages/core/main.css' rel='stylesheet' />
<link href='packages/daygrid/main.css' rel='stylesheet' />
<script src='packages/core/main.js'></script>
<script src='packages/interaction/main.js'></script>
<script src='packages/daygrid/main.js'></script>
<script>
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');

		var calendar = new FullCalendar.Calendar(calendarEl, {
			plugins : [ 'interaction', 'dayGrid' ],
			defaultDate : '2021-01-12',
			editable : false,
			eventLimit : true, // allow "more" link when too many events
			events : [ {
				title : '겨울방학',
				start : '2021-01-11',
				end : '2021-01-21'
			}, {
				title : '개학',
				start : '2021-03-02'
			}, {
				title : '설날',
				start : '2021-02-11',
				end : '2021-02-14'
			}, {
				title : 'Click for Google',
				url : 'http://google.com/',
				start : '2019-08-28'
			} ]
		});

		calendar.render();
	});
</script>
<style>
#calendar {
	max-width: 800px;
	margin: 0 auto;
}
</style>
<title>커뮤니티</title>
</head>
<body>
	<%
      MemberDTO memberdto =new MemberDTO();
      MemberDAO memberdao =new MemberDAO();
      PrintWriter script = response.getWriter();
      int count = 0;
   
      String userID = null;
      if(session.getAttribute("ID") != null){
         userID = (String) session.getAttribute("ID");
      }

   %>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.jsp">
				홈
			</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
					<li class="active"><a href="bbs.jsp?boardID=1&pageNumber=1">방과후교실</a></li>
					<li class="active"><a href="bbs.jsp?boardID=2&pageNumber=1">시험자료</a></li>
					<li class="active"><a href="bbs.jsp?boardID=3&pageNumber=1">민원신청</a></li>
					<li class="active"><a href="bbs.jsp?boardID=4&pageNumber=1">학부모회</a></li>
					<li class="active"><a href="bbs.jsp?boardID=5&pageNumber=1">연구자료</a></li>
					<li class="active"><a href="bbs.jsp?boardID=6&pageNumber=1">업무자료실</a></li>
					<li class="active"><a href="bbs.jsp?boardID=7&pageNumber=1">공지사항</a></li>
					<li class="active"><a href="bbs.jsp?boardID=8&pageNumber=1">가정통신문</a></li>
					<li class="active"><a href="event.jsp">이달의행사</a></li>
			</ul>
			<%
				if(userID == null){		//로그인이 되어있지 않은 경우
			%>
			<ul class="nav navbar-nav navbar-right">
         		<li class="dropdown">
           			<a href="#" class="dropdown-toggle" 
            		data-toggle="dropdown" role="button" aria-haspopup="true" 
            		aria-expanded="false">접속하기<span class="caret"></span></a>
        		<ul class="dropdown-menu">
              		<li><a href="LoginForm.jsp">로그인</a></li>
              		<li><a href="join.jsp">회원가입</a></li>
            		</ul>    
         		</li>
       		</ul>
			<% 
				} else {
			%>
			<ul class="nav navbar-nav navbar-right">
         		<li class="dropdown">
           			<a href="#" class="dropdown-toggle" 
            		data-toggle="dropdown" role="button" aria-haspopup="true" 
            		aria-expanded="false">회원관리<span class="caret"></span></a>
        		<ul class="dropdown-menu">
					<li><a href="mypage.jsp">마이페이지</a></li>
              		<li><a href="index.jsp">로그아웃</a></li>
            	</ul>    
         		</li>
       		</ul>
			<%
				}
			%>
		</div>
	</nav>
	<div class="container">
		
		<h1>
			이달의행사<br>
		</h1>
		<p>
			자유롭게 글을 쓰는 곳입니다. 서로 존중하며 글과 댓글을 남깁시다.<br>
			<br>
		</p>

		<div class=container style="text-align:center">
			<div id='calendar'></div>
		</div>
	</div>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script> 
</body>
</html>