programa {
  funcao inicio() {
    
    inteiro positivo = 0, negativo = 0

    enquanto (verdadeiro) {
      inteiro numero
      escreva ("Digite um número: ")
      leia (numero)
      
      se (numero < 0) {
        negativo++
      }
      senao se (numero > 0){
        positivo++
      }
      senao {
        pare
     }
    }   
    escreva("Positivo: ", positivo, "\n")
    escreva("Negativo: ", negativo)   
  }
}
