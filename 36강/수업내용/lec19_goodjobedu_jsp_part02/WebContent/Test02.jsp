<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	입력된 수 : ${param.num1 } <br>
	입력된 수 : ${param.num2 } <br>
	${param.num1 } + ${param.num2 } = ${param.num1+param.num2 } <br>
	${param.num1 } - ${param.num2 } = ${param.num1-param.num2 } <br> 
	${param.num1 } * ${param.num2 } = ${param.num1*param.num2 } <br>
	${param.num1 } / ${param.num2 } = ${param.num1 div param.num2 } <br>
	${param.num1 } % ${param.num2 } = ${param.num1 mod param.num2 } <br>
	${param.num1 } &gt; ${param.num2 } = ${param.num1 gt param.num2 } <br>
	${param.num1 } &lt; ${param.num2 } = ${param.num1 lt param.num2 } <br>
	${param.num1 } == ${param.num2 } = ${param.num1 eq param.num2 } <br>
	
</body>
</html>