<%@page import="kr.or.kh.member.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
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
table {
	border: 1px solid gray;
	border-collapse: collapse;
	text-align: center;
	margin-bottom: 10px;
}

th {
	background-color: gray;
	color: white;
}

#memberList {
	position: absolute;
	top: 300px;
	left: 600px;
}
</style>
<meta charset="UTF-8">
<title>KHJSP</title>
</head>
<body>
	<div id="memberList">
		<h2>회원목록</h2>
		<table border="1" cellspacing="0" cellpadding="5">
			<tr>
				<th>번호</th>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이름</th>
				<th>주소</th>
				<th>핸드폰번호</th>
				<th>직업</th>
			</tr>
			<%
				ArrayList<MemberDTO> memberList = (ArrayList<MemberDTO>) request.getAttribute("memberList");
				for (int i = 0; i < memberList.size(); i++) {
					MemberDTO memberDTO = memberList.get(i);
			%>
			<tr>
				<td><%=memberDTO.getMbno()%></td>
				<td><%=memberDTO.getId()%></td>
				<td><%=memberDTO.getPw()%></td>
				<td><%=memberDTO.getName()%></td>
				<td><%=memberDTO.getAddr()%></td>
				<td><%=memberDTO.getTel()%></td>
				<td><%=memberDTO.getStype()%></td>
			</tr>
			<%
				}
			%>
		</table>
		<form name='frm' method='GET' action='memberSearch.mb'>
			<input type='text' name='nameSearch' placeholder="이름을 입력해주세요">
			<button type='submit'>검색</button>
		</form>
		<a href="memberUpdateConfirm.mb">멤버수정</a>
	</div>
</body>
</html>