
%{
#include "2d.tab.h"
extern int yylval;
%}

%%
1 {yylval=1;return one;}
0 {yylval=0;return zero;}
[\n] {return 0;}
. {return 0;}
%%
int yywrap(){return 1;}