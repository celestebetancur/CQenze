%{
#include <stdio.h>

int lineCount;
%}

letter          [a-zA-Z]
digit           [0-9]         

%%
;                                     printf("END\n");
\"[^$]*\"                             printf("STRING %s\n", yytext);
\/\/[^\n]*                            ;
{letter}*(letter|digit)*              printf("ID %s\n", yytext);
{digit}+                              printf("NUMBER %s\n", yytext);
\/                                    printf("ASSIGN_SAMP\n");
\{                                    printf("LEFTP\n");
\}                                    printf("RIGHTP\n");
=                                     printf("ASSIGN_C\n");
:                                     printf("ASSIGN_T\n");
,                                     printf("COMMA\n");
[+-]*                                 printf("PATTERN %s\n",yytext);
\n                                    lineCount++;
[\t]+                                 ;
[' ']*                                ;

%%

int yywrap() {
  return 1;
} 

int main() {
  yylex();
  return 0;
}
