/******************************************************************************
 * Copyright (C) 2017 by Alex Fosdick - University of Colorado
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are 
 * permitted to modify this and use it to learn about the field of embedded
 * software. Alex Fosdick and the University of Colorado are not liable for any
 * misuse of this material. 
 *
 *****************************************************************************/
/**
 * @file stats.c   
 * @brief file to invoke stats.h header file to invoke the functions and proceed with results
 *
 * <Add Extended Description Here>
 *
 * @author <Tarun Vignesh Selvabalaji>
 * @date <24-05-2023>
 *
 */



#include <stdio.h>
#include <stdint.h>
#include "platform.h"
#include "stats.h"

void print_array(unsigned char* values, int length){

    for(int i=0;i<length;i++){
        printf("%d ",*(values+i));
    }
}

void sort_array(unsigned char* values, int length){
    int high = length-1;
    quicksort(values, 0, high);
}

void print_statistics(unsigned char* values,int length){
    printf("\n......\n..........\nPrinting Array Statistics.............\n");
    printf("mean value             = %f \n",find_mean(values,length));
    printf("Median value           = %f \n",find_median(values,length));
    printf("Minimum array value    = %d \n",find_minimum(values,length));
    printf("Maximum array value    = %d \n",find_maximum(values,length));
    printf("Statistics of array done...............\n");
}


int find_maximum(unsigned char* values, int length){
    int max = *values;

    for(int i=1;i<length;i++){
        if(max < *(values+i))
            max = *(values+i);
    }
    return max;
}

int find_minimum(unsigned char* values, int length){
    int min = *values;

    for(int i=1;i<length;i++){
        if(min > *(values+i))
            min = *(values+i);
    }
    return min;
}


float find_median(unsigned char* values, int length){
    int n=length;
    if(n%2==1)
        return *(values+n/2);
    else{
        return (*(values+n/2-1)+*(values+n/2))/2;
    }
}

float find_mean(unsigned char* values, int length){
    int sum=0;
    for(int i=0;i<length;i++){
        sum+=*(values+i);
    }
    return sum/2;
}

//----------------function for quicksort---------------------- 
// Function to swap two elements
void swap(unsigned char* a, unsigned char* b) {
    unsigned char temp = *a;
    *a = *b;
    *b = temp;
}

// Partition function for Quicksort
int partition(unsigned char* array, int low, int high) {
    unsigned char pivot = array[high];
    int i = low - 1;

    for (int j = low; j < high; j++) {
        if (array[j] <= pivot) {
            i++;
            swap(&array[i], &array[j]);
        }
    }

    swap(&array[i + 1], &array[high]);

    return i + 1;
}

// Quicksort function
void quicksort(unsigned char* array, int low, int high) {
    if (low < high) {
        int pivotIndex = partition(array, low, high);

        quicksort(array, low, pivotIndex - 1);
        quicksort(array, pivotIndex + 1, high);
    }
}