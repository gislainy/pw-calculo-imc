<!DOCTYPE html>
<html>

<head>
    <%@ include file="header.html" %>
        <%@ include file="methods.jsp" %>
            <meta charset="ISO-8859-1">
            <title>Calculo de IMC</title>
</head>

<body>
    <!--CABEÇALHO-->
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="">Calculo IMC</a>
            </div>
        </div>
    </nav>
    <div class="container">
        <!--FORMULARIO-->
        <%@ include file="formulario.html" %>
        <%@ include file="coletandoDados.jsp" %>
    </div>
</body>

</html>