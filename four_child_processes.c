//Write C Program to create exactly four child processes on UNIX /LINUX & assign each a unique task of addition , subtraction, multiplication, Division.

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

void perform_addition() {
    int a = 10, b = 5;
    printf("Addition: %d + %d = %d\n", a, b, a + b);
}

void perform_subtraction() {
    int a = 10, b = 5;
    printf("Subtraction: %d - %d = %d\n", a, b, a - b);
}

void perform_multiplication() {
    int a = 10, b = 5;
    printf("Multiplication: %d * %d = %d\n", a, b, a * b);
}

void perform_division() {
    int a = 10, b = 5;
    if (b != 0) {
        printf("Division: %d / %d = %d\n", a, b, a / b);
    } else {
        printf("Division by zero is undefined.\n");
    }
}

int main() {
    pid_t pid;
    int i;

    for (i = 0; i < 4; i++) {
        pid = fork();

        if (pid < 0) {
            perror("fork");
            exit(EXIT_FAILURE);
        }

        if (pid == 0) {
            // Child process
            switch (i) {
                case 0:
                    perform_addition();
                    break;
                case 1:
                    perform_subtraction();
                    break;
                case 2:
                    perform_multiplication();
                    break;
                case 3:
                    perform_division();
                    break;
                default:
                    break;
            }
            exit(EXIT_SUCCESS);  // Ensure child process exits after performing its task
        }
    }

    // Parent process waits for all child processes to finish
    for (i = 0; i < 4; i++) {
        wait(NULL);
    }

    printf("All child processes have completed their tasks.\n");
    return 0;
}
