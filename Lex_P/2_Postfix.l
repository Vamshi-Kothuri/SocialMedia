
%{
#include "2b.tab.h"
extern int yylval;
%}

%%
[0-9]+ {yylval=atoi(yytext);return NUM;}
[\t]+ ;
[\n] {return '\n';}
. {return *yytext;}
%%
int yywrap(){}