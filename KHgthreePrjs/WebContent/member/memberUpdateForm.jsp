<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
ul{list-style-type: none;}
#memberUpdateForm{
position: absolute;
top:300px; left:700px;
width:400px;
text-align: center;
border:1px solid gray;
}
#updatebox{
padding: 0 0;
margin: 0px;
text-align: center;
}
.update_id{
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
<div id="memberUpdateForm">
<h2>회원아이디수정</h2>
<form action="../memberUpdateConfirm.mb" method="post">
<ul id=updatebox>
<li><label for="아이디">아이디</label>
<input type="text" name="id" autofocus="autofocus" required="required" placeholder="수정할 아이디 입력" class="update_id">
</li>
<li><input type="submit" value="확인" class="submit">
</li>
</ul>
</form>
</div>
</body>
</html>