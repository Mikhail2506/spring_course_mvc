<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>
<h2>Dear Employee, you are Welcome!!!</h2>
<br><br><br>

<%--Your name is:${param.employeeName}--%>

<%--Your name is:  ${nameAttribute}--%>

Your name: ${employee.name}
<br><br>
Your surname: ${employee.surname}
<br><br>
Your salary: ${employee.salary}
<br><br>
Your department: ${employee.department}
<br><br>
Your car: ${employee.carBrand}
<br><br>
Language(s):
<ul>
    <c:forEach var="lang" items="${employee.languages}">
        <li>${lang}</li>
    </c:forEach>
</ul>

Phone number: ${employee.phoneNumber}
<br><br>
Email: ${employee.email}
<br><br>
</body>
</html>