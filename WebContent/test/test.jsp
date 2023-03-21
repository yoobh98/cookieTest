<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.loginWrap{text-align: center;}
</style>
</head>
<body>
<%
	String keepValue="";
	Cookie[] cook= request.getCookies();
	for(Cookie c : cook){
		System.out.println("쿠키 : "+c.getName());
		if(c.getName().equals("keep")){
			System.out.println("값 : "+c.getValue());
			keepValue=c.getValue();
		}
	}
	
%>

<div class="loginWrap">
	<h1>로그인</h1>
	<form action="testResult.jsp">
		아이디  : <input type="text" name="id" value="<%=keepValue%>"><br>
		비밀번호  : <input type="text" name="pw"><br>
		<input type="checkbox" name="saveId" value="chk" checked> 아이디 저장
		
		<input type="submit" value="로그인">
	</form>
	
</div>
</body>
</html>