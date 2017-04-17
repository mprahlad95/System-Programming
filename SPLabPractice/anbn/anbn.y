%{
#include<stdio.h>
%}
%token A B END
%start S
%%
S: A X B END	{printf("Valid!\n");}
X: A X B | ;
%%
main()
{
yyparse();
}
yyerror()
{
printf("Invalid\n");
}
