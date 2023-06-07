/******************************************************************************
 * Copyright (C) 2023 by Tarun Vignesh Selvabalaji - University of Colorado
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are 
 * permitted to modify this and use it to learn about the field of embedded
 * software.
 *
 *****************************************************************************/
/**
 * @file main.c
 * @brief Main entry point to the C1M2 Assessment
 *
 * This file contains the main code for the C1M2 assesment. Students
 * are not to change any of the code, they are instead supposed to compile
 * these files with their makefile.
 *
 * @author Tarun Vig nesh Selvabalaji
 * @date June 7,2023
 *
 */
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "memory.h"
#include "stats.h"
#include "data.h"


int main(){
    #ifdef COURSE1
        printf("calling course1()\n");
        course1();  
        return 0;
    #endif

    return 0;
}