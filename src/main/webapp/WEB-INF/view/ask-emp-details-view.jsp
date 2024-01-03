<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<body>
<h2>Dear Employee, please enter your details!!!</h2>
<br>
<br>
<br>
<%--<form action="showDetails" method="get">--%>
<%--<input type="text" name="employeeName"--%>
<%--placeholder="Write your name!!!"/>--%>

<%--<input type="submit"/>--%>

<form:form action="showDetails" modelAttribute="employee">

    Name <form:input path="name"/>
    <form:errors path="name"/>
    <br>
    <br>
    Surname <form:input path="surname"/>
    <form:errors path="surname"/>
    <br>
    <br>
    Salary <form:input path="salary"/>
    <form:errors path="salary"/>
    <br>
    <br>

    Department <form:select path="department">
    <%--    <form:option value="Infomation Technology" label="IT"/>--%>
    <%--    <form:option value="Human Resources" label="HR"/>--%>
    <%--    <form:option value="Sales" label="Sales"/>--%>
    <%--    </form:select>--%>
    <form:options items="${employee.departments}"/>
</form:select>
    <br>
    <br>
    Which car do you want?
<%--    BMW <form:radiobutton path="carBrand" value="BMW"/>--%>
<%--    AUDI <form:radiobutton path="carBrand" value="Audi"/>--%>
<%--    MB <form:radiobutton path="carBrand" value="Mercedes-Benz"/>--%>

    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
    <br>
    <br>
    Phone Number <form:input path="phoneNumber"/>
    <form:errors path="phoneNumber"/>
    <br>
    <br>
    Email <form:input  path="email"/>
    <form:errors path="email"/>
    <br><br>
    Foreign language(s)
    EN <form:checkbox path="languages" value="English"/>
    DE <form:checkbox path="languages" value="Deutch"/>
    FR <form:checkbox path="languages" value="French"/>
    <br>
    <br>
    <input type="submit" value="Ok"/>
</form:form>
</body>
</html>

