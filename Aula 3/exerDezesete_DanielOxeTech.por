programa {
  funcao inicio() {
    real media
    inteiro faltas

    escreva("Qual sua média? ")
    leia(media)
    escreva("Quantas faltas ao semestre? ")
    leia(faltas)

    resultado(media, faltas)

    //escreva(resultado)

  }
  funcao resultado (real media, inteiro faltas){
    se(media >= 9.5 e faltas <= 10){
      escreva("APROVADO COM LOUVOR")
    }
    senao se (media >= 7.0 e faltas <= 10){
     escreva("APROVADO")
      }
    senao{
     escreva("REPROVADO")
     }  
  }
}
