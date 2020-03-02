
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<body>

<form:form action="processForm" modelAttribute="student">

First name: <form:input path="firstName"/>
Last name: <form:input path="lastName"/>	
<form:select path="country">
<form:options items="${student.countryOptions}"/>

<form:option value="JAPAN" label="Japan"/>
<form:option value="Sri Lanka" label="Sri Lanka"/>
</form:select>
<br>

Favourite programming language: 
Java:<form:radiobutton path="favouriteLanguage" value="Java"/><br>
c#:<form:radiobutton path="favouriteLanguage" value="c#"/><br>
Ruby:<form:radiobutton path="favouriteLanguage" value="Ruby"/><br>

<br>

Experience of OS:<br>
MAC:<form:checkbox path="operatingSystem" value="MAC"/><br>
WINDOWS:<form:checkbox path="operatingSystem" value="Windows"/><br>
LINUX:<form:checkbox path="operatingSystem" value="Linux"/><br>
<input type="submit" value="submit">


</form:form>
</body>
</html>
