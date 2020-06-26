%{
int line_num = 1, space_num = 1;
%}

LETTER  [a-zA-Z]
DIGIT [0-9]
IDENTIFIER LETTER(LETTER|DIGIT)*(_(LETTER|DIGIT)+)*

%%

"function" {printf("FUNCTION\n");}
"beginparams" {printf("BEGIN_PARAMS\n");}
"endparams" {printf("END_PARAMS\n");}
"beginlocals" {printf("BEGIN_LOCALS\n");}
"endlocals" {printf("END_LOCALS\n");}
"beginbody" {printf("BEGIN_BODY\n");}
"endbody" {printf("END_BODY\n");}
"integer" {printf("INTEGER\n");}
"array" {printf("ARRAY\n");}
"of" {printf("OF\n");}
"if" {printf("IF\n");}
"then" {printf("THEN\n");}
"endif" {printf("ENDIF\n");}
"else" {printf("ELSE\n");}
"while" {printf("WHILE\n");}
"do" {printf("DO\n");}
"beginloop" {printf("BEGINLOOP\n");}
"endloop" {printf("ENDLOOP\n");}
"continue" {printf("CONTINUE\n");}
"read" {printf("READ\n");}
"write" {printf("WRITE\n");}
"and" {printf("AND\n");}
"or" {printf("OR\n");}
"not" {printf("NOT\n");}
"true" {printf("TRUE\n");}
"false" {printf("FALSE\n");}
"return" {printf("RETURN\n");}
"-"  {printf("SUB\n");}
"+"  {printf("ADD\n");}
"*"  {printf("MULT\n");}
"/"  {printf("DIV\n");}
"%"  {printf("MOD\n");}
"=="  {printf("EQ\n");}
"<>" {printf("NEQ\n");}
"<"  {printf("LT\n");}
">"  {printf("GT\n");}
"<=" {printf("LTE\n");}
">=" {printf("GTE\n");}
{IDENTIF} {printf("IDENT %s\n",yytext);}
{DIGIT}+   {printf("NUMBER %s\n",yytext);}
";"  {printf("SEMICOLON\n");} 
":"  {printf("COLON\n");} 
","  {printf("COMMA\n");} 
"("  {printf("L_PAREN\n");} 
")"  {printf("R_PAREN\n");} 
"["  {printf("L_SQUARE_BRACKET\n");} 
"]"  {printf("R_SQUARE_BRACKET\n");} 
":=" {printf("ASSIGN\n");}

[ \t]+ {/* space  */}

"\n" {line_num++, space_num=1;}


. {printf("Error at Line %d column %d :\"%s\"\n", line_num, space_num, yytext);}

%%

int main(int argc, char ** argv)
{
   if(argc >= 2)
   {
      yyin = fopen(argv[1], "r");
      if(yyin == NULL)
      {
        printf("Error: Input file not exist\n");
	exit(0);
      }
   }
   else
   {
      yyin = stdin;
   }
   yylex();
}

