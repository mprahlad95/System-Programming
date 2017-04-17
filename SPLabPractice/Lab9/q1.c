#include<stdlib.h>
#include<string.h>
void main(int argv, char* argc[])
{
 char name[20] = "ls ";
 strcat(name,argc[1]);
 strcat(name," -R");
 system(name);
}
 
