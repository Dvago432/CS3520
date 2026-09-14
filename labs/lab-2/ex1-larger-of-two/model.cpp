#include <iostream>
using namespace std;

void largest(int a, int b) {

    if (a >= b) {

        cout << a <<" is largest";
    } else cout << b << " is largest";
}

int main() {

    int a, b;
    a = 2;
    b = 5;

    largest(a, b);
}