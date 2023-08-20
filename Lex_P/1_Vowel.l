
%{
#include<stdio.h>
int vc=0, cc=0;
%}

%%
[aeiouAEIOU] {vc++;}
[A-Za-z] {cc++;}
%%
int yywrap(){}
int main()
{
printf("Enter String:\n");
yylex();
printf("%d\t%d",vc,cc);
return 0;
}