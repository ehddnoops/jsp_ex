<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP set Cookies</title>
</head>
<body>
  <%--
       * 쿠키(cookie)
        - 웹 브라우저가 저장하는 데이터
        - 필요한 정보를 클라이언트(웹 브라우저) 에서 저장
        - 다양한 정보 추적을 목적으로 데이터가 유지
        - 쿠키 사용자 식별 3단계
          1) 서버 스크립트는 이름, 나이, 식별 숫자 등 정보를 쿠키에 설정하여 브라우저에서 보냄
          2) 브라우저는 이정보를 개인 PC에 저장
          3) 다음 접속 때 브라우저에서 웹서버에 특정 요청을 할 경우, 이정보를
             서버에 전송하고 서버는 정보를 사용자 식별등의 용도로 사용
        - 주로 브라우저에서 사용자가 선택한 내용들을 저장(예, 특정메시지를 다시 띄우지 않기 등)
  --%>
  
  <%
    request.setCharacterEncoding("utf-8");
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    
    //파라미터 값으로 쿠키 생성
    Cookie firstNameCookie = new Cookie("first_name", firstName);
    Cookie lastNameCookie = new Cookie("last_name", lastName);
    
    //만료 시간(초단위) : 24시간
    firstNameCookie.setMaxAge(60*60*24);
    lastNameCookie.setMaxAge(60*60*24);
    
    //response.header 에 쿠키 추가
    response.addCookie(firstNameCookie);
    response.addCookie(lastNameCookie);
  %>
</body>
</html>