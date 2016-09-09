<!DOCTYPE html>
<html>

<head>
    <%@ include file="header.html" %>
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
        <!--FORMULARIO -->
        <form class="form-horizontal">
            <fieldset>
                <div class="form-group">
                    <label for="inputPeso" class="col-lg-2 control-label">Peso</label>
                    <div class="col-lg-10">
                        <input type="type" class="form-control" name="inputPeso" value="${param.inputPeso}" placeholder="Peso em kg">
                    </div>
                    <label for="inputAltura" class="col-lg-2 control-label">Altura</label>
                    <div class="col-lg-10">
                        <input type="type" class="form-control" name="inputAltura" value="${param.inputAltura}" placeholder="Altura em metro">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-2 control-label"></label>
                    <div class="col-lg-10">
                        <div class="radio">
                            <label>
                                <input type="radio" name="optionsSexo"  value="masculino">
                                Masculino
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="optionsSexo" value="feminino">
                                    Feminino         
                                </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                        <button type="submit" class="btn btn-primary">Calcular</button>
                    </div>
                </div>
            </fieldset>
        </form>
        <%
        String pesoSrt = request.getParameter("inputPeso");
        String alturaSrt = request.getParameter("inputAltura");
        String sexoStr = request.getParameter("optionsSexo");
        pesoSrt = pesoSrt == null ? "0" : pesoSrt;
        alturaSrt = alturaSrt == null ? "0" : alturaSrt;
        float peso = 0, altura = 0;
        boolean jaExecetou = false;
        try {
            peso = Float.parseFloat(pesoSrt);
            altura = Float.parseFloat(alturaSrt);
            jaExecetou = true;
        } catch(Exception e){
        }
        if(altura==0) return;
        float imc = peso/(altura*altura);
        %>
            <div class="col-lg-12">
                <div class="alert alert-dismissible alert-success">
                    <h4>Resultado IMC</h4>
                    <%
        if(sexoStr == "masculino"){

            if(imc < 20.7){
              %>
                        <p>Abaixo do peso</p>
                        <%
            }
        }
        else if(sexoStr == "feminino"){
        }   
            %>
                </div>
            </div>
            <%
    %>
    </div>

    <!--if(!peso==0 || !altura==0) {
            
            <div class="col-lg-12">
                <div class="alert alert-dismissible alert-danger">
                    <h4>Erro!</h4>
                    <p>Por favor, digite um peso ou uma altura valida</p>
                </div>
            </div>
            
        } -->
</body>

</html>