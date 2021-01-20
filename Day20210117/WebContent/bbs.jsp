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
<link rel="stylesheet" href="css/Left-style.css">
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
      int pageNumber = 1; //페이지 첫번쨰부터
      if (request.getParameter("pageNumber") != null){
         pageNumber = Integer.parseInt(request.getParameter("pageNumber")); //파라미터는 꼭 이런식으로 바꿔줘야됨
      }
       int boardID = 1;
         if (request.getParameter("boardID") != null){
            boardID = Integer.parseInt(request.getParameter("boardID"));
         }
      request.setAttribute("boardID", boardID);
   

      
      if((boardID ==1 || boardID ==2 || boardID ==3 || boardID ==4 || boardID ==5 || boardID ==6) && userID == null)
      {
          script.println("<script>");
             script.println("alert('로그인해주세요')");
             script.println("location.href='LoginForm.jsp'");
             script.println("</script>");
      }else
      {
         if((boardID == 3 || boardID == 4 )&& !(memberdao.userinfo(userID).getStype().equals("2") || memberdao.userinfo(userID).getStype().equals("0")))
         {
             script.println("<script>");
                script.println("alert('학부모 회원만 접근이 가능합니다')");
                script.println("history.back()");
                script.println("</script>");
         }
         
         if((boardID ==5 || boardID ==6) && !(memberdao.userinfo(userID).getStype().equals("3") || memberdao.userinfo(userID).getStype().equals("0")))
         {
             script.println("<script>");
                script.println("alert('선생님 회원만 접근이 가능합니다')");
                script.println("history.back()");
                script.println("</script>");
         }
         
      }
   %>
   

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
// 							bbsDAO.setting(bbsDAO.getAllCount());
							ArrayList<Bbs> list = bbsDAO.getList(pageNumber, boardID);
							for(int i=0; i<list.size(); i++){	
						%>
						<tr>
							<td><%= list.get(i).getBbsID() %></td>
							<td><a href="left.jsp?page=view&boardID=<%=boardID%>&bbsID=<%= list.get(i).getBbsID() %>"><%= list.get(i).getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>") %></a></td>
							<td><%= list.get(i).getAuthor() %></td>
							<td><%= list.get(i).getBbsDate().substring(0,11) + list.get(i).getBbsDate().substring(11,13) + "시" + list.get(i).getBbsDate().substring(14,16) + "분" %></td>
							<td><%= list.get(i).getBbsreadcount() %></td>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>
			<!-- <form action="searchBbs.jsp" method="get" >
				<ul>
				<li><label for="검색" style="font-size: 20px;">검색 : </label> <input type="text"
					name="search" autofocus="autofocus" required="required"
					placeholder="제목입력">
					<input type="submit" value="검색"></li>
				</ul>
			</form>	 -->

				<form name='frm' method='GET' action='searchBbs.jsp'>
					<SELECT name='col'>
						<!-- 검색 컬럼 -->
<!-- 						<OPTION value='none'>전체</OPTION> -->
						<OPTION value='title'>제목</OPTION>
<!-- 						<OPTION value='content'>내용</OPTION> -->
<!-- 						<OPTION value='author'>작성자</OPTION> -->
					</SELECT> 
					<input type='hidden' name='boardID' value='<%=boardID %>'>
					<input type='text' name='search' value='' placeholder="검색">
					<button type='submit'>검색</button>
				</form>

				<a href="left.jsp?page=write&boardID=<%=boardID%>" class="btn-primary pull-right">글쓰기</a>
			</div>
		</div>
		<div class=container style="text-align:center">
			<%
				BbsDAO bbsDAO1 = new BbsDAO();
				int pages = (int) Math.ceil(bbsDAO1.getCount(boardID)/10)+1;
				for(int i=1; i<=pages; i++){ %>
					<button type="button" onclick="location.href='left.jsp?page=bbs&boardID=<%=boardID%>&pageNumber=<%=i %>'"><%=i %></button>
				<%} %>
		</div>
	</div>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script> 
</body>
</html>