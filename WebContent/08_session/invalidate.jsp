<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Invalidate</title>
</head>
<body>
    <h1>세션 속성(attribute)값 제거/invalidate(무효화)</h1>
    <%
        // 세션 attribute에 데이터 저장
        session.setAttribute("userid", "admin");
        session.setAttribute("age", 16);
        
        //세션 이름 출력하기
        Enumeration<String> attrNames = session.getAttributeNames();
        while(attrNames.hasMoreElements()){
            String name = attrNames.nextElement();
            out.println(name + "<br>");            
        }
        
        //userid 속성 제거
       session.removeAttribute("userid");
        
        // 세션 무효화 : 모든 세션 속성 제거
//        session.invalidate();
        // 유효하지 않은 세션 : 세션 속성이 아무것도 없거나 세션이 invalidate된 경우
        
    %>
    
    <a href="sessionTest.jsp">Session Test</a>

</body>
</html>