%{
#include<stdio.h>
int yylex();
int yyerror(char *c);
%}

%token NUM
%left '+' '-'
%left '*' '/' '%'
%left '(' ')'

%% 
ArithExp:exp '\n' {printf("\nResult-:%d\n",$$);return 0;}
exp:exp'+'exp {$$=$1+$3;}
	|exp'-'exp {$$=$1-$3;}
	|exp'*'exp {$$=$1*$3;}
	|exp'/'exp {$$=$1/$3;}
	|exp'%'exp {$$=$1%$3;}
	|'('exp')' {$$=$2;}
	|NUM {$$=$1;}
	;
%%
int main(){
printf("Enter Exp-:");
yyparse();
return 0;
}

int yyerror(char *c){
printf("%s",c);
}