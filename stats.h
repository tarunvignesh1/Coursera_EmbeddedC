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
 * @file stats.h
 * @brief Function declarations and definitions related to statistics manipulations.
 *
 *
 * @author <Tarun Vignesh Selvabalaji>
 * @date <24-05-2023>
 *
 */
#ifndef __STATS_H__
#define __STATS_H__

/// @brief A function that prints the statistics of an array including minimum, maximum, mean, and median
/// @param values pointer to n-array
/// @return No return value
void print_statistics(unsigned char* values);


/// @brief Given an array of data and a length, prints the array to the screen
/// @param values 
/// @param length 
void print_array(unsigned char* values,int length);

/// @brief Given an array of data and a length, returns the median value
/// @param values
/// @param length
/// @return median value in float
float find_median(unsigned char * values,int length);

/// @brief Given an array of data and a length, returns the mean
/// @param values 
/// @param length
/// @return mean value in float
float find_mean(unsigned char * values,int length);

/// @brief Given an array of data and a length, returns the maximum
/// @param values 
/// @param length 
/// @return in int
int find_maximum(unsigned char * values,int length);

/// @brief Given an array of data and a length, returns the minimum
/// @param values 
/// @param length 
/// @return in int
int find_minimum(unsigned char * values,int length);

/// @brief Given an array of data and a length, sorts the array from largest to smallest.  
/// (The zeroth Element should be the largest value, and the last element (n-1) should be the smallest value. )
/// @param values 
/// @param length 
void sort_array(unsigned char * values, int length);



//definitions

void print_array(unsigned char* values, int length){

    for(int i=0;i<length;i++){
        printf("%c ",values[i]);
    }
}


#endif /* __STATS_H__ */