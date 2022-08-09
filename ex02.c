// -------------------------------------------------------------------------------------------------------
// ex02
// Desenvolva a função que retorna o valor fatorial no parâmetro 'valor_ft'
// -------------------------------------------------------------------------------------------------------

#include <stdio.h>

// atribui o fatorial de 'n' à variável valor_ft. caso o fatorial não seja
// válido ou não seja representável corretamente com um int será igualado a 0.
// ex: 13! resulta em um fatorial acima do valor máximo armazenável em um int,
// e valores abaixo de 0 não possuem fatoriais definidos.
void calc_fatorial(int *valor_ft, int n)
{
	*valor_ft = (n >= 0 && n <= 12) ? 1 : 0;
	while (n > 1)
		*valor_ft *= n--;
}

int main() {
	int v, vf = 0;
	int *pv = &v;
	scanf("%d", &v);
	calc_fatorial(&vf, *pv);
	printf("Valor fatorial de: [%d] é [%d]", v, vf);
	return 0;
}


