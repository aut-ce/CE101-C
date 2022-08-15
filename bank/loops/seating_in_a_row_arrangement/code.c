#include <stdio.h>

int fibo(int n) 
{
	int i = 0;
	int start = 0, current = 1, next;
	
	while(i < n) {
		next = start + current;
		start = current;
		current = next;
		i++;
	}
	
	return current;
}

int main()
{
	int n;
	scanf("%d", &n);
	
	printf("%d", fibo(n));
}