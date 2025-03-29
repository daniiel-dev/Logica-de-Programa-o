#include <stdio.h>

int main() {

    int num;

    printf("Digite um numero: ");
    scanf("%d", &num);

    if(num == 0) {
        printf("Zero");
    }
    else if(num < 0) {
        printf("Negativo");
    }
    else {
        printf("Positivo");
    }
}
