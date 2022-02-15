#include<stdio.h>
#include<math.h>

int main()
{
    int x1, y1, x2, y2, n, m;
    scanf("%d %d %d %d %d %d", &x1, &y1, &x2, &y2, &n, &m);

    int ans = ceil(1.0 * abs(x2 - x1) / n) + ceil(1.0 * abs(y2 - y1) / m);

    printf("%d", ans);
}
