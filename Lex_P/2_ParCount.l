
%{
#include "2e.tab.h"
%}

%%
\( {return left;}
\) {return right;}
.|\n {return 0;}
%%
int yywrap(){return 1;}