programa {
  funcao inicio() {

    inteiro qtdNumeros, qtdPares = 0, qtdImpar = 0, soma = 0

      escreva ("Quantos números você vai digitar? ")
      leia (qtdNumeros)

    para (inteiro contador = 1; contador <= qtdNumeros; contador++) {

      inteiro numero 

      escreva ("Digite um número: ")
      leia (numero)

      se (numero % 2 == 0) {
       qtdPares++
      }
      senao {
        qtdImpar++
      }

      soma = soma + numero
    }
    
      escreva ("Soma: ", soma, "\n")
      escreva ("Pares: ", qtdPares, "\n")
      escreva ("Impares: ", qtdImpar, "\n")
  }
}
