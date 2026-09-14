#include <iostream>
using namespace std;

//sum numbers from n to 0

int sum_to_n(int n) {

    int sum = 0;
    if (n == 0) return sum;

    sum += n + sum_to_n(n - 1);
    return sum;

}

int main() {

    int n = 5;
   cout << sum_to_n(n);
}