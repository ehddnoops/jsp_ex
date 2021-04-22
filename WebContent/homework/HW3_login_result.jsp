<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
    String userid = (String) session.getAttribute("useridKey");
    String password = (String) session.getAttribute("passwordKey");
    if(userid == null || password == null){
        out.print("<script>alert('로그인 후 이용해주세요')</script>");
        out.print("<script>location.href='HW3.jsp'</script>");
       }

    
%>
    <h1>당신의 아이디는 <%=userid %>입니다</h1>
    <a href = "HW3_logout.jsp">로그아웃</a>



</body>
</html>