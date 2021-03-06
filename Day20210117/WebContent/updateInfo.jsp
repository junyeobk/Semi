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
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/custom.css">
<title>회원수정</title>
</head>
<body>
 <div class="container">
	<div class="col-lg-4"></div>		
		<div class="col-lg-4">
	      <div class="jumbotron" style="padding-top: 20px;">
		<h3 style="text-align: center;">회원수정</h3>
		<%
			MemberDTO memberDTO = (MemberDTO) request.getAttribute("memberDTO");
		%>
		<form action="memberUpdateFinal.mb" method="post">
			<div class="form-group" style="padding-top: 5px;">
				<label for="아이디">아이디</label> 
				<input type="text" class="form-control" name="id" maxlength="20" autofocus="autofocus" required="required" value="<%=memberDTO.getId()%>">
				<input type="hidden" name="idSearch" value="<%=memberDTO.getId()%>">
            </div>		
			<div class="form-group">
				<label for="비밀번호">비밀번호</label> 
				<input type="password" class="form-control" name="pw" maxlength="20" value="<%=memberDTO.getPw()%>">
    		</div>		
			<div class="form-group">
				<label for="이름">이름</label> 
				<input type="text" class="form-control" name="name" maxlength="20" value="<%=memberDTO.getName()%>">
            </div>		
			<div class="form-group">
				<label for="주소">주소</label> 
				<input type="text" class="form-control" name="addr" maxlength="20"  value="<%=memberDTO.getAddr()%>">
            </div>		
			<div class="form-group">				
				<label for="전화번호">전화번호</label> 
				<input type="text" class="form-control" name="tel" maxlength="20"  value="<%=memberDTO.getTel()%>">
            </div>		
			<div class="form-group">				
				<label for="직업">직업</label>
				<select name="stype" class="form-control">
					<option value="1">학생</option>
					<option value="2">학부모</option>
					<option value="3">교사</option>
				</select> 			
			</div>	
				<input type="submit" value="수정" class="btn btn-primary form-control">
		</form>
		</div>
	</div>
	<div class="col-lg-4"></div>
  </div>
</body>
</html>