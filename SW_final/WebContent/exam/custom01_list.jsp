<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="swfinal.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원목록 페이지</title>
</head>
<%
	customDAO dao = new customDAO();
	ArrayList<custom> datas = dao.findAll(); 
%>
<body>
<div align="center">
<H2>회원목록조회</H2>
<HR>
<table border=1>
<tr><th>아이디</th><th>회원이름</th><th>이메일</th><th>연락처</th></tr>
<%
	for(custom s : datas) {
%>
	<tr>
		<td><%=s.getId() %></td>
		<td><%=s.getName() %></td>
		<td><%=s.getEmail() %></td>
		<td><%=s.getPhone() %></td>	
	</tr>
<%		
	}
%>
</table>
<a href=member_insert.jsp>회원 등록 페이지 이동</a>
</div>
</body>
</html>