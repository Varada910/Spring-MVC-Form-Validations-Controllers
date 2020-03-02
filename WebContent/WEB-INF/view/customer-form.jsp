
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>

<title>Customer registration form</title>
<style>
.error{color:red}
</style>
</head>
<body>
<form:form action="processForm" modelAttribute="customer">
First name:<form:input path="firstName"/>

Last name(*): <form:input path="lastName"/>
<form:errors path="lastName" cssClass="error"/>
<br><br>

Free passes: <form:input path="freePasses"/>
<form:errors path="freePasses" cssClass="error"/>
<br><br>

Postal code: <form:input path="postalCode" />
<form:errors path="postalCode" cssClass="error"/>


<input type="submit" name="submit"/>
</form:form>
</body>


</html>