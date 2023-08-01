#include <stdlib.h>
#include<stdio.h>
#include<conio.h>
#include<time.h>
void main()
{
    int n =100;
    int i,j,temp;
    int num ;
    int A[100];
    for (i=0;i<n;i++)
    {
        num=rand();
      
        num = (num%500)+1;
          printf("%d\t",num);
        A[i] = num;
    }
    clock_t start,end;
    start = clock();
    
    for (i=0;i<n-1;i++)
    {
        for(j=0;j<n-1-i;j++)
          {
              if (A[j+1]<A[j])
              {
                  temp=A[j];
                  A[j] = A[j+1];
                  A[j+1]=temp;
              }
          }
    }
    end = clock();
    double exetime;
    exetime =(double)(end-start)/CLOCKS_PER_SEC;
    for(i=0;i<n;i++)
    {
        printf("%d\t",A[i]);
    }
    printf("Execution time=%f",exetime);
    
}
