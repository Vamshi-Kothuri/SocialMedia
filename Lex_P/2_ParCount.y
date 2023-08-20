
%{
#include<stdio.h>
int yylex();
int yyerror(char *c);
int cnt=0;
%}

%token left right

%%
Expr:E {printf("%d",$$);}
E: left E right E {$$=cnt+=1;}
 | {$$=0;}
%%
int main()
{
printf("Enter the Exp-:");
yyparse();
return 0;
}

int yyerror(char *c){
printf("%s",c);
}