<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Test</title>
</head>
<body>
    <%
        // 현재 세션이 유효(valid)한 지 체크
//         if(request.isRequestedSessionIdValid()){
//             out.print("유효한 세션<br>"); //하나라도 있으면 유효한 세션
//         } else {
//           out.print("유효하지 않은 세션<br>");
//         }
          String userid = (String) session.getAttribute("userid");
          if(userid == null){
              out.print("<script>alert('반갑습디ㅏ다!');</script>"); 
              out.print("<script>location.href='invalidate.jsp'</script>"); 
          }
          
          Integer age = (Integer) session.getAttribute("age");
          out.print("<script>alert('반갑습디ㅏ다!');</script>");
    
    
//         System.out.println(session);
//         String userid = (String)session.getAttribute("userid");
//         Integer age = (Integer) session.getAttribute("age");
//         out.print("<script>alert('반갑습디ㅏ다!');</script>");
    %>
    
    <h1><%=userid %>님은, <%=age %>쨜 입니다.</h1>

</body>
</html>