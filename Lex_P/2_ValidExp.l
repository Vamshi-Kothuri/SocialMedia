%{
#include "2c.tab.h"
extern char yylval;
%}

%%
[A-Za-z] {yylval=yytext; return ALP;}
[\t]+ ;
[\n] {return '\n';}
. {return yytext[0];}

%%

int yywrap(){return 0;}
