%{

#include<stdio.h>

int valid=1;

%}

Assignment:
	Identifier = Exp;

Exp: 
	Exp + Term | Exp - Term | Term

Term:
	Term * Fact  | Fact

Fact:
	( Exp ) | - Fact | + Fact | Literal | Identifier

Identifier:
     	Letter [Letter | Digit]*

Letter:
	a|...|z|A|...|Z|_

Literal:
	0 | NonZeroDigit Digit*
		
NonZeroDigit:
	1|...|9

Digit:
	0|1|...|9


int yyerror()
{

printf("error");

valid=0;

return 0;

}

int main()

{

int n;

printf("Enter the number of expression:");

scanf("%d",&n);

int a[n];

printf("Enter the arithmetic expression:");

for(int i=0;i<n;i++)

{

a[i]=yyparse();

}

for(int i=0;i<n;i++)

{

if(valid){

printf(a[i]"\n");

}

}

}