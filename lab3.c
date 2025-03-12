#include <stdio.h>

int main() {

    int array[] = {7, -3, 43, 19};
    int max = -100; 

    for (int i = 0; i < 4; i++) {
        if (max < array[i]) {
            max = array[i];
        }
    }

    printf("The maximum value in the array is: %d\n", max);
    return 0; 
}