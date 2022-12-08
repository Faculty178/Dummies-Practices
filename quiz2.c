#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define MAX_LENGTH 9999


int main(){

    int n;
    scanf("%d", &n);
    if(n > 100){
        printf("Too many strings");
    }

    char ** string_array;
    string_array = malloc(sizeof(char*) * n);
    char tmp[MAX_LENGTH];

    for(int i = 0; i < n; i++){
        scanf("%s", tmp);
        string_array[i] = (char*)malloc(strlen(tmp) + 1);
        strcpy(string_array[i], tmp);
    }


    for(int i = 0; i < n; i++){
        printf("%s \n", string_array[i]);
    }

    for(int i = 0; i < n; i++){
        free(string_array[i]);
    }
    return 0;

}