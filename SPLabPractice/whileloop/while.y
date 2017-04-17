%{
#include<stdio.h>
#include"lex.yy.c"
extern FILE *fp;
%}

%token WHILE OB CB OCB CCB VBL NUM REL SC ASSIGN
%start S

%%
S: VALID	{printf("Valid!\n");}

VALID: WHILE OB CONDITION CB SC
     | WHILE OB CONDITION CB OCB LINES CCB
     | WHILE OB CONDITION CB LINE;

CONDITION: NUM REL NUM
	 | EXP REL EXP
	 | EXP REL NUM
	 | NUM REL EXP;

EXP: VBL | VBL NUM ;

LINE: EXP ASSIGN EXP SC | EXP ASSIGN NUM SC ;

LINES : LINE LINES | ;
%%

int main(int argc, char *argv[])
{
	yyin = fopen(argv[1],"r");
	yyparse();
	fclose(yyin);
	return 0;
}
yyerror(char *s) {
	printf("%s %s\n", s,yytext );
}   
