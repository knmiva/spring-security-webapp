<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Spring MVC CRUD</title>
</head>
<body>
<div class="container">
    <div class="col-md-offset-2 col-md-7">
        <h2 class="text-center">Spring MVC
            CRUD</h2>
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Update user</div>
            </div>
            <div class="panel-body">
                <%--@elvariable id="user" type="ru.jm.springmvc.model"--%>
                <form:form action="update" cssClass="form-horizontal"
                           method="post" modelAttribute="user">

                    <!-- need to associate this data with user id -->
                    <form:hidden path="id" />

                    <div class="form-group">
                        <label for="name" class="col-md-3 control-label">
                            Name</label>
                        <div class="col-md-9">
                            <form:input path="name" cssClass="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="role" class="col-md-3 control-label">
                            Role</label>
                        <div class="col-md-9">
                            <select id="role" name="role">
                                <option value="user">user</option>
                                <option value="admin">admin</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="password" class="col-md-3 control-label">
                            Password</label>
                        <div class="col-md-9">
                            <form:input path="password" cssClass="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="login" class="col-md-3 control-label">
                            Login</label>
                        <div class="col-md-9">
                            <form:input path="login" cssClass="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="email" class="col-md-3 control-label">Email</label>
                        <div class="col-md-9">
                            <form:input path="email" cssClass="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="country" class="col-md-3 control-label">Country</label>
                        <div class="col-md-9">
                            <select id="country" name="country">
                                <option value="Russia">Russia</option>
                                <option value="Germany">Germany</option>
                                <option value="Great Britain">Great Britain</option>
                                <option value="Saudi Arabia">Saudi Arabia</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="mobile" class="col-md-3 control-label">Mobile</label>
                        <div class="col-md-9">
                            <form:input path="mobile" cssClass="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <!-- Button -->
                        <div class="col-md-offset-3 col-md-9">
                            <form:button cssClass="btn btn-primary">Submit</form:button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
