programa {

  funcao inicio() {

    real precoOriginal, precoPromocao, descontoAplicado, qtdProdutosDesconto = 0

    para(inteiro i = 0; i < 5; i++) {
      escreva("\nInforme o preço original: ")
      leia(precoOriginal)
      escreva("Informe o preço promocional: ")
      leia(precoPromocao)

      descontoAplicado = precoOriginal - (precoOriginal * 0.20)
      
     se(precoPromocao <= descontoAplicado) {
      qtdProdutosDesconto++
      }

    }
    escreva("A quantidade de produtos que tiveram um desconto de pelo menos 20% foi: ", qtdProdutosDesconto)
   }
}
