#include<stdlib.h>
#include<string.h>
void main(int argv, char* argc[])
{
 char name[20] = "file ";
 int i=1;
 while(i!=argv)
 {
  strcat(name,argc[i++]);
  strcat(name," ");
 }
 system(name);
}
 
