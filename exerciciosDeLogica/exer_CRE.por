programa {
  funcao inicio() {
    inteiro menorCREMatricula, qtdCRE = 0
    real mediaCREs = 0.0, menorCRE = 11, somacre = 0.0
  
    enquanto(verdadeiro) {
      inteiro matricula
      real cre

      escreva("Informe sua matricula: ")
      leia(matricula)

      se(matricula == 999) {
        escreva("A matricula com menor CRE é: ", menorCREMatricula, "\n")  
        escreva("A média foi: ", somacre / qtdCRE)
        pare
      }
      
      escreva("Informe seu CRE: ")
      leia(cre)

      qtdCRE++
      somacre = somacre + cre

      se(cre < menorCRE){
        menorCRE = cre
        menorCREMatricula = matricula
      }
    }
  }
}
