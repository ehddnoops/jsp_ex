<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>적금 계산기</title>
</head>
<body>
    


    <h1>적금 계산기</h1>
    <form action="HW1_result.jsp" method="get">
        <input type="number" name="monthMoney" placeholder="월 적금액"><br>
        <input type="number" name="term" placeholder="기간"><br>
        <input type="number" name="interest" placeholder="이자"><br>
        <input type="submit" value="계산">
    
    </form>
    
    <!-- 
        JSP 파일 생성(적금 계기간산 결과 페이지)
        1. 월 적금액, 기간, 이자율을 전송하는 form 만들기(HW1.jsp)
        - <form action="HW1_result.jsp" method="get">
        2. 월 적금액, 기간, 이자율을 받아와서 계산하여 출력하는 jsp 파일 만들기(HW1_result.jsp)
        - Hint(01_basic -> TagPractice1.jsp 파일을 참고할 것)
        
        
     -->
</body>
</html>
