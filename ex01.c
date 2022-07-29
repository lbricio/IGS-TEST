// -------------------------------------------------------------------------------------------------------
// ex01
// Desenvolver a função: ‘maior_valor’; que recebe quatro valores do tipo inteiro e retorna o maior valor.
// -------------------------------------------------------------------------------------------------------

#include <stdio.h>

int maior_valor(int v1, int v2, int v3, int v4)
{
	int maior = v1;
	if (maior < v2) maior = v2;
	if (maior < v3) maior = v3;
	if (maior < v4) maior = v4;
	return maior;
}

int main() {
	int a, b, c, d;
	scanf("%d %d %d %d", &a, &b, &c, &d);
	int valor = maior_valor(a, b, c, d);
	printf("%d", valor);
	return 0;
}
