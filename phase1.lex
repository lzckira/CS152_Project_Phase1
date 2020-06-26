%{
int line_num = 1, space_num = 1;
int integers=0;
int operators=0;
int parentheses=0;
int equal=0;
%}
%%

"+" {printf("PLUS\n");space_num += yyleng;operators++;}
"-" {printf("MINUS\n");space_num += yyleng;operators++;}
"*" {printf("MULT\n");space_num += yyleng;operators++;}
"/" {printf("DIV\n");space_num += yyleng;operators++;}
"(" {printf("L_PAREN\n");space_num += yyleng;parentheses++;}
")" {printf("R_PAREN\n");space_num += yyleng;parentheses++;}
"=" {printf("EQUAL\n");space_num += yyleng;equal++;}

(\.[0-9]+)|([0-9]+(\.[0-9]*)?([eE][+-]?[0-9]+)?)  {printf("NUMBER %s\n",yytext);space_num += yyleng;integers++;}

[ ]+ {space_num += yyleng;}

"\n" {line_num++, space_num=1;}


. {printf("Error at Line %d column %d :\"%s\"\n", line_num, space_num, yytext);exit(0);}

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
   printf("integers:%d\n",integers);
   printf("operators:%d\n",operators);
   printf("parentheses:%d\n",parentheses);
   printf("equal:%d\n",equal);
}
