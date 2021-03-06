<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/custom.css">

<title>커뮤니티</title>
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("ID") != null){
			userID = (String) session.getAttribute("ID");
		}
		int pageNumber = 1; //기본페이지
		if (request.getParameter("pageNumber") != null){
			pageNumber = Integer.parseInt(request.getParameter("pageNumber")); //파라미터는 꼭 이런식으로 바꿔줘야됨
		}
		
		String search = null;
		if(request.getParameter("search") != null){
			search = request.getParameter("search");
		}
		String col = null;
		if(request.getParameter("col") != null){
			col = request.getParameter("col");
		}
		 int boardID = 1;
			if (request.getParameter("boardID") != null){
				boardID = Integer.parseInt(request.getParameter("boardID"));
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
              		<li><a href="login.jsp">로그인</a></li>
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
              		<li><a href="logout.jsp">로그아웃</a></li>
            	</ul>     
         		</li>
       		</ul>
			<%
				}
			%>
		</div>
	</nav>
	<div class="container">
	<%
			if (boardID == 1) {
		%>
		<h1>
			방과후교실<br>
		</h1>
		<p>
			자유롭게 글을 쓰는 곳입니다. 서로 존중하며 글과 댓글을 남깁시다.<br>
			<br>
		</p>
		<%
			} else if (boardID == 2) {
		%>
		<h1>
			시험자료<br>
		</h1>
		<p>
			자유롭게 글을 쓰는 곳입니다. 서로 존중하며 글과 댓글을 남깁시다.<br>
			<br>
		</p>

		<%
			} else if (boardID == 3) {
		%>
		<h1>
			민원신청<br>
		</h1>
		<p>
			자유롭게 글을 쓰는 곳입니다. 서로 존중하며 글과 댓글을 남깁시다.<br>
			<br>
		</p>

		<%
			} else if (boardID == 4) {
		%>
		<h1>
			학부모회<br>
		</h1>
		<p>
			자유롭게 글을 쓰는 곳입니다. 서로 존중하며 글과 댓글을 남깁시다.<br>
			<br>
		</p>

		<%
			} else if (boardID == 5) {
		%>
		<h1>
			연구자료<br>
		</h1>
		<p>
			자유롭게 글을 쓰는 곳입니다. 서로 존중하며 글과 댓글을 남깁시다.<br>
			<br>
		</p>

		<%
			} else if (boardID == 6) {
		%>
		<h1>
			업무자료실<br>
		</h1>
		<p>
			자유롭게 글을 쓰는 곳입니다. 서로 존중하며 글과 댓글을 남깁시다.<br>
			<br>
		</p>

		<%
			} else if (boardID == 7) {
		%>
		<h1>
			공지사항<br>
		</h1>
		<p>
			자유롭게 글을 쓰는 곳입니다. 서로 존중하며 글과 댓글을 남깁시다.<br>
			<br>
		</p>

		<%
			} else if (boardID == 8) {
		%>
		<h1>
			가정통신문<br>
		</h1>
		<p>
			자유롭게 글을 쓰는 곳입니다. 서로 존중하며 글과 댓글을 남깁시다.<br>
			<br>
		</p>

		<%
			} else if (boardID == 9) {
		%>
		<h1>
			이달의행사<br>
		</h1>
		<p>
			자유롭게 글을 쓰는 곳입니다. 서로 존중하며 글과 댓글을 남깁시다.<br>
			<br>
		</p>

		<%	 }%>
		<div class="container">
			<div class="row">
				<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th style="background-color: #eeeee; text-align: center;">번호</th>
							<th style="background-color: #eeeee; text-align: center;">제목</th>
							<th style="background-color: #eeeee; text-align: center;">작성자</th>
							<th style="background-color: #eeeee; text-align: center;">작성일</th>
							<th style="background-color: #eeeee; text-align: center;">조회수</th>
						</tr>
					</thead>
					<tbody>
						<%
							BbsDAO bbsDAO = new BbsDAO();
							ArrayList<Bbs> list = bbsDAO.SgetList(pageNumber,search,col,boardID);
							for(int i=0; i<list.size(); i++){	
							System.out.println(list.get(i));
						%>
						<tr>
							<td><%= list.get(i).getBbsID() %></td>
							<td><a href="view.jsp?boardID=<%=boardID%>&bbsID=<%= list.get(i).getBbsID() %>"><%= list.get(i).getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>") %></a></td>
							<td><%= list.get(i).getAuthor() %></td>
							<td><%= list.get(i).getBbsDate().substring(0,11) + list.get(i).getBbsDate().substring(11,13) + "시" + list.get(i).getBbsDate().substring(14,16) + "분" %></td>
							<td><%= list.get(i).getBbsreadcount() %></td>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>
				
			
			<form name='frm' method='GET' action='searchBbs.jsp'>
					<SELECT name='col'>
						<!-- 검색 컬럼 -->
<!-- 						<OPTION value='none'>전체</OPTION> -->
						<OPTION value='title'>제목</OPTION>
<!-- 						<OPTION value='content'>내용</OPTION> -->
<!-- 						<OPTION value='author'>작성자</OPTION> -->
					</SELECT> 
					<input type='text' name='search' value='<%=search %>' placeholder="검색">
					<input type='hidden' name='boardID' value='<%=boardID %>'>
					<button type='submit'>검색</button>
				</form>
				
				<a href="write.jsp" class="btn-primary pull-right">글쓰기</a>
				<div class=container style="text-align:center">
			<%
				BbsDAO bbsDAO1 = new BbsDAO();
				int pages = (int) Math.ceil(bbsDAO1.getCount(search)/10)+1;
				for(int i=1; i<=pages; i++){ %>
					<button type="button" onclick="location.href='searchBbs.jsp?boardID=<%=boardID%>&pageNumber=<%=i %>&search=<%=search %>&col=<%=col %>'"><%=i %></button>
				<%} %>
		</div>
			</div>
		</div>
	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script> 
	
</body>
</html>