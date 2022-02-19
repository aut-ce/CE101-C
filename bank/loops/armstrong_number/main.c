// BWOTSHEWCHb

#include <stdio.h>

int power(int n , int k) {
	int ans = 1 ;
	for ( int i = 0 ; i < k ; i ++ ) {
		ans *= n ;
	}
	return ans ;
}
int main() {
	int number , i = 0 , n , result = 0 , number1 , temp ;
	scanf("%d" , &number) ;
	number1 = number ;
	temp = number ;
	while ( number != 0 ) {
		number = number / 10 ;
		i ++ ;
	}
	while ( number1 != 0 ) {
		n = number1 % 10 ;
		result = result + power(n , i) ;
		number1 = number1 / 10 ;
	}
	if ( temp == result ) {
		printf("YES\n") ;
	} else {
		printf("NO\n") ;
	}
	return 0 ;
}
