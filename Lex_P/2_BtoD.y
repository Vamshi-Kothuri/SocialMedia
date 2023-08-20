
%{
#include<stdio.h>
int yylex();
int yyerror(char *c);
%}


%token one zero

%%
BinExp:L {$$=$1;printf("%d",$$);}
L:L B {$$=(2*$1)+$2;}
L: B {$$=$1;}
B: one {$$=$1;}
B: zero {$$=$1;}
%%
int main()
{
printf("Enter the binary Num-:");
yyparse();
return 0;
}

int yyerror(char *c){
printf("%s",c);
}