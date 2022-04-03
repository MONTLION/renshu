<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	회원가입화면
	<form action="${ctx }/memberInsert.do" method="post">
<table class="tg" style="undefined;table-layout: fixed; width: 286px">
  <tr>
    <td class="tg-baqh">아이디</td>
    <td class="tg-0lax"><input type="text" name="id"></td>
  </tr>
  <tr>
    <td class="tg-baqh">패스워드</td>
    <td class="tg-0lax"><input type="password" name="pass"></td>
  </tr>
  <tr>
    <td class="tg-baqh">이름</td>
    <td class="tg-0lax"><input type="text" name="name"></td>
  </tr>
  <tr>
    <td class="tg-baqh">나이</td>
    <td class="tg-0lax"><input type="text" name="age"></td>
  </tr>
  <tr>
    <td class="tg-baqh">이메일</td>
    <td class="tg-0lax"><input type="text" name="email"></td>
  </tr>
  <tr>
    <td class="tg-baqh">전화번호</td>
    <td class="tg-0lax"><input type="text" name="phone"></td>
  </tr>
  <tr>
    <td class="tg-0lax" colspan="2" align="center"><input type="submit" value="가입">
    <input type="reset" value="취소"></td>
  </tr>
</table>
</form>
</body>
</html>