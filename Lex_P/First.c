#include<stdio.h>
#include<ctype.h>

char prod[10][10];
int n;
void first(char[],char);
void addToResult(char[],char);

int main(){
	char choice;
	char c;
	char result[10];
	
	printf("Enter the No of Productions-:");
	scanf("%d",&n);
	int i;
	for(i=0;i<n;i++){
		printf(" %d ",i+1);
		scanf("%s",prod[i]);
	}
	/*do{
		printf("enter first of character");
		scanf(" %c",&c);
		first(result,c);
		printf("first (%c)={",c);
		for(i=0;i<result[i]!='\0';i++)
			printf("%c ",result[i]);
			printf("}\n");
			printf("enter y to next first");
			scanf(" %c",&choice);
	}
	while(choice=='y' || choice=='Y');*/
	do{
		printf("Enter the char to find first-:");
		scanf(" %c",&c);
		first(result,c);
		printf("First (%c)->{ ",c);
		for(i=0;result[i]!='\0';i++){
			printf(" %c",result[i]);
		}
		printf(" }\n");
		printf("\nEnter y to continue..");
		scanf(" %c",&choice);
		
	}while(choice=='Y' || choice=='y');
	
	return 0;
}
void first(char *result,char c){
	
	int i,j,k,fe;
	char subresult[10];
	subresult[0]='\0';
	result[0]='\0';
	if(!(isupper(c))){
		addToResult(result,c);
		return;
	}
	for(i=0;i<n;i++){
		if(prod[i][0]==c){
			if(prod[i][2]=='$'){
				addToResult(result,'$');
			}
			else{
				j=2;
				while(prod[i][j]!='\0'){
					fe=0;
					first(subresult,prod[i][j]);
					for(k=0;subresult[k]!='\0';k++){
						addToResult(result,subresult[k]);
					}
					for(k=0;subresult[k]!='\0';k++)
						if(subresult[k]=='$')
							fe=1;
							break;
						if(!fe)
							break;
						j++;
				}
			}
		}
	}
	return;
	
}
void addToResult(char *result,char c){
	int i;
	for(i=0;result[i]!='\0';i++){
		if(result[i]==c){
			return;
		}
	}
	result[i]=c;
	result[i+1]='\0';
}




 /*
 S-aABb
 A-c
 A-$
 B-d
 B-$
 */











