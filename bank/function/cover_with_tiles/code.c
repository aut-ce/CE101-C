#include <stdio.h>

int compute(int n) 
{
	if (n == 1) 
		return 3;
	else if (n == 2)
		return 11;
	else
		return 4 * compute(n - 1) - compute(n - 2);
}

int main()
{
	int n;
	scanf("%d", &n);
	printf("%d", compute(n));
}