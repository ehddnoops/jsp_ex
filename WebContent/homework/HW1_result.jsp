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
       
        int monthMoney = Integer.parseInt(request.getParameter("monthMoney"));
        int term = Integer.parseInt(request.getParameter("term"));
        int interest = Integer.parseInt(request.getParameter("interest"));
        
        int totalMonthMoney = monthMoney * term;
        double totalInterest = totalMonthMoney * interest / 100;
        double totalReceiveMoney = totalInterest + totalMonthMoney;
    %>
    <h1>계산</h1>
    <h2>입력받은 정보</h2>
    <p>월 금액 : <%= totalMonthMoney%></p>
    <p>이자 : <%= totalInterest%></p>
    <p>수령 : <%= totalReceiveMoney%></p>
    
    
  
</body>
</html>