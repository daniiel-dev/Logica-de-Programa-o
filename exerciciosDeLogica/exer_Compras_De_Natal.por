programa {
     inclua biblioteca Matematica-->mat
  funcao inicio() {

    real valorArvore_natal, bolinhas_natal, estrelaNatal, gorroNatalino
    inteiro totalEnfeites, qtdBolinas, qtdEstrela, qtdGorro
    
      escreva("Quanto custou a árvore natalina? ")
      leia(valorArvore_natal)
      escreva("Quantos gorros natalinos foram comprados? ")
      leia(qtdGorro)
      escreva("Qual valor do gorro natalino? ")
      leia(gorroNatalino)
      escreva("Quantas bolinhas de natal foram compradas? ")
      leia(qtdBolinas)
      escreva("Qual valor das bolinhas natalinas? ")
      leia(bolinhas_natal)
      escreva("Quantas estrelas de natal foram compradas? ")
      leia(qtdEstrela)
      escreva("Qual valor das estrelas natalina? ")
      leia(estrelaNatal)
      
      real soma = somar(valorArvore_natal, bolinhas_natal * qtdBolinas, estrelaNatal * qtdEstrela, gorroNatalino * qtdGorro)

      escreva("O total gasto com a árvore de natal e enfeites foi: ")
      escreva(soma)

      real valorPor_pessoa = soma/ 21
      valorPor_pessoa = mat.arredondar(valorPor_pessoa, 2)

      escreva("\nO valor que cada funcionário deve pagar é : ", valorPor_pessoa)

    
  }

  funcao real somar(real x, real y, real z, real a) {
    real res = x + y + z + a

    retorne res
  }
  
 }
