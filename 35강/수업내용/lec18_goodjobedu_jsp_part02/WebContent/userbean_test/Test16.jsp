<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id= "p2" class="com.bean.dto.PersonDto" scope="page"/>
	<jsp:useBean id= "p3" class="com.bean.dto.PersonDto" scope="session"/>
	
	p2의 이름: <jsp:getProperty property="name" name="p2"/> <br>
	p2의 나이: <jsp:getProperty property="age" name="p2"/> <br>
	
	p3의 이름: <jsp:getProperty property="name" name="p3"/> <br>
	p3의 나이: <jsp:getProperty property="age" name="p3"/> <br>
</body>
</html>