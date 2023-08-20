
%{
#include<stdio.h>
int length=0;
void fun(int);
%}

%%
[a-zA-Z0-9]+ {length=yyleng;fun(length);}
%%
void fun(int len){
if(yytext[0]=='A' || yytext[0]=='a'){
	if(len==3){
		printf("%s\n",yytext);
	}
}
}
int yywrap(){}
int main()
{
printf("Enter the String-:");
yylex();
return 0;
}