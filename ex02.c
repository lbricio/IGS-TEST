//-------------------------------------------------------------------------------------------------------
// ex02
// Desenvolva a função que retorna o valor fatorial no parâmetro 'valor_ft'
// -------------------------------------------------------------------------------------------------------

#include <stdio.h>

void calc_fatorial(int *valor_ft, int valor_n) {
	*valor_ft = (valor_n < 0 || valor_n > 12)? 0 : 1;
	while (valor_n > 1)
		*valor_ft *= valor_n --;
}

int main() {
	int v, vf = 0;
	int *pv = &v;
	scanf("%d", &v);
	calc_fatorial(&vf, *pv);
	printf("Valor fatorial de: [%d] é [%d]", v, vf);
	return 0;
}
