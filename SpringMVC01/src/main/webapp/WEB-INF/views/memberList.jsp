<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "kr.narp.myapp.model.*, java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
// ArrayList<MemberVO> list = (ArrayList<MemberVO>) request.getAttribute("list");
%>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function deleteFn(num) {
	location.href="memberDelete.do?num="+num;
}
</script>
</head>
<body>
[MVC05 예제 - JSTL+EL]
		<table class='tg' border='1'>
		<thead>
		 <tr>
		<th class='tg-0lax'>번호</th>
		 <th class='tg-0lax'>아이디</th>
		 <th class='tg-0lax'>비밀번호</th>
		 <th class='tg-0lax'>이름</th>
		 <th class='tg-0lax'>나이</th>
		 <th class='tg-0lax'>이메일</th>
		 <th class='tg-0lax'>전화번호</th>
		 <th class='tg-0lax'>삭제</th>
		 </tr>
		</thead>
		<tbody>
		<c:forEach var="vo" items="${list }">
		  <tr>
		  <td class='tg-0lax'>${vo.num }</td>
		 <td class='tg-0lax'><a href="memberContent.do?num=${vo.num }">${vo.id }</a>
		  <td class='tg-0lax'>${vo.pass }</td>
		  <td class='tg-0lax'>${vo.name }</td>
		   <td class='tg-0lax'>${vo.age } </td>
		   <td class='tg-0lax'>${vo.email }</td>
		  <td class='tg-0lax'>${vo.phone }</td>
		<td><input type="button" value="삭제" onClick="deleteFn(${vo.num })"></td>
		 </tr>
		</c:forEach>
			</tbody>
		 <tr>
		 <td colspan='8' align='right'>
		<input type="button" value="회원가입" onClick="location.href='${ctx}/memberRegister.do'">
		 </td>
		 </tr>
		</table>
		
</body>
</html>