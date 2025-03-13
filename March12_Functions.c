// Function prototype declarations
int addOne(int sum);
int addTwoNumbers(int a, int b);

int main() {
    int num1 = 5;	// Use t0
    int num2 = 7;	// Use t1
    int result;		// Use any register you’d like but explain 
				// your choice.
    
    result = addTwoNumbers(num1, num2);
    printf("Answer is " + result);
    return 0;
}

// First function that adds two numbers 
int addTwoNumbers(int a, int b) {
    int sum = a + b;
    
    return addOne(sum);
}

// Second function that adds 1 to a number
int addOne(int sum) {
    int finalResult = sum + 1;	// finalResult in s0
    
    return finalResult;
}
