#include <stdio.h>

int main(){
    int n, x = 0, y = 0, i =2;
    scanf("%d", &n);

    for( i = 2; i <= n; i++){
        int state = i % 4;
        switch (state) {
            case 0: x = -x; break;
            case 1: y = -y; break;
            case 2: x = -x; x++; break;
            case 3: y = -y; y++; break;
        }
    }
    printf("%d %d", x, y);

    return 0;
}

