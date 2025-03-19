programa {
  funcao inicio() {
    inteiro numeros[10]
    inteiro somaNumeros = 0

    para(inteiro i = 0; i < 10; i++) {
      escreva("Digite o número: ")
      leia(numeros[i]) 
      
      somaNumeros += numeros[i]
    }

    escreva("A soma dos números é: ", somaNumeros)
  }
}
