#include <stdio.h>

int main()
{
	int A1, A2, A3, A4, A5;
	scanf("%d %d %d %d %d", &A1, &A2, &A3, &A4, &A5);
	
	int min = A1, max = A1;
	
	min = A2 < min ? A2 : min;
	min = A3 < min ? A3 : min;
	min = A4 < min ? A4 : min;
	min = A5 < min ? A5 : min;
	
	max = A2 > max ? A2 : max;
	max = A3 > max ? A3 : max;
	max = A4 > max ? A4 : max;
	max = A5 > max ? A5 : max;
	
	printf("%d", max - min);
}