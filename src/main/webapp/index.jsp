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
        <form class="form-horizontal" method="post">
            <fieldset>
                <div class="form-group">
                    <label for="inputPeso" class="col-lg-2 control-label">Peso</label>
                    <div class="col-lg-10">
                        <input type="number" class="form-control" name="inputPeso" value="${param.inputPeso}" placeholder="Peso em kg">
                    </div>
                    <label for="inputAltura" class="col-lg-2 control-label">Altura</label>
                    <div class="col-lg-10">
                        <input type="number" step="any" class="form-control" name="inputAltura" value="${param.inputAltura}" placeholder="Altura em metro">
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
        try {
            peso = Float.parseFloat(pesoSrt);
            altura = Float.parseFloat(alturaSrt);
        } catch(Exception e){
        }
        if(altura==0 || peso==0 || sexoStr == null) {
            %> 
            <div class="col-lg-12">
                <div class="alert alert-dismissible alert-danger">
                    <h4>Erro!</h4>
                    <p>Por favor, preencha os dados corretamente</p>
                </div>
            </div> 
            <%
            return;
        }
        float imc = peso/(altura*altura);
        %>
            <div class="col-lg-12">
                <div class="alert alert-dismissible alert-success">
                    <h4>Resultado IMC</h4>
                    <%
        if(sexoStr.equals("masculino")){
            if(imc < 20.7){
              %>
                <p>Abaixo do peso</p>
              <%
            }
            else if(imc >= 20.7 && imc < 26.4){
                %>
                <p>Peso normal</p>
                <%
            }
            else if(imc >= 26.4 && imc < 27.8){
                %>
                <p>Marginalmente acima do peso</p>
                <%
            }
            else if(imc >= 27.8 && imc < 31.1){
                %>
                <p>Acima do peso ideal</p>
                <%
            }
            else {
                %>
                <p>Obeso</p>
                <%
            }
        }
        else  if(sexoStr.equals("feminino")){
        System.out.println("entrou " + imc);
            if(imc < 19.1){
                %>
                <p>Abaixo do peso</p>
                <%
            }
            else if(imc >= 19.1 && imc < 25.8){
                %>
                <p>Peso normal</p>
                <%
            }
            else if(imc >= 25.8 && imc < 27.3){
                %>
                <p>Marginalmente acima do peso</p>
                <%
            }
            else if(imc >= 27.3 && imc < 32.3){
                %>
                <p>Acima do peso ideal</p>
                <%
            }
            else {
                %>
                <p>Obeso</p>
                <%
            }
        }   
            %>
                </div>
            </div>
            <%
    %>
    </div>
</body>

</html>