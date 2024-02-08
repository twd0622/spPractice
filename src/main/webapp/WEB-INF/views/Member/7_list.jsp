<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
<script src="">
</script>
</head>
<body>
	<h1>회원 정보 조회</h1>
	<hr>
	<table border=1>
		<tr><td>아이디</td><td>비밀번호</td><td>이름</td><td>가입 날짜</td></tr>
		<c:forEach var="info" items="${infoList}">
			<tr>
			<td>${info.member_id}</td>
			<td>${info.member_pass}</td>
			<td>${info.member_name}</td>
			<td>${info.date}</td>
		</tr> 
		</c:forEach>
	</table>
	<br>	
	<a href="/member/main">메인으로..</a>
	<button>엑셀 다운로드</button>
						
		
</body>
</html>