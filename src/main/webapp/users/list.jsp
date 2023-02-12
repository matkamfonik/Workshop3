<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Users list</title>

    <!-- Custom fonts for this template-->
    <link href="<c:url value="/theme/vendor/fontawesome-free/css/all.min.css"/>" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<c:url value="/theme/css/sb-admin-2.min.css"/>" rel="stylesheet">

</head>

<body id="page-top">
<%@ include file="/header.jsp" %>
<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
        <a href="/users/newUser.jsp" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-plus-square fa-sm text-white-50"></i> Dodaj użytkownika</a>
    </div>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Lista użytkowników</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">


            </div>
            <!-- /.container-fluid -->
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Nazwa użytkownika</th>
                    <th>Email</th>
                    <th>Akcja</th>
                </tr>
                </thead>
                <tbody>
                <c:choose>
                    <c:when test="${empty users}">
                        <td>(pusto)</td>
                        <td>(pusto)</td>
                        <td>(pusto)</td>
                        <td></td>
                    </c:when>
                    <c:otherwise>
                        <c:forEach var="user" items="${users}">
                            <tr>
                                <td>${user.id}</td>
                                <td>${user.userName}</td>
                                <td>${user.email}</td>
                                <td>
                                    <a href="/users/deleteUser.jsp?id=${user.id}">Usuń</a>
                                    <a href="/users/editUser.jsp?id=${user.id}&userName=${user.userName}&email=${user.email}">Edytuj</a>
                                    <a href="/user/show?id=${user.id}">Pokaż</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>
                </tbody>


            </table>

        </div>
    </div>
</div>
        <!-- End of Main Content -->

        <%@ include file="/footer.jsp" %>

</body>

</html>
