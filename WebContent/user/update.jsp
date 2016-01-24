<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<form action="updateUserAction" namespace="/user">
		<!-- iterator -->
		<s:textfield name="userDto.name" label="name" />
		<s:password name="userDto.password" label="password" />
		<s:textfield name="userDto.birthday" label="birthday">
			<s:param name="value">
				<s:date name="userDto.birthday" format="yyyy-MM-dd" />
			</s:param>
		</s:textfield>
		<s:radio label="sex" list="#{'M':'male','F':'female','o':'others' }"
			name="userDto.gender"></s:radio>
		<s:radio label="country" list="#{'01':'China','02':'Japan' }"
			name="userDto.country"></s:radio>
		<s:checkboxlist label="hobbies"
			list="#{'a':'football','b':'vollball','c':'PingPang' }"
			name="userDto.loves"></s:checkboxlist>
		<s:textfield name="userDto.addresslist" label="address"></s:textfield>
		<s:textfield name="userDto.addresslist"></s:textfield>
		<s:textfield name="userDto.addresslist"></s:textfield>

		<s:submit value="Register"></s:submit>
		<s:reset value="Reset"></s:reset>
</body>
</html>