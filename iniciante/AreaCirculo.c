#include <stdio.h>

int main () {
    double pi = 3.14159;
    double raio = 0.00;
    scanf("%lf", &raio);

    double A = pi * (raio * raio);

    printf("A=%.4lf\n", A);

    return 0;
}