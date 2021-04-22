<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <jsp:useBean id="member" class="edu.web.homework.MemberVO"></jsp:useBean>
    <jsp:setProperty name="member" property="*"/>
    <p>이름 : <%=member.getUserid() %></p>
    <p>비밀번호 : <%=member.getPassword() %></p>
    <p>이메일 : <%=member.getEmail() %></p>
    <p>이메일 수신여부: <%=member.getEmailAgree() %></p>
    <p>관심사항 :


                    <%
//                     String[] interest = member.getInterest();
//                     for(int i=0;i<interest.length;i++){
                    
//                             out.write(interest[i]);
                        
//                     }
                
String interest = null;
if(member.getInterest()==null){
 interest = "없음"; 
} else {
    interest = String.join(",", member.getInterest()); 
        //join() : 문자열 배열을 특정 구분자로 연결해주는 함수
}
                     %>
    
    <p>핸드폰 : <%=member.getPhone() %></p>
    <p>자기소개 :                    
                <%
                    String[] introduce = member.getIntroduce();
                    for(int i=0;i<introduce.length;i++){
                        
                            out.write(introduce[i]);
                        
                    }
                
                %>

</body>
</html>
