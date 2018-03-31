#include <stdio.h>

int     main(void)
{
        int i = 0;
        #ifdef DEBUGGING
                printf("Debugging mode active !\n");
        #endif
        while (i <= 10) {
                #ifdef DEBUGGING
                        printf("i = %d\n", i);
                #endif
                i++;
        }
        return (0);
}