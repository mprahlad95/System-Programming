%{
#include<stdio.h>
int words=0,lines=0,cap=0,sma=0,spc=0,num=0;
%}
%%
\n {lines++;words++;}
[\t ' '] {words++;}
[A-Z] {cap++;}
[a-z] {sma++;}
[0-9] {num++;}
. {spc++;}
%%
main()
{
yyin= fopen("test.c","r");
yyout=fopen("out.txt","w");
yylex();
fprintf(yyout,"Number of lines = %d\n",lines);
fprintf(yyout,"Number of words = %d\n",words);
fprintf(yyout,"Number of capital letters = %d\n",cap);
fprintf(yyout,"Number of small letters = %d\n",sma);
fprintf(yyout,"Number of digits = %d\n",num);
fprintf(yyout,"Number of special characters = %d\n",spc);
fclose(yyin);
fclose(yyout);
system("cat out.txt");
}

