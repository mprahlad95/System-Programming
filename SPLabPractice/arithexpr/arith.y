%{
#include<stdio.h>
#include<string.h>
char str[50];
int ctr=0;
%}
%token NUM
%left '+' '-'
%left '*' '/'
%left '(' ')'
%%
S: E {printf("Result = %d\n",$$);return 0;}
E: E '+' E {$$ = $1 + $3; strcat(str,"+"); ctr++;}
 | E '-' E {$$ = $1 - $3; strcat(str,"-"); ctr++;}
 | E '*' E {$$ = $1 * $3; strcat(str,"*"); ctr++;}
 | E '/' E {$$ = $1 / $3; strcat(str,"/"); ctr++;}
 | '(' E ')'{$$ = $2;}
 | NUM;
%%
main()
{
	printf("Enter the arithmetic expression:\n");
	yyparse();
	printf("Expressions used - %s\n",str);
	printf("Valid Expression!\n");
}
yyerror()
{
printf("Invalid Expression!\n");
}
