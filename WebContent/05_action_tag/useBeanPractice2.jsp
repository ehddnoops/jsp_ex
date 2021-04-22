<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과 페이지</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");//한글 인코딩
//         String name = request.getParameter("name");
//         String phone = request.getParameter("phone");
//         String email = request.getParameter("email");
        
    %>

    <jsp:useBean id="contact" class="edu.web.homework.ContactVO"></jsp:useBean>
    <!-- 모든 parameter 값을 contact에 저장 -->
    <jsp:setProperty name="contact" property="*" />
    <p>이름 : <%=contact.getName() %></p>
    <p>전화번호 : <%=contact.getPhone() %></p>
    <p>이메일 : <%=contact.getEmail() %></p>
</body>
</html>






