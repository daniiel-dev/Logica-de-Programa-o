programa {
  funcao inicio() {

    inteiro num[3][3]
    inteiro soma = 0

    para(inteiro i = 0; i < 3; i++) {
      para(inteiro j = 0; j < 3; j++) {
        escreva("Digite o número: \n")
        leia(num[i][j])

        soma += num[i][j]
      }
    }
    escreva("A soma dos números acima é: ",soma)
  }
}
