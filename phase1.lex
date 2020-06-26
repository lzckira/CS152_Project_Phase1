%{
int line_num = 1, space_num = 1;
%}

%%

"+" {printf("PLUS\n"); space_num += yyleng;}
"-" {printf("MINUS\n"); space_num += yyleng;}
"*" {printf("MULT\n"); space_num += yyleng;}
"/" {printf("DIV\n"); space_num += yyleng;}
"(" {printf("L_PAREN\n"); space_num += yyleng;}
")" {printf("R_PAREN\n"); space_num += yyleng;}
"=" {printf("EQUAL\n"); space_num += yyleng;}

(\.[0-9]+)|([0-9]+(\.[0-9]*)?([eE][+-]?[0-9]+)?)  {printf("NUMBER %s\n",yytext); space_num += yyleng;}

[ ]+ {space_num += yyleng;}

"\n" {line_num++, space_num=1;}


. {printf("Error at Line %d column %d :\"%s\"\n", line_num, space_num, yytext); exit(0);}

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

