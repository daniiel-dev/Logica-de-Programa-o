#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define TAM 100

int qtdAlunos = 0;
float somaNotas = 0, mediaNotas = 0;

struct notas{
    float matematica;
    float sociologia;
    float biologia;
};
typedef struct aluno{
    char nome[50];
    int matricula;
    struct notas notas;
}Aluno;
void cadastrarAluno(Aluno aluno[]) {
    
    if(qtdAlunos > TAM) {
        printf("Limite de matriculas excedido!\n");
        return;
    }
    printf("\nInforme os dados da matricula: \n");
    printf("Nome do aluno: ");
    scanf("%49[^\n]", aluno[qtdAlunos].nome); 
    printf("Numero da matricula: ");
    scanf("%d", &aluno[qtdAlunos].matricula);
    printf("Notas \n");
    printf("Nota de Matematica: ");
    scanf("%f", &aluno[qtdAlunos].notas.matematica);
    printf("Nota de Sociologia: ");
    scanf("%f", &aluno[qtdAlunos].notas.sociologia);
    printf("Nota de Biologia: ");
    scanf("%f", &aluno[qtdAlunos].notas.biologia);
    qtdAlunos++;
    printf("Matricula realizada com sucesso!\n\n");
}
void listarAluno(Aluno aluno[]) {
    
    for(int i = 0; i < qtdAlunos; i++) {
        printf("\nDados do aluno %d: \n", i + 1);
        printf("Nome: %s\n", aluno[i].nome);
        printf("Numero da matricula %d\n", aluno[i].matricula);
        printf("Notas: \n");
        printf("Nota de Matematica: %.2f\n", aluno[i].notas.matematica);
        printf("Nota de Sociologia: %.2f\n", aluno[i].notas.sociologia);
        printf("Nota de Biologia: %.2f\n", aluno[i].notas.biologia);
    }   
}
int buscarAluno(Aluno aluno[], int matricula) {

    for(int i = 0; i < qtdAlunos; i++) {
        if(aluno[i].matricula == matricula) {
            return i;
        }
    }
    return -1;
}
void mediaAluno(Aluno aluno[]) {
    int matricula;
    printf("Matricula do aluno: ");
    scanf("%d", &matricula);

    int res = buscarAluno(aluno, matricula);

    if(res != -1) {
        somaNotas = aluno[res].notas.matematica + aluno[res].notas.sociologia + aluno[res].notas.biologia;
        mediaNotas = somaNotas/3;

        printf("Media: %.2f\n", mediaNotas);
    }
    else{
        printf("Matricula nao encontrada.");
    }
}
void aprovacao(Aluno aluno[]) {
    for(int i = 0; i < qtdAlunos; i++) {
        somaNotas = aluno[i].notas.matematica + aluno[i].notas.sociologia + aluno[i].notas.biologia;
        mediaNotas = somaNotas/3;
        if(mediaNotas >= 6) {
            printf("\nAluno de matricula %d, esta APROVADO(A)!", aluno[i].matricula);
        }
        else{
            printf("\nAluno de matricula %d, esta REPROVADO(A)!", aluno[i].matricula);
        }
    }
}
void removerMatricula(Aluno aluno[]){
    int matricula;

    printf("\nDigite o numero da matricula do aluno para remover: ");
    scanf("%d", &matricula);

    int res = buscarAluno(aluno, matricula);

    if(res != -1) {
        for(int i = res; i < qtdAlunos-1; i++) {
            qtdAlunos--;
        }
        printf("Aluno removido com sucesso!");
    } 
    else {
        printf("\nMatricula nao encontrada!");
    } 
}
int main () {
    int opcao;
    Aluno aluno[TAM];
    int matricula;

    while (1) {
        printf("Escolha uma opcao:\n");
        printf("1 - Cadastrar aluno\n");
        printf("2 - Exibir matriculas\n");
        printf("3 - Buscar matricula do aluno\n");
        printf("4 - Calcule a media do aluno\n");
        printf("5 - Mostrar alunos aprovados e reprovados\n");
        printf("6 - Remover matricula do sistema\n");
        printf("7 - Finalizar programa\n\n");
        printf("Escolha uma opcao: ");

        scanf("%d", &opcao);
        system("clear");

        if(opcao == 7) {
            printf("Finalizando...");
            break;
        }

        switch (opcao)
        {
        case 1:
            getchar();
            cadastrarAluno(aluno);
            break;

        case 2: 
            listarAluno(aluno);
            break;
        
        case 3: 
            printf("\nDigite o numero da matricula: ");
            scanf("%d", &matricula);

            int res = buscarAluno(aluno, matricula);
   
            if(res != -1) {
                printf("\nAluno encontrado: \n");
                printf("Nome: %s\n", aluno[res].nome);
                printf("Matricula: %d\n", aluno[res].matricula);
                printf("Notas\n");
                printf("Nota de Matematica: %.2f\n", aluno[res].notas.matematica);
                printf("Nota de Sociologia: %.2f\n", aluno[res].notas.sociologia);
                printf("Nota de Biologia: %.2f\n", aluno[res].notas.biologia);
            }
            else{
                printf("Matricula nao encontrada!\n");
            }
            break;

        case 4: 
            mediaAluno(aluno);
            break;

        case 5: 
            aprovacao(aluno);
            break;

        case 6:
            removerMatricula(aluno);
            break;

        default:
            printf("Opcao invalida, tenta outra!\n\n");
            break;
        }

    }
    return 0;
}
