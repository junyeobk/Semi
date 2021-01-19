<%@page import="kr.or.kh.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String id = (String)session.getAttribute("ID"); 
    String name = (String)session.getAttribute("NAME");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KHJSP</title>
</head>
<body>
	<header id="header">
	    <div class="container">
			<div class="header">
				<div class="header_menu">
					<img src="img/logo_black.png" title="logo" class="logo-icon"/>
					<a href="index.jsp">홈</a> 
					<%if(id!=null){
                        	out.print("<a href='memberLogout.mb'>로그아웃</a>");
                         	out.print("<a href='memberList.mb'>회원목록</a>");
                         	out.print("<a href='mypage.jsp'>마이페이지</a>");
                        } else {
                        	out.print("<a href='LoginForm.jsp'>로그인</a>");
                        	 out.print("<a href='memberForm.jsp'>회원가입</a>");
                        }
                        	%>
				</div>
				<img src="img/main1.png" title="name" class="header-icon" />
			</div>
			<!-- //header_menu-->
		</div>
	</header>
</body>
</html>