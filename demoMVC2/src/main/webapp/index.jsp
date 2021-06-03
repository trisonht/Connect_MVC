<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sql:query var="rs" dataSource="jdbc/codeleanvn">
    select * from student
</sql:query>

<html>
<head>
    <title>DB Test</title>
    <link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<body>

<div id="container">

    <div id="content">

        <table>

            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
            </tr>

            <c:forEach var="tempStudent" items="${STUDENT_LIST}">

                <tr>
                    <td> ${tempStudent.firstName} </td>
                    <td> ${tempStudent.lastName} </td>
                    <td> ${tempStudent.email} </td>
                </tr>

            </c:forEach>

        </table>

    </div>

</div>

<a href="StudentControllerServlet">Student CRUD</a>
<a href="jdbctest">Connection Pool with Servlet</a>
</body>
</html>