
%{
#include<stdio.h>
void table(int);
%}

%%
[0-9]+ {int num=atoi(yytext);table(num);}
%%
void table(int n){
	for(int i=1;i<=10;i++){
		printf("%d * %d = %d\n",n,i,n*i);
	}
}
int yywrap(){}
int main()
{
printf("eNTER THE TABLE_NUM");
yylex();
return 0;
}