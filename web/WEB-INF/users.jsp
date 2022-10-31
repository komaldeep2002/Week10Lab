

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Users</title>
    </head>
    <body>
        <h1>Manage Users</h1>
        <p>${message}</p>
        <form action="User" method="post">
            <table>
                <tr>
                    <th>Email</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Role</th>
                    <th></th>
                    <th></th>
                </tr>
                <c:forEach var="user" items="${users}">
                    <tr>
                        <td>${user.email}</td>
                        <td>${user.firstName}</td>
                        <td>${user.lastName}</td>
                        <td>${user.role.getId()}</td>
                        <td><input type="submit" action="update" value="Edit"></td>
                        <td><input type="submit" action="delete" value="Delete"></td>                        
                    </tr>
                </c:forEach>
            </table>
        </form>
        <form action="User" method="post">
            <h2>Add User</h2>
            Email: <input type="text" value="${email}"><br>
            First name: <input type="text" value="${firstName}"><br>
            Last name: <input type="text" value="${lastName}"><br>
            Password: <input type="text" value="${password}"><br>
            Role: <input type="number" min=1 max=2 value="${roleId}"><br>
            <td><input type="submit" action="insert" value="Add user"></td>
            </table>
        </form>
        <form action="User" method="post">
            <h2>Edit User</h2>
            Email: <br>
            First name: <input type="text" value="${firstName}"><br>
            Last name: <input type="text" value="${lastName}"><br>
            Password: <input type="text" value="${password}"><br>
            Role: <input type="number" min=1 max=2 value="${roleId}"><br>
            <td><input type="submit" action="update" value="Update"></td>
        </form>
        <%-- 
        <c:choose>
            <c:when test="action == 'update'">
                <p>form 1</p>
            </c:when>
            <c:otherwise>
                <p>form2</p>
            </c:otherwise>
        </c:choose>
        --%>
    </body>
</html>
