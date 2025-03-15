programa {
  funcao inicio() {

    inteiro correspondenciasEntregues, metaAtingida = 0, mediaDeCorrespondencias, soma = 0

    para(inteiro i = 0; i < 7; i++) {

      escreva("Quantas correspondências foram entregues hoje? ")
      leia(correspondenciasEntregues)

      soma = soma + correspondenciasEntregues

      se(correspondenciasEntregues >= 100) {
        metaAtingida++
      }
    } 
    mediaDeCorrespondencias = soma / 7

    escreva("Você atingiu ou superou sua meta em ", metaAtingida, " dias! \n")      
    escreva("A média diária de correspondencias entregues foi: ", mediaDeCorrespondencias)
  }
}
