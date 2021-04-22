<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP request</title>
</head>
<body>
    <%--
    * Request
    - 요청한 HTTP의 객체(ip주소, 파라미터 등)을 갖고있는 
           객체( servlet의 HttpServletRequest와 동일)
    - 요청한 객체(A -> B 로의 요청)만 가지고 있음
      (요청 위치를 벗어나면 사라짐)
    
     --%>
     
     <%
        out.println("당신의 IP 주소" + request.getRemoteAddr()+"<br>");
        out.println("당신의 Host Name : " + request.getHeader("Host") + "<br>");
        out.println("당신의 쿠키 : " + request.getHeader("cookie")+ "<br>");
        out.println("당신의 servlet 경로" + request.getServletPath() + "<br>");
        
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        
     %>

     <h1>결과 페이지</h1>
     <p>제이름은 <%=firstName+lastName %></p>

</body>
</html>