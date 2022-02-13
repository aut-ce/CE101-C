#include <stdio.h>

int main()
{
    int n;
    scanf("%d", &n);

    int status = 0;
    status += (n % 5) + 1;
    status += ( (n % 7) + 1 ) * 10;
    status += ( (n % 11) + 1 ) * 100;
    status += ( (n % 13) + 1 ) * 1000;

    switch(status) {
        case 1111:
        case 2222:
        case 3333:
        case 4444:
        case 5555:printf("Yes"); break;
        default: printf("No");
    }
    return 0;
}

