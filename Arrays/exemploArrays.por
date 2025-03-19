programa {
  funcao inicio() {
    
    real somaNotas = 0.0, mediaNotas = 0.0
    real notas[4]

    para(inteiro i = 0; i < 4; i++) {
      escreva("Informe a nota: ")
      leia(notas[i])
      somaNotas += notas[i]
    }

    mediaNotas = somaNotas/ 4

    inteiro acimaMedia = 0

    para(inteiro i = 0; i < 4; i++) {
      se (notas[i] >= mediaNotas) {
        acimaMedia++
      }
    }
    
    escreva("Notas acima da média: ", acimaMedia)
  }
}
