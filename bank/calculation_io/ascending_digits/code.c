#include <stdio.h>
#include <math.h>

int main()
{
	int n;
	scanf("%d", &n);
	
	n--;
	double number = pow(2, n);
	number--;
	
	printf("%lf", number);
}