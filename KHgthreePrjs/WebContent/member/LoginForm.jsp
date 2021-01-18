<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
ul{list-style-type: none;}
#LoginForm{
position: absolute;
top:300px; left:700px;
width:400px;
text-align: center;
border:1px solid gray;
}
.logo1{
padding: 30px 0;
margin-bottom: 0px;
text-align: center;
}
#loginbox{
padding: 0 0;
margin: 0px;
text-align: center;
}
.login_id, .login_pw{
width: 250px;
height: 20px;
margin-bottom: 4px;
}
.submit{
width: 258px;
height: 25px;
}
</style>
<meta charset="UTF-8">
<title>KHJSP</title>
</head>
<body>
<div id="LoginForm">
<div class="logo1">
<img src="../images/daouLogo.png">
</div>
<form action="../memberLogin.mb" method="get">
<ul id=loginbox>
<li><label for="아이디"></label>
<input type="text" name="id" maxlength="10" size="20" autofocus="autofocus" required="required" placeholder="아이디입력" class="login_id">
</li>
<li><label for="패스워드"></label>
<input type="password" name="pw" maxlength="10" size="20" placeholder="패스워드입력" class="login_pw">
</li>
<li><input type="submit" value="로그인" class="submit"><p>
<a href="memberForm.jsp">회원가입</a>&nbsp;
<a href="idcheck.jsp">아이디찾기</a>&nbsp;
<a href="passcheck.jsp">패스워드찾기</a>
</li>
</ul>
</form>
</div>
</body>
</html>