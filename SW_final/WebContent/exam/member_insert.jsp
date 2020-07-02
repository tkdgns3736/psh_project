<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록 페이지</title>
</head>
<body>
<div align=center>
<H2>회원 등록</H2>
<HR>
<form action="insert.jsp" method="post">
<table border=1>
<tr><td>아이디</td><td><input type="text" name="id"></td></tr>
<tr><td>비밀번호</td><td><input type="password" name="pass"></td></tr>
<tr><td>성명</td><td><input type="text" name="name"></td></tr>
<tr><td>이메일</td><td><input type="text" name="email"></td></tr>
<tr><td>연락처</td><td><input type="text" name="phone"></td></tr>
</table>
<input type="submit" value="등록">
<input type="button" value="조회" onclick="location.href='http://localhost:8080/SW_final/exam/custom01_list.jsp'">
</form>
</div>
</body>
</html>