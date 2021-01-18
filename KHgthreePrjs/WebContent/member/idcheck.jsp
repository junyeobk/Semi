<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
ul{list-style-type: none;}
#idcheck{
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
<div id="idcheck">
<h2>아이디 찾기</h2>
<form action="../idcheckConfirm.mb" method="get">
<ul id=checkbox>
<li><label for="전화번호">전화번호</label>
<input type="text" name="tel" required="required" autofocus="autofocus" placeholder="전화번호입력" class="check_id">
</li>
<li><input type="submit" value="확인" class="submit">
</li>
</ul>
</form>
</div>
</body>
</html>