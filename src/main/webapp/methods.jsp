<%!
    private boolean validando(){
        return true;    
    }
    private float calculcarIMC(float peso, float altura) {
        return peso/(altura*altura);
    }   
    private String resultadoIMC(float imc, String sexo) {
        String result = "";
        if(sexo.equals("masculino")){
            if(imc < 20.7){
                result = "Abaixo do peso";
            }
            else if(imc >= 20.7 && imc < 26.4){
                result = "Peso normal";
            }
            else if(imc >= 26.4 && imc < 27.8){
                result = "Marginalmente acima do peso";
            }
            else if(imc >= 27.8 && imc < 31.1){
               result = "Acima do peso ideal";
            }
            else {
                result = "Obeso";
            }
        }
        else  if(sexo.equals("feminino")){
            if(imc < 19.1){
                result = "Abaixo do peso";
            }
            else if(imc >= 19.1 && imc < 25.8){
               result = "Peso normal";
            }
            else if(imc >= 25.8 && imc < 27.3){
                result = "Marginalmente acima do peso";
            }
            else if(imc >= 27.3 && imc < 32.3){
               result = "Acima do peso ideal";
            }
            else {
                result = "Obeso";
            }
        }
        return result;  
    }
%>