#include <stdio.h>
#include <math.h>

int isprime(int n) 
{
	for (int i = 2; i <= sqrt(n); i++) {
		if (n % i == 0)
			return 0;
	}
	return 1;
}

int main()
{
	int n, m;
	scanf("%d", &n);
	int temp = 0;
	m = n;
	
	for (int i = 2; i <= m; i++) {
		if (isprime(i) == 1) {
			while(n % i == 0) {
				temp += i;
				n /= i;
			}
		}
	}
	
	printf("%d", temp);
}