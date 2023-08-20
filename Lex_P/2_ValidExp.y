
%{
#include<stdio.h>
int yylex();
int yyerror(char *c);
%}

%token ALP
%left '+' '-'
%left '*' '/'
%right NEGATIVE

%%
ArithExp:exp '\n' {printf("\n"); return 0;}
exp:exp'+'exp {printf("+");}
	|exp'-'exp {printf("-");}
	|exp'*'exp {printf("*");}
	|exp'/'exp {printf("/");}
	|'('exp')'
	|ALP {printf("%c",yylval);}
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