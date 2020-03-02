<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<body>


The Student ${student.firstName }  ${student.lastName} from ${student.country} is confirmed.
Favourite programming language ${student.favouriteLanguage}

<br>

Operating Systems:<br>
<ul>
<c:forEach var="temp" items="${student.operatingSystem}">
<li> ${temp}</li>
</c:forEach>
</ul>


</body>
</html>
