<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="swfinal.*"%>
    <%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="custom" class="swfinal.custom"/>
<jsp:setProperty property="*" name="custom"/>

<%
	customDAO dao = new customDAO();
	dao.addcustom(custom);
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('회원정보 입력 완료');");
	script.println("location.href='http://localhost:8080/SW_final/exam/member_insert.jsp';");
	script.println("</script>");
	script.close();
%>