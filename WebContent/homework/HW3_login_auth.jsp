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
  	//     String id = (String) session.getAttribute("userid");
  //     String pw = (String) session.getAttribute("password");
  String id = request.getParameter("userid");
  String pw = request.getParameter("password");
  if (id.equals("")) { // id null
  	out.print("<script>alert('정보를 입력해주세요')</script>");
  	out.print("<script>location.href='HW3.jsp'</script>");
  }

  else if (!id.equals("")) { //id !null
  	if (id.equals("test") == true && pw.equals("1234") == true) {//id true  pw true
  		//세션에 키-값 저장하기
  		session.setAttribute("useridKey", id);
  		session.setAttribute("passwordKey", pw);

  		out.print("<script>location.href='HW3_login_result.jsp'</script>");

  		//세션 유지 시간
  		session.setMaxInactiveInterval(60);
  	} else if (id.equals("test") == false) { // id false
  		out.print("<script>alert('아이디 불일치')</script>");
  		out.print("<script>location.href='HW3.jsp'</script>");
  	} else if (id.equals("test") == true && pw.equals("1234") != true) { //id true pw false
  		out.print("<script>alert('비밀번호 불일치')</script>");
  		out.print("<script>location.href='HW3.jsp'</script>");
  	}
  } //id != null
  %>
</body>
</html>