# Module 1 Assignment Documentation

# Statistics Manipulation Functions Documentation

This header file stats.h provides utility functions to perform statistical manipulations on an array of unsigned characters.
main file stats.c provides basic implementation og this.

## Function Declarations

### `void print_statistics(unsigned char* values, int length)`

Prints the statistics of the array, including the minimum, maximum, mean, and median values.

- `values`: Pointer to the unsigned character array.
- `length`: Length of the array.

### `void print_array(unsigned char* values, int length)`

Prints the elements of the array to the screen.

- `values`: Pointer to the unsigned character array.
- `length`: Length of the array.

### `float find_median(unsigned char* values, int length)`

Finds and returns the median value from the array.

- `values`: Pointer to the unsigned character array.
- `length`: Length of the array.
- Returns: Median value as a float.

### `float find_mean(unsigned char* values, int length)`

Calculates and returns the mean value of the array.

- `values`: Pointer to the unsigned character array.
- `length`: Length of the array.
- Returns: Mean value as a float.

### `int find_maximum(unsigned char* values, int length)`

Finds and returns the maximum value from the array.

- `values`: Pointer to the unsigned character array.
- `length`: Length of the array.
- Returns: Maximum value as an integer.

### `int find_minimum(unsigned char* values, int length)`

Finds and returns the minimum value from the array.

- `values`: Pointer to the unsigned character array.
- `length`: Length of the array.
- Returns: Minimum value as an integer.

### `void sort_array(unsigned char* values, int length)`

Sorts the array in ascending order using the quicksort algorithm.

- `values`: Pointer to the unsigned character array.
- `length`: Length of the array.

## Function Definitions

### `void print_array(unsigned char* values, int length)`

This function prints the elements of the array to the screen.

### `void sort_array(unsigned char* values, int length)`

This function sorts the array in ascending order using the quicksort algorithm.

### `void print_statistics(unsigned char* values, int length)`

This function prints the statistics of the array, including the minimum, maximum, mean, and median values.

### `int find_maximum(unsigned char* values, int length)`

This function finds and returns the maximum value from the array.

### `int find_minimum(unsigned char* values, int length)`

This function finds and returns the minimum value from the array.

### `float find_median(unsigned char* values, int length)`

This function finds and returns the median value from the array.

### `float find_mean(unsigned char* values, int length)`

This function calculates and returns the mean value of the array.

## Quick Sort Algorithm

The provided code includes the implementation of the quicksort algorithm to sort the array. The following functions are used:

### `void swap(unsigned char* a, unsigned char* b)`

This function swaps two elements.

### `int partition(unsigned char* array, int low, int high)`

This function partitions the array for quicksort.

### `void quicksort(unsigned char* array, int low, int high)`

This function implements the quicksort algorithm to sort the array.

---

Please note that this documentation assumes basic understanding of statistical concepts and algorithms.

