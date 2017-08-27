%{
#include<stdio.h>
%}

%%
([A-Za-z0-9]+[A-Za-z0-9\.\-_]*[A-Za-z0-9]+@[A-Za-z0-9]+([\.][A-Za-z0-9]+)*) {printf("%s\n", yytext);}

([A-Za-z0-9\.\-_]*@[A-Za-z0-9]*[\-_]) ;
.  ;
\n ;
%%

int main() {
  yylex();
  return 0;
}
