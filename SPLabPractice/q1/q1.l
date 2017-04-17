%{
#include"y.tab.h"
#include<math.h>
extern double vbltable[26];
%}
%%
"add"	{return ADD;}
"mul"	{return MUL;}
"div"	{return DIV;}
"sub"	{return SUB;}
"sqrt"	{return SQRT;}
"log"	{return LOG;}
"("	{return OB;}
")"	{return CB;}
","	{return COMMA;}
"="	{return AOP;}
[0-9]+\.[0-9]+	{yylval.val = atof(yytext);return NUM;}
[A-Z]	{yylval.vblno = yytext[0] - 'A';return ID;}
[\n]	{return ENTER;}
.	{return yytext[0];}
%%
