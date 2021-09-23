<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String s = request.getParameter("aa"); 
			//    "아무거나!"
	String ss = request.getParameter("Aa");
			//		 null
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	입력받은 값 : <%= s %> <br> 
	입력받은 값 : <%= ss %>
</body>
</html>