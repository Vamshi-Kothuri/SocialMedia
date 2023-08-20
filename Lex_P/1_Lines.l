%{
#include<stdio.h>
int lc=0,sc=0,tc=0,ch=0,c=0,wc=0;
%}

%%
\n {lc++;}
[" "]+ {sc++;}
\t {tc++;}
. {ch++;c++;}
[a-zA-Z0-9]+ {wc++,c=c+yyleng;}
%%

int yywrap(){}

int main()
{
printf("ENTER THRE STRING: ");
yylex();
printf("%d\t%d\t%d\t%d\t%d\t",lc,sc,tc,c,(wc+ch));
return 0;
}