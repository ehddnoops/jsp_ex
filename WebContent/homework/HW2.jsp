<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
    <%--
    1.HW2.jsp 파일
    - 회원 가입 form 만들기
    - <form action="HW2_member_info.jsp" method="post">
    - input 태그 타입
    - 아이디(text) : name="userid"
    - 패스워드(password) : name="password"
    - 이메일(email) : name="email"
    - 이메일 수신여부(radio 버튼) : name="emailAgree"
    - 관심사항 (checkbox, 관심사항 4개) : name="interest"
    - 핸드폰(text) : name="phone"
    - 자기소개(<textarea>) : name="introduce"
    - 전송버튼(submit)
    
    2. MemberVO.java 파일
    -  jsp:usebean 사용
    -  src.edu.web.homework 패키지에 MemberVO.java 클래스 생성(변수는 위 정보를 참조)
    - *MemberVO 기본 생성자는 무조건 생성
    - * String[] interest; (관심사항은 배열로 변수 선언)
    
    3. HW2_member_info.jsp 파일
    - HW2에서 전송받은 데이터를 출력하시오
    - 단, request.getParameter를 사용하지 않고 구현
     --%>
    
    
    <form action="HW2_member_info.jsp" method="post">
       아이디 : <input type="text" name="userid"><br>
        패스워드: <input type="password" name="password"><br>
        이메일: <input type="email" name="email"><br>
        이메일 수신여부: <br>
        <input type="radio" name="emailAgree"  value="Y"><label for="Y">수신</label>
        <input type="radio" name="emailAgree"  value="N"><label for="N">비수신</label><br>
        관심사항:
     <input type="checkbox" name="interest" value="IT">IT/인터넷
     <input type="checkbox" name="interest" value="movie">영화
     <input type="checkbox" name="interest" value="music">음악
     <input type="checkbox" name="interest" value="book">책
     <input type="checkbox" name="interest" value="food">음식<br>
        핸드폰: <input type="text" name="phone"><br>
        자기소개: <textarea name="introduce" rows="20" cols="20"></textarea><br>
     <input type="submit" value="전송">
    </form> 
    
    
    
    
 
     

</body>
</html>