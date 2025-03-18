#include <stdio.h>
#define INT_SIZEv1 4              // Assign varible to 4 
#define INT_SIZEv2 sizeof(int)    // Size of int in bytes 

int main() {
    int arr_orig[] = {2, 5, 3, 8, 9, 7, 12, 4, -3, 3, 7, 5};    // Initilize integer array 
    int arr_size = sizeof(arr_orig)/INT_SIZEv2;                 // Get number of elements in the array
    int int_size = sizeof(int);                                 // Assign int_size to the size of an int in bytes (4) 
    int arr_final[arr_size];                                    // Make new array the same size as original array 
    const int INT_SIZEv3 = sizeof(int);                         // Set a constant of 4 bytes 

    int j = 0;
    for(int i=0;i<arr_size;i++) {
        if (!((arr_orig[i] == 3) || (arr_orig[i] == 7))) {      // If arr_orig[i] is not equal to 3 or 7 then continue
            arr_final[j] = arr_orig[i];                         
            j++;                                                // Increment j 
        }                                                       
    }
    return j;                                                   // Return j (number of elements in arr_final)
}