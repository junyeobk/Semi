<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
ul{list-style-type: none;}
#memberoutForm{
position: absolute;
top:300px; left:700px;
width:400px;
text-align: center;
border:1px solid gray;
}
#checkbox{
padding: 0 0;
margin: 0px;
text-align: center;
}
.check_id{
width: 197px;
height: 20px;
margin-bottom: 4px;
}
.submit{
width: 258px;
height: 25px;
margin-bottom: 30px;
}
</style>
<meta charset="UTF-8">
<title>KHJSP</title>
</head>
<body>
<div id="memberoutForm">
<h2>회원탈퇴</h2>
<form action="../memberDelete.mb" method="get">
<ul id=checkbox>
<li><label for="패스워드">패스워드</label>
<input type="password" name="pw" required="required" autofocus="autofocus" placeholder="탈퇴할 패스워드입력" class="check_id">
</li>
<li><input type="submit" value="확인" class="submit"></li>
</ul>
</form>
</div>
</body>
</html>