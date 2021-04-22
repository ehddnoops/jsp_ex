<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드</title>
</head>
<body>
    <%--
    * 파일 업로드 구현 순서
    1. web.xml에 <context-param>을 설정
    2. commons-fileupload-x.x.jar을 다운로드 및 WEB-INF/lip 폴더에 저장
    3. commons-io-x.x.jar을 다운로드 및 WEB-INF/lib 폴더에 저장
    4. c:\tmp와 C:\Server\apache-tomcat-9.0.44-windows-x64\apache-tomcat-9.0.44\webapps\data
     --%>
    <h2>파일 업로드</h2>
    <p>파일 선택 : </p>
    <form action="uploadFile.jsp" methos = "post" enctype="multipart/form-data">
       <input type="file" name="file" size="1000"><br>
       <input type="submit" value="파일 업로드">
       
    </form>
</body>
</html>