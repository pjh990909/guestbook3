<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>   
<%@ page import="com.javaex.vo.MemberVo" %>
    
<% 
	List<MemberVo> memberList =(List<MemberVo>) request.getAttribute("memberList");

	System.out.println(memberList);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="http://localhost:8080/guestbook3/gbc" method="get">
		<table border="1" width="540px">
			<tr>
				<td>이름</td><td><input type="text" name="name"></td>
				<td>비밀번호</td><td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td colspan="4"><textarea name="content" cols="72" rows="5"></textarea></td>
			</tr>
			<tr>
				<td colspan="4"><button type="submit">등록</button></td>
				<input type="text" name="action" value="insert">
			</tr>
		</table>
	</form>
	<br>
<% 
for(int i=0;i<memberList.size();i++){
%>
	
	<table border="1" width="540px">
		<tr>
			<td><%=memberList.get(i).getNo()%></td>
			<td><%=memberList.get(i).getName()%></td>
			<td><%=memberList.get(i).getReg_date()%></td>
			<td><a href="/guestbook3/gbc?action=dform&no=<%=memberList.get(i).getNo()%>">삭제</a></td>
		</tr>
		<tr>
			<td colspan="4"><%=memberList.get(i).getContent()%></td>
			
		</tr>
	</table>
	<br>
	
<%
}
%>
	
</body>
</html>