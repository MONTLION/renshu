<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "kr.narp.myapp.model.*" %>
<% 
// MemberVO mVo = (MemberVO)request.getAttribute("mVo");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action='memberUpdate.do' method='post'>
<c:if test="${mVo != null }">
<input type='hidden' name='num' value=${mVo.num }>
num : ${mVo.num }<br> 
id : ${mVo.id }<br>
pass : ${mVo.pass }<br>
name : ${mVo.name }<br>
age : <input type='text' name='age' value=${mVo.age }>
<br>
email : <input type='text' name='email' value=${mVo.email }>
<br>
phone : <input type='text' name='phone' value=${mVo.phone }>
<br>
</c:if>
<c:if test="${mVo == null }">
<tr>
<td>사용자를 찾을 수 없습니다!!</td>
</tr>
</c:if>
<input type='submit' value='수정하기'>
<input type='reset' value='취소'>
<a href='${ctx }/memberList.do'>리스트로</a>
</form>
</body>
</html>