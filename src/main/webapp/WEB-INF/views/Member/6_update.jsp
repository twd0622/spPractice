<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div {
		width: 400px ;
		border: 1px solid black;
		padding: 3px;
	}
	
</style>
</head>
	<body>
		<h1>나의 정보 수정</h1>
		<hr>
		<c:if test="${res ne '0'}">
			<form action="/member/updatePro" method="post">
				아이디: <input type="text" name="member_id" value= "${member_id}" readonly> <br>
				기존 비밀번호: <input type="password" name="member_pass"> <br>
				<br>
				<div>
					변경할 비밀번호: <input type="password" name="new_member_pass" > <br>
					이름: <input type="text" name="member_name" class="changeName" value="${member_name}" > <br>
				</div>
				
				<br>
				<input type="submit" value="정보 수정">
			</form>
		</c:if>

		<br>
		<a href="/member/main">메인으로..</a>		
	</body>
</html>