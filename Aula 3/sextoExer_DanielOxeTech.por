programa {
  funcao inicio() {
    inteiro idade
    escreva("Qual sua idade? ")
    leia(idade)
    
    se(idade > 65){
      escreva("Você é idoso!")
    }
    senao se (idade >= 18){
      escreva ("Você é adulto! ")
    }
    senao se (idade >= 13){
      escreva("Você é um adolescente!")
    }
    senao
     escreva("Você é uma criança!")
  }
}
