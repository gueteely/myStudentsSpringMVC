<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML>
<html>
<body>

<h2>
    Student Info
</h2>
<br>

<form:form action="saveStudent" modelAttribute="student">
    <form:hidden path="id"/>
    Name <form:input path="name"/>
    <br><br>
    Surname <form:input path="surname"/>
    <br><br>
    Faculty <form:input path="faculty"/>
    <br><br>
    Course <form:input path="course"/>
    <br><br>
    Average grade <form:input path="avgGrade"/>
    <input type="submit" value="OK"/>
</form:form>






</body>




</html>