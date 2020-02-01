<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset=UTF-8">
    <title>Java Mentor</title>
</head>
<body>
        <h2>User List</h2>

                <table border="1" cellspacing="0" cellpadding="2">
                    <tr>
                        <td>Name</td>
                        <td>Role</td>
                        <td>Password</td>
                        <td>Login</td>
                        <td>Email</td>
                        <td>Country</td>
                        <td>Mobile</td>
                        <td>Update user</td>
                        <td>Delete user</td>
                    </tr>

                    <!-- loop over and print our users -->
                    <c:forEach var="tempUser" items="${users}">

                        <!-- construct an "update" link with user id -->
                        <c:url var="updateLink" value="/updateForm">
                            <c:param name="userId" value="${tempUser.id}"/>
                        </c:url>

                        <!-- construct an "delete" link with user id -->
                        <c:url var="deleteLink" value="/delete">
                            <c:param name="userId" value="${tempUser.id}"/>
                        </c:url>

                        <tr>
                            <td>${tempUser.name}</td>
                            <td>${tempUser.role}</td>
                            <td>${tempUser.password}</td>
                            <td>${tempUser.login}</td>
                            <td>${tempUser.email}</td>
                            <td>${tempUser.country}</td>
                            <td>${tempUser.mobile}</td>

                            <td>
                                <!-- display the update link --> <a href="${updateLink}">
                                <button type="submit">Update</button>
                            </a>
                            </td>
                            <td>
                                <a href="${deleteLink}">
                                    <button type="submit">Delete</button>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
</div>

<form action="/saveUser" method="post">
    <h3>Add a new user</h3>
    <div class="container">
        <div class="row">
            <div class="col-25">
                <label for="name">Name</label>
            </div>
            <div class="col-75">
                <input type="text" id="name" name="name">
            </div>
        </div>

        <div class="row">
            <div class="col-25">
                <label for="role">Role</label>
            </div>
            <div class="col-75">
                <select id="role" name="role">
                    <option value="user">user</option>
                    <option value="admin">admin</option>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="col-25">
                <label for="password">Password</label>
            </div>
            <div class="col-75">
                <input type="text" id="password" name="password">
            </div>
        </div>

        <div class="row">
            <div class="col-25">
                <label for="password">Login</label>
            </div>
            <div class="col-75">
                <input type="text" id="login" name="Login">
            </div>
        </div>

        <div class="row">
            <div class="col-25">
                <label for="email">Email</label>
            </div>
            <div class="col-75">
                <input type="text" id="email" name="Email">
            </div>
        </div>

        <div class="row">
            <div class="col-25">
                <label for="country">Country</label>
            </div>
            <div class="col-75">
                <select id="country" name="country">
                    <option value="Russia">Russia</option>
                    <option value="Germany">Germany</option>
                    <option value="Great Britain">Great Britain</option>
                    <option value="Saudi Arabia">Saudi Arabia</option>
                </select>
            </div>
        </div>

        <div class="row">
            <div class="col-25">
                <label for="mobile">Mobile</label>
            </div>
            <div class="col-75">
                <input type="text" id="mobile" name="Mobile">
            </div>
        </div>
        <input type="submit" value="Submit">
    </div>
</form>
</div>
</body>

