%{
#include<stdio.h>
%}
%token A B END 
%start S
%%
S: N M END	{printf("Valid!\n");exit(0);}
N: A N | ;
M: B M | ;
%%
main()
{
yyparse();
}
yyerror()
{
printf("Invalid!\n");
}
