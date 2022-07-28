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
#define RIGHT_SHIFT >>
#define LEFT_SHIFT <<

int calc_max_bitwise(int v1, int v2) {
	int max = (v1 AND v2);
	if (max < (v1 OR  v2)) max = (v1 OR v2);
	if (max < (v1 XOR v2)) max = (v1 XOR v2);

	if (max < (NOT v1)) max = (NOT v1);
	if (max < (NOT v2)) max = (NOT v2);

	if (max < (v1 RIGHT_SHIFT v2)) max = (v1 RIGHT_SHIFT v2);
	if (max < (v2 RIGHT_SHIFT v1)) max = (v2 RIGHT_SHIFT v1);
	if (max < (v1 LEFT_SHIFT  v2)) max = (v1 LEFT_SHIFT  v2);
	if (max < (v2 LEFT_SHIFT  v1)) max = (v2 LEFT_SHIFT  v1);
	return max;
}

int main() {
	int valor_1, valor_2, maior_valor;
	printf("Informe os valores.\n");
	scanf("%d %d", &valor_1, &valor_2);
	maior_valor = calc_max_bitwise(valor_1, valor_2);
	printf("O maior valor é: %d .\n", maior_valor);
	return 0;
}
