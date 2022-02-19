#include <stdio.h>
#include <math.h>

int factoriel(int n) {
	int temp = 1;
	while(n > 0) 
	{
		temp *= n;
		n--;
	}
	return temp;
}

int choose(int n, int k) {
	if (k == 0 || k == n) {
		return 1;
	}
	return factoriel(n) / ( factoriel(k) * factoriel(n-k) );
}

int main()
{
	int n;
	scanf("%d", &n);
	
	long temp = factoriel(n - 1) / 2;
	for (int i = 0; i <= n; i++)
	{
		int p = i % 2 == 0 ? 1 : -1;
		temp += p * choose(n, i) * factoriel(2*n - i - 1) / pow(2, n-i);
	}
	
	printf("%lu", temp);
}