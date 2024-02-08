<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<h1>나의 정보 조회</h1>
		<hr>
		
		<table border=1>
			<tr><td>아이디</td><td>비밀번호</td><td>이름</td><td>가입 날짜</td></tr>
			<c:if test="${res ne '0'}">
				<tr>
					<td>${member_id}</td>
					<td>${member_pass}</td>
					<td>${member_name}</td>
					<td>${date}</td>
				</tr>
			</c:if>
		</table>
		<br>	
		<a href="/member/main">메인으로..</a>	
	</body>
</html>