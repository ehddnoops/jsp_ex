<%@page import="edu.web.member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 결과</title>
</head>
<body>
   <%
      MemberVO vo = (MemberVO) request.getAttribute("vo");
   %>
   
   <p><%=vo.getUserid() %>님, 환영합니다?</p>
   
</body>
</html>