<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h2>GET/POST 방식</h2>
    
    <form action="request.jsp" method="get"></form>
    성<br><input type="text" name="firstName"><br>
   이름<br><input type="text" name="lastName"><br>
    <input type="submit" value="전송">
    
        <form action="request.jsp" method="post"></form>
    성<br><input type="text" name="firstName"><br>
   이름<br><input type="text" name="lastName"><br>
    <input type="submit" value="전송">
</body>
</html>