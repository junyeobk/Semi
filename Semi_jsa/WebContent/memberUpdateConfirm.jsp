<%@page import="kr.or.kh.member.MemberDTO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
ul {
	list-style-type: none;
	padding: 0 50px;
	margin: 0px;
	text-align: left;
}

li {
	margin-bottom: 4px;
}

#memberUpdateConfirm {
	position: absolute;
	top: 300px;
	left: 700px;
	width: 400px;
	text-align: center;
	border: 1px solid gray;
	padding-bottom: 30px;
}
</style>
<meta charset="UTF-8">
<title>KHJSP</title>
</head>
<body>
	<div id="memberUpdateConfirm">
		<h2>회원수정</h2>
		<%
			MemberDTO memberDTO = (MemberDTO) request.getAttribute("memberDTO");
			out.print("변경하기 전 내용입니다.<br>");
			out.print("아이디:" + memberDTO.getId() + "패스워드:" + memberDTO.getPw() + "이름:" + memberDTO.getName() + "<br>주소:"
					+ memberDTO.getAddr() + "전화번호:" + memberDTO.getTel() + "직업:" + memberDTO.getStype() + "<p>");
		%>
		<form action="memberUpdateFinal.mb" method="post">
			<ul>
				<li><label for="아이디">아이디</label> <input type="text" name="id" autofocus="autofocus" required="required" placeholder="변경할아이디입력">
					<input type="hidden" name="idSearch" value="<%=memberDTO.getId()%>"></li>
				<li><label for="패스워드">패스워드</label> <input type="password" name="pw" placeholder="변경할패스워드입력"></li>
				<li><label for="이름">이름</label> <input type="text" name="name" placeholder="변경할이름입력"></li>
				<li><label for="주소">주소</label> <input type="text" name="addr" placeholder="변경할주소입력"></li>
				<li><label for="전화번호">전화번호</label> <input type="text" name="tel" placeholder="변경할번호입력"></li>
				<li><label for="직업">직업</label>
				<select name="stype">
					<option value="1">학생</option>
					<option value="2">학부모</option>
					<option value="3">교사</option>
				</select> 
				</li>
				<li><input type="submit" value="수정" class="submit"></li>
			</ul>
		</form>
	</div>
</body>
</html>