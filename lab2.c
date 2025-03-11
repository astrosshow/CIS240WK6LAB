#include <stdio.h>

int main() {
    
    // Define an integer array (This goes in the .data section)
    int array[] = {7, -3, 43, 19};

    int max = array[0];

    if (max < array[1]) {
        max = array[1];
    }
    if (max < array[2]) {
        max = array[2];
    }
    if (max < array[3]) {
        max = array[3];
    }
    if (max < array[4]) {
        max = array[4];
    }

    // Print the maximum value
    printf("The maximum value is: %d\n", max);
    
    return 0;
}