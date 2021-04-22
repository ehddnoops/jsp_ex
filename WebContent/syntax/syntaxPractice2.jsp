<%@page import="edu.web.homework.ContactVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 구문 연습</title>
</head>
<body>
    <!--
    1. 이름, 연락처, 이메일을 변수로 갖는 ContactVO.java를 생성
    (위치 : src/main/java/edu.web.homework/ContactVO.java)
    2. syntaxPractice2.jsp
    - ArrayList<ContactVO>를 선언 및 객체 생성
    - 임의로 3~5개의 데이터를 생성하여 ArrayList에 저장
    - ArrayList에 저장된 데이터를 반복문을 사용하여 테이블에 출력
      -->
      
      <%
      ArrayList<ContactVO> list = new ArrayList<>();
      
      ContactVO vo = new ContactVO("test", "010-1111-1111", "test@test.com");
      list.add(vo);
      list.add(new ContactVO("김동우","010-1111-1112","ehd@gmail.com"));
      list.add(new ContactVO("관리자","010-1111-1113","admin@gmail.com"));
      list.add(new ContactVO("게스트","010-1111-1114","guest@gmail.com"));
      list.add(new ContactVO("디디디","010-1111-1115","ddd@gmail.com"));
      %>
      
      <table>
          <thead>
              <tr>
                  <th>이름</th>
                  <th>전화번호</th>
                  <th>이메일</th>
              </tr>
          </thead>
          <%
              for(int i = 0; i < list.size(); i++){
          %>
              <tr>
                  <td><%=list.get(i).getName() %></td>
                  <td><%=list.get(i).getPhone() %></td>
                  <td><%=list.get(i).getEmail() %></td>
              </tr>
          <%
              }
          %>
          <tbody>
          </tbody>
      </table>

</body>
</html>