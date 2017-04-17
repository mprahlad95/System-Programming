%{
#include"y.tab.h"
%}
%%
"while"	{return WHILE;}
"("	{return OB;}
")"	{return CB;}
"{"	{return OCB;}
"}"	{return CCB;}
[A-Za-z]+	{return VBL;}
[0-9]+		{return NUM;}
"<"|">"|">="|"<="|"=="	{return REL;}
"="	{return ASSIGN;}
";"	{return SC;}
%%
