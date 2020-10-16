<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="securtiy" uri="http://www.springframework.org/security/tags" %>
<html>

<head>
	<title>luv2code Company Home Page</title>
</head>

<>
	<h2>luv2code Company Home Page</h2>
	<hr>
	<p>
	Welcome to the luv2code company home page!
	</p>

	<hr>

	User: <securtiy:authentication property="principal.username" />
	<br><br>
	Roles: <securtiy:authentication property="principal.authorities" />

	<hr>

	<securtiy:authorize access="hasRole('MANAGER')" >
	<p><a href="${pageContext.request.contextPath}/leaders" >Leadership Meetings</a>(Only for Manager peeps)</p>
	</securtiy:authorize>

	<securtiy:authorize access="hasRole('ADMIN')">
	<p><a href="${pageContext.request.contextPath}/systems" >IT Systems Meetings</a>(Only for Admins peeps)</p>
	</securtiy:authorize>
	<hr>

	<form:form method="post" action="${pageContext.request.contextPath}/logout">
		<input type="submit" value="Logout" />
	</form:form>
</body>

</html>