
#include <stdio.h>


//extern "C" void __stdcall asmfunc(void);

#ifdef __cplusplus
extern "C" {
#endif

int __stdcall asmfunc(short *p1 ,int p2);

#ifdef __cplusplus
}
#endif


int main() {
    system("cls");
    short array[] = {-3,-4,-2,-10,10,20,30,40};
    int length = sizeof (array) / sizeof array[0];
    int result = asmfunc(array , length);

if(result != 0){
     printf("-3,-4,-2,-10 \n");
}else{
     printf("No negative value found"); // printing in c
}
    
  
    
    return 0;
}