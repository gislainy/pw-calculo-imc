<%
        String pesoSrt = request.getParameter("inputPeso");
        String alturaSrt = request.getParameter("inputAltura");
        String sexoStr = request.getParameter("optionsSexo");
        float peso  = pesoSrt == null || pesoSrt.isEmpty() ? 0 : Float.parseFloat(pesoSrt);
        float altura  = alturaSrt == null || alturaSrt.isEmpty() ? 0 : Float.parseFloat(alturaSrt);
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
        %>
        <div class="col-lg-12">
            <div class="alert alert-dismissible alert-success">
                <h4>Resultado IMC</h4>
                <p>
                    <%=resultadoIMC(calculcarIMC(peso, altura), sexoStr)%>
                </p>
            </div>
        </div>