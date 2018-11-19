<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Registration Page</h1>
	<c:url var="myAction" value="checkregister.obj"></c:url>
	<form:form method="post" modelAttribute="user" action="checkregister.obj">
Enter firstName:
		<form:input path="firstName" />
		<form:errors path="firstName" cssStyle="color:red"></form:errors>
		<br />
Enter lastName:<form:input path="lastName" />
				<form:errors path="lastName" cssStyle="color:red"></form:errors>
		<br />
		Enter gender:<form:radiobutton path="gender" value="M" label="M" />
		<form:radiobutton path="gender" value="F" label="F" />
		<br />
Enter email:<form:input path="email" />
			<form:errors path="email" cssStyle="color:red"></form:errors>
		<br />
Select	Skillset:
	<form:checkboxes items="${skillList}" path="skillSet"/><br/>

		
Select city:<form:select path="city">
			<form:option value="" label="Please select"></form:option>
			<form:options items="${cityList}"/>
		</form:select>
		<br/>

		<input type="submit" value="Login" />
	</form:form>

</body>
</html>