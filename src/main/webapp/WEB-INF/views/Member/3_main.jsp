<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>회원 정보 관리</h1>
		<hr>
		
		${sessionScope.name}님 반갑습니다.
		<a href="/member/logout">로그아웃</a>
		
		<hr>
		<a href="write.bo">게시판 글쓰기</a>
		<a href="boardList.bo">게시판 글목록</a>
		<hr>
		<a href="fwrite.bo">파일 게시판 글쓰기</a>
		<a href="fboardList.bo">파일 게시판 글목록</a>
		<hr>
		<a href="reWrite.re">답글 게시판 글쓰기</a>
		<a href="reBoardList.re">답글 게시판 글목록</a>			
		<hr>
		<a href="todoList.to">나의 ToDoList</a>
		<a href="/member/excel">엑셀 연습 페이지</a>
		<hr>
		<a href="/member/info">나의 정보 조회</a>
		<a href="/member/update">나의 정보 수정</a>
		<a href="javascript:if(confirm('탈퇴 하시겠습니까?') == true){location.href = '/member/delete';}">회원 탈퇴</a>
		<br>
		
		<c:if test="${sessionScope.id eq 'admin'}">
		<a href="/member/list">회원 목록 조회</a>
		</c:if>
</body>
</html>