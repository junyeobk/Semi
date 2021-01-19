<%@page import="kr.or.kh.member.MemberDTO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="boardSearch" class="kr.or.kh.member.MemberDTO"
	scope="page" />

<!DOCTYPE html>
<html>
<head>
<style type="text/css">
#memberSearch {
	position: absolute;
	top: 300px;
	left: 600px;
	width: 1100px;
}
</style>
<meta charset="UTF-8">
<title>KHJSP</title>
</head>
<body>
	<%
		MemberDTO memberDTO = (MemberDTO) request.getAttribute("memberDTO");
	%>
	<div id="memberSearch">
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
			<tr>
				<td><%=memberDTO.getMbno()%></td>
				<td><%=memberDTO.getId()%></td>
				<td><%=memberDTO.getPw()%></td>
				<td><%=memberDTO.getName()%></td>
				<td><%=memberDTO.getAddr()%></td>
				<td><%=memberDTO.getTel()%></td>
				<td><%=memberDTO.getStype()%></td>
			</tr>
		</table>
		<a href="memberList.mb">게시판목록</a>
	</div>
</body>
</html>