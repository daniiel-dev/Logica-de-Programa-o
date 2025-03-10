programa {
  funcao inicio() {
    
    inteiro idade

    escreva("Qual sua idade? ")
    leia(idade)

    se (idade < 16){
      escreva ("Você ainda não pode votar! ")
    }
    senao se (idade >= 18 e idade <= 65){
      escreva ("Eleitor obrigatório! ")
    }
    senao {
      escreva("Eleitor facultativo ")
    }
    
    
  }
}
