programa {
  funcao inicio() {

    inteiro numero, qtdPares = 0, soma = 0

    escreva ("Informe o valor do número: ")
    leia (numero)

    para (inteiro contador = 1; contador <= numero; contador++) {
        
      se (contador % 2 == 0) {
        soma = soma + contador
      }
    }

    escreva ("A soma dos números pares é: ", soma)
  }
}
