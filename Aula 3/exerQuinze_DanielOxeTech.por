programa {
  funcao inicio() {

    enquanto (verdadeiro) {
      inteiro pH
      escreva("Digite o pH: ")
      leia(pH)

      se (pH == - 1) {
        pare
      }

      se (pH < 7) {
        escreva("Substância Ácida!")
      }
      senao se (pH > 7){
        escreva("Substância Básica!")
      }
      senao { 
      escreva("Substância Neutra!")
      }
    }   
  }
}
