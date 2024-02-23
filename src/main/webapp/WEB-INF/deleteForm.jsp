<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="http://localhost:8080/guestbook3/gbc" method="get">
		<table>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="password"></td>
				<td><button type="submit"><a href="/guestbook3/gbc?action=addList">삭제</a></button></td>
				
				<input type="text" name="action" value="delete">
				<input type="text" name="no" value="<%=request.getAttribute("no")%>">
			</tr>
		</table>
	</form>
	
	<br><br>
	<a href="/guestbook3/gbc">메인으로 돌아가기</a>

</body>
</html>