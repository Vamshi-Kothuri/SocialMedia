#include<stdio.h>
#include<string.h>
#include<ctype.h>
int n,m=0,i=0,j=0;
char prod[10][10],result[10];
void first(char c);
void follow(char c);
void addToResult(char c);

int main(){
	int i,choice;
	char c;
	printf("Enter the No Of Productions-:");
	scanf("%d",&n);
	for(i=0;i<n;i++){
		printf(" %d ",i);
		scanf("%s",prod[i]);
	}
	do{
		m=0;
		printf("Enter the follow char-:");
		scanf(" %c",&c);
		follow(c);
		printf("Follow of(%c)-> { ",c);
		for(i=0;i<m;i++){
			printf("%c ",result[i]);
		}
		printf("}\n");
		printf("Enter 1 to con..");
		scanf("%d",&choice);
		
	}while(choice==1);
	return 0;
}
void follow(char c){
	if(prod[0][0]==c) addToResult('$');
	for(i=0;i<n;i++){
		for(j=2;j<strlen(prod[i]);j++){//check RHS productions for char
			if(prod[i][j]==c){
				if(prod[i][j+1]!='\0')
					first(prod[i][j+1]);
				if(prod[i][j+1]=='\0')
					follow(prod[i][0]);
			}
		}
	}
}
void first(char c){
	int k;
	if(!(isupper(c))) addToResult(c);
	for(k=0;k<n;k++){
		if(prod[k][0]==c){
			if(prod[k][2]=='$')
				follow(prod[k][0]);
			else if((islower(prod[k][2])))
				addToResult(prod[k][2]);
			else
				first(prod[k][2]);
		}
	}
}
void addToResult(char c){
	int i;
	for(i=0;i<=m;i++){
		if(result[i]==c)
			return;
		
	}
	result[m++]=c;
}

