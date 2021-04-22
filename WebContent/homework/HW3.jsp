<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
    <p>로그인페이지</p>
        <form action="HW3_login_auth.jsp" method="post">
        아이디:  <input type="text" name="userid" placeholder="userid" required="required"></input><br>
        패스워드: <input type="text" name="password" placeholder="password" required="required"></input><br>
            <input type="submit" value="로그인">
    </form>


    <!-- 
    1. 로그인 정보 페이지(HW3.jsp) - 클라이언트
    - <form>태그 생성
    
    - id, pw 전송(action="HW3_login_auth.jsp" method="post")

required="required" 
<input> 태그의 required 속성은 폼 데이터(form data)가 서버로 제출되기 전 반드시 채워져 있어야 하는 입력 필드를 명시합니다.
    
    2. 로그인 인증 jsp 생성(HW3_login_auth.jsp) - 서버
    -  전송받은 id, pw를 확인하여 id=="test", pw="1234"일 경우
       id, pw 세션을 생성. 이후에 HW3_login_result.jsp 페이지로 이동
       -> out.print("<script>location.href="HW3_login_result.jsp"</script>
    -  전송받은 id, pw가 "test", "1234"와 일치하지 않는 경우
       HW3.jsp 페이지로 이동
    
    3. 로그인 결과 jsp 생성(HW3_login_result.jsp) - 클라이언트
    -  세션에서 id값을 꺼내서 출력
    -  만약 로그인 하지 않고 url로 직접 접속할 경우 '로그인 해주세요!!라고 alert를 띄우고
       HW3.jsp 페이지로 이동시키기
       
    
    
    
    
    
     -->

</body>
</html>