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
        %>
        <div class="col-lg-12">
            <div class="alert alert-dismissible alert-success">
                <h4>Resultado IMC</h4>
                <p>
                    <%=resultadoIMC(calculcarIMC(peso, altura), sexoStr)%>
                </p>
            </div>
        </div>