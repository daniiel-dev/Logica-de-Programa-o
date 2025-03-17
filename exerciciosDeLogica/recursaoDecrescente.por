programa {
  funcao inicio() {
    inteiro n
    escreva("Informe um número: ")
    leia(n)
    contagem(n)
  }

  funcao contagem(inteiro n) {
    se(n == 0) {
      retorne
    }
    escreva(n, " ")
    contagem(n - 1)

  }
}
