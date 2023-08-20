
%{
#include<stdio.h>
int fc=0,ic=0;
%}

%%
[0-9]*"."[0-9]+ {printf("Float_Num\n");fc++;}
[0-9]+ {printf("Int_Num\n");ic++;}
[0-9]+"." {printf("Not_Int_Float\n");}
. {printf("");}
%%
int yywrap(){}
int main()
{
printf("Enter the Seq of NUm");
yylex();
printf("fc-:%d \t ic-:%d",fc,ic);
return 0;
}