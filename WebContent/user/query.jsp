<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<form action="queryUserAction" namespace="/user">
		<table border="1" bordercolor="blue">
			<s:submit value="Search"></s:submit>
		</table>
	</form>
	<table border="1" bordercolor="black">
		<tr>
			<td>用户id</td>
			<td>用户名</td>
			<td>密码</td>
			<td>生日</td>
			<td>职业</td>
			<td>状态</td>
			<td>操作</td>
		</tr>
		<!-- iterator -->
		<s:iterator value="userList" id="userInfo">
			<tr>
			<!-- s:property equals userInfo.getName() -->
			<td> <s:property value="#userInfo.name" /> </td>
			<td> <s:property value="#userInfo.password" /> </td>
			<td> <s:property value="#userInfo.gender" /> </td>
			<td> <s:property value="#userInfo.age" /> </td>
			<!-- s:date equals Date  -->
			<td> <s:date name="#userInfo.birthday" format="yyyy-MM-dd" /> </td>
			<td> <s:property value="#userInfo.addressList" /> </td>
			<td>
			</td>
			</tr>
		</s:iterator>
		
		<s:iterator value="userList" id="userInfo" status="st">
			<tr>
				<!-- please notice: . as get -->
				<td><s:property value="#st.count" /></td>
				<td><s:property value="#st.index" /></td>
				<td><s:property value="#st.even" /></td>
				<td><s:property value="#st.first" /></td>
				<td><s:property value="#st.odd" /></td>
			</tr>
			<tr <s:if test="#st.even"> style="background-color:red" </s:if> <s:else> style="background-color:rgba(10,10,10,.3)" </s:else> >
				<td><s:property value="#userInfo.name" /></td>
				<td><s:property value="#userInfo.password" /></td>
				<td><s:property value="#userInfo.gender" /></td>
				<td><s:property value="#userInfo.age" /></td>
				<td><s:date name="#userInfo.birthday" format="yyyy-MM-dd" /></td>
				<td><s:property value="#userInfo.addressList" /></td>
				<td>
					<s:url id="url" action="deleteUserAction" namespace="/user">
						<s:param name="userDto.name">
							<s:property value="#userInfo.name"/>
						</s:param>
					</s:url>
					<s:a href="%{url}">Delete it</s:a>
					<s:url id="url2" action="modifyUserAction" namespace="/user"></s:url>
					<s:a href="%{url2}" >Modify it</s:a>
				</td>
			</tr>
		</s:iterator>
		
		<c:if test="${not empty result}">
			<c:forEach var="userDto" items="${result}">
				<tr>
					<td>${userDto.userId}</td>
					<td>${userDto.userName}</td>
					<td>${userDto.password}</td>
					<td></td>
					<td></td>
					<td>${userDto.status}</td>
					<td><c:url var="url" value="/deleteAction">
							<c:param name="userId">${userDto.userId}</c:param>
						</c:url> 
						<a href="${url}">删除</a> 
						<c:url var="url" value="/queryForUpdateAction">
							<c:param name="userId">${userDto.userId}</c:param>
						</c:url>
						 <a href="${url}">修改</a>
				    </td>
				</tr>
			</c:forEach>
		</c:if>


	</table>

</body>
</html>