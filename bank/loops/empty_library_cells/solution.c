#include <stdio.h>
#include <stdbool.h>

int main()
{
    int n;
    scanf("%d", &n);
    int total_counter = 0;
    
    for (int i = 0; i < n; i++) {
	bool b = true;
        int zero_counter = 0;
        for (int j = 0; j < n; j++) {
            int x;
            scanf("%d", &x);
            if (x == 0) {
                zero_counter++;
            }
            if (zero_counter > 1 && b) {
                total_counter++;
		b = false;
            }
        }
    }
    printf("%d", total_counter);
}