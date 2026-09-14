#include <iostream>
using namespace std;

int count_even_elements (int array[], int n) {

    int count = 0;

    for (int i = 0; i < n; i++) {

        if (array[i] % 2 == 0) {

            count++;
        }
    }

    return count;
}

int main() {

    int array[6] = {1, 2, 4, 5, 7, 8};
    int n = 6;
    cout << count_even_elements(array, n);
}