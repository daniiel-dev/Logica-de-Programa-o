programa {
  funcao inicio() {
    cadeia nome
    inteiro idade 

    escreva("Qual seu nome? ")
    leia(nome)
    escreva("Qual sua idade? ")
    leia(idade)

    mensagem(nome, idade)
    
    }

  funcao mensagem (cadeia nome, inteiro idade) {

    escreva("Olá ", nome,", você tem ", idade," anos. Seja bem-vido(a)!")
  }
}
