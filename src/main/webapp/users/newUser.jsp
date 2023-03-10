<%--
  Created by IntelliJ IDEA.
  User: matka
  Date: 12.02.2023
  Time: 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Add user</title>

    <!-- Custom fonts for this template-->
    <link href="<c:url value="/theme/vendor/fontawesome-free/css/all.min.css"/>" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<c:url value="/theme/css/sb-admin-2.min.css"/>" rel="stylesheet">
</head>
<body id="page-top">
<%@ include file="/header.jsp" %>
<!-- Content Row -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
    </div>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Dodaj użytkownika</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">


            </div>
            <!-- /.container-fluid -->
            <form action="/user/add" method="post">
                <label>Nazwa użytkownika:</label><br>
                <input type="text" name="userName" placeholder="Nazwa użytkownika"/><br><br>
                <label>Email:</label><br>
                <input type="email" name="email" placeholder="Email użytkownika"/><br><br>
                <label>Hasło:</label><br>
                <input type="password" name="password" placeholder="Hasło użytkownika"/><br><br>
                <button type="submit" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                        class="fas fa-plus-square fa-sm text-white-50"></i> Zapisz</button>
            </form>


        </div>
    </div>
</div>






<%--<div class="row">--%>

<%--    <!-- Add table -->--%>
<%--    <div class="col-xl-8 col-lg-7">--%>
<%--        <div class="card shadow mb-4">--%>
<%--            <!-- Card Header - Dropdown -->--%>
<%--            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">--%>
<%--                <h6 class="m-0 font-weight-bold text-primary">Dodaj użytkownika</h6>--%>
<%--            </div>--%>
<%--            <!-- Card Body -->--%>
<%--            <div class="card-body">--%>
<%--                <div class="chart-area">--%>
<%--                    <form action="/user/add" method="post">--%>
<%--                        <label>Nazwa użytkownika:</label><br>--%>
<%--                        <input type="text" name="userName" placeholder="Nazwa użytkownika"/><br>--%>
<%--                        <label>Email:</label><br>--%>
<%--                        <input type="email" name="email" placeholder="Email użytkownika"/><br>--%>
<%--                        <label>Hasło:</label><br>--%>
<%--                        <input type="password" name="password" placeholder="Hasło użytkownika"/><br>--%>
<%--                        <button type="submit">Zapisz</button>--%>
<%--                    </form>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>



<%@ include file="/footer.jsp" %>
</body>
</html>
