<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
  <meta charset="utf-8">
  <title>KHJSP</title>

 </head>
 <body>
  <div id="ALL"> 
   <div class="menu">
    <ul>
     <li><%String id = (String)session.getAttribute("id"); 
     if(id!=null){
     out.print("<a href=index.jsp?page=haksaInfo>학사소개</a>");
     }else{
    	 out.print("<a href=index.jsp?page=kh onclick=alert('로그인하세요')>학사소개</a>");
     }
     %></li>
     <li><%if(id!=null){
    	 out.print("<a href=boardList.bo>커뮤니티</a>");
     }else{
    	 out.print("<a href=index.jsp?page=kh onclick=alert('로그인하세요')>커뮤니티</a>");
     }
     %>
     </li>
     <li><a href="mailForm.jsp">자바메일</a></li>
     <li><a href="zoomkh.jsp">KHB반클레스</a></li>
     <li><a href="thumnali.jsp">포트폴리오</a></li> 
    </ul>
   </div>
   <div id="homeregister">
      <a href="index.jsp">홈|</a>
      <a href="member/memberForm.jsp">회원가입|</a>
      <% id = (String)session.getAttribute("id"); 
      if(id==null){%>
      <a href="member/LoginForm.jsp">로그인</a>
      <%} %>
      <div id="idlogin">
      <%
         id = (String)session.getAttribute("id");
         if(id!=null){
        	 out.print(id+"님 환영합니다.<br>");
        	 out.print("<a href=memberLogout.mb>로그아웃</a><br>");       	 
        	 out.print("<a href=memberList.mb>회원목록</a><br>");
        	 out.print("<a href=member/memberoutForm.jsp>회원탈퇴</a><br>");

         }
      %>
    
      </div>
   </div>
  </div>
  <script src="js/top.js"></script>
     </body>
</html>