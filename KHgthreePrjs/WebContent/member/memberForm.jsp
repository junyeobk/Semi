<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
#memberForm{
position: absolute;
top:300px; left:700px;
width:400px;
text-align: center;
border:1px solid gray;
padding-bottom: 30px;
}
ul{
list-style-type: none;
padding: 0 50px;
margin: 0px;
text-align: left;
}
li{
margin-bottom: 4px;
}
</style>
<script type="text/javascript">
function win01(idform) {
	if(idform.id.value==""){
		return;
	}
	if(idform.id.value==" "){
		return;
	}
	window.open("../idcheck.mb?id="+idform.id.value,"win01","width=250 height=250");
}
</script>
<meta charset="UTF-8">
<title>KHJSP</title>
</head>
<body>
<div id="memberForm">
<h2>회원가입</h2>
<form action="../memberRegister.mb" method="post">
<ul>
<li><label for="아이디">아이디</label>
<input type="text" name="id" size="20" maxlength="10" autofocus="autofocus" required="required" placeholder="아이디를 입력해주세요" >
<input type="button" value="아이디중복확인" onclick="win01(this.form)">
</li>
<li><label for="패스워드">패스워드</label>
<input type="password" name="pw" size="20" maxlength="10"  placeholder="패스워드를 입력해주세요" >
</li>
<li><label for="이름">이름</label>
<input type="text" name="name" size="20" maxlength="10"  placeholder="이름을 입력해주세요" >
</li>
<li><label for="주소">주소</label>
<input type="text" name="addr" size="20" maxlength="10"  placeholder="주소를 입력해주세요" >
</li>
<li><label for="핸드폰번호">핸드폰번호</label>
<input type="text" name="tel" placeholder="01012345678" >
</li>
<li><label for="직업">직업</label>
<input type="checkbox" name="stype" value="1"> 학생
<input type="checkbox" name="stype" value="2"> 학부모
<input type="checkbox" name="stype" value="3"> 선생님
</li>
<li><input type="submit" value="회원가입" class="submit">
   <input type="reset" value="되돌리기" class="reset">
</li>
</ul>
</form>
</div>
</body>
</html>