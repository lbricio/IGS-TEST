//-------------------------------------------------------------------------------------------------------
// ex04
// Desenvolva a função a qual recebe dois valores de inteiros e que faça a todas as operações de 
// ‘Bitwise’ e devolva o maior resultado entre eles.
//-------------------------------------------------------------------------------------------------------

#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
#define AND &
#define OR |
#define XOR ^
#define NOT ~

int maior_valor(int v1, int v2, int v3, int v4);

int calc_max_bitwise(int v1, int v2) {
	int op1 = v1 AND v2;
	int op2 = v1 OR v2;
	int op3 = v1 XOR v2;
	int op4 = (NOT v1 > NOT v2) ? ~v1 : ~v2;
	
	return maior_valor(op1, op2, op3, op4);
}

int maior_valor(int v1, int v2, int v3, int v4) {
	int maior = v1;
	if (v2 > maior) { maior = v2; }
	if (v3 > maior) { maior = v3; }
	if (v4 > maior) { maior = v4; }
	return maior;
}

int main() {
	int valor_1, valor_2, maior_valor;
	printf("Informe os valores.\n");
	scanf("%d %d", &valor_1, &valor_2);
	maior_valor = calc_max_bitwise(valor_1, valor_2);
	printf("O maior valor é: %d .\n", maior_valor);
	return 0;
}
