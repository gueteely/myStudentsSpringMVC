<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<body>
<h2>Students List</h2>
    <table>
        <tr>
            <th>Name</th>
            <th>Surname</th>
            <th>Faculty</th>
            <th>Course</th>
            <th>Average grade</th>
            <th>Operations</th>
        </tr>
        <c:forEach var="std" items="${students}">
            <c:url var="updateButton" value="/updateInfo">
                <c:param name="stdId" value="${std.id}"/>
            </c:url>
            <c:url var="deleteButton" value="/deleteStudent">
                <c:param name="stdId" value="${std.id}"/>
            </c:url>
           <tr>
               <td>${std.name}</td>
               <td>${std.surname}</td>
               <td>${std.faculty}</td>
               <td>${std.course}</td>
               <td>${std.avgGrade}</td>
               <td>
                   <input type="button" value="Update"
                          onclick="window.location.href = '${updateButton}'"/>
                   <input type="button" value="Delete"
                          onclick="window.location.href = '${deleteButton}'"/>
               </td>

           </tr>
        </c:forEach>
    </table>
<br>

<input type="button" value="add"
       onclick="window.location.href = 'addNewStudent'"/>


</body>
</html>
