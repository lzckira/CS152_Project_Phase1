%{
int line_num = 1;
%}
%%
[0-9]+			{printf("NUMBER %s\n", yytext);}
"+"				{printf("PLUS\n");}
"-"				{printf("MINUS\n");}
"*"				{printf("MULT\n");}
"/"				{printf("DIV\n");}
"("				{printf("L_PAREN\n");}
")"				{printf("R_PAREN\n");}
"="				{printf("EQUAL\n");}
[ \t]+			{}
.				{printf("Unreginsed symbol\n"); exit(0);}

%%
