<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String pagefile=request.getParameter("page");
   if(pagefile==null){
   pagefile="bbs";
   }   
%> 
<%String id = (String)session.getAttribute("ID"); 
    String name = (String)session.getAttribute("NAME");%> 
    
<!DOCTYPE html>
<html lang="ko">

<head>

    <meta charset="UTF-8">
    <title>삼부초등학교</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
     <link rel="stylesheet" href="css/Left-style.css">
       
</head>
<body>
    <script src="js/listscript.js"></script>
    
    
    
    
    <div id="wrap" style="width: 60%; margin: 0 auto;">
       <header id="header">
        
        <div class="container">
            <div class="row">
               
                <div class="header">
                   <div class="header_menu">
                    <div class="banner">
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
                    </div> 
                       <img src="img/main1.png" title="name" class="header-icon"/>  
                     </div>
                    <!-- //header_menu-->
            </div>
            
        </div>
    </header>
	<div class="gruop">
       <jsp:include page="menu_left.jsp" flush="false" />
        <section >
        <jsp:include page='<%= pagefile+".jsp" %>'/>
        </section>
        </div>
        
    
</div>
 
</body>
</html>