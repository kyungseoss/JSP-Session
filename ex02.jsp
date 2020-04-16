<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
	//form에서 넘어온값을, 다시 세션에 저장해야 다른 페이지에서도 정보를 사용할 수 있음.
	
	session.setAttribute("id", id);
	session.setAttribute("passwd", passwd);
%>
	id와 passwd 세션 속성을 설정하였음.<br>

	id속성의 값은
	<%=(String)session.getAttribute("id") %> 이고 <br>
	
	passwd 속성의 값은
	<%=(String)session.getAttribute("passwd") %>임.
</body>
</html>
