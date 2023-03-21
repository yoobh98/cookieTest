<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String dbID="1",dbPW="1";
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	String keepChk=request.getParameter("saveId");
	
	/* out.print("id : "+id);
	out.print("pw : "+pw+"<br>");
	out.println("체크여부 : "+request.getParameter("saveId")); */
	if(id.equals(dbID)&&pw.equals(dbPW)){%>
		<button onclick="location.href='test.jsp'">로그아웃</button>
	<%}else{%>
		<script>
			alert('틀림')
			location.href='test.jsp'
		</script>	
		
	<%}
	if(keepChk!=null){
		Cookie cook = new Cookie("keep",id);
		cook.setMaxAge(30);
		response.addCookie(cook);
	}
	
%>
</body>
</html>