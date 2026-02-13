#include <stdio.h> 
extern unsigned char ram[]; 

extern void seriesSum(void); 

int main()
{seriesSum(); 
    printf("RAM content 50H: \n");

    printf("%02i ", ram[0x50]); 
    return 0; 
}