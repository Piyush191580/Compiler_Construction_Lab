%{
#include <stdio.h>

char changeCase(char c)
{
    if (c >= 'a' && c <= 'z')
        return c - 32;
    else
        return c + 32;
}
%}

%%
[a-zA-Z] { putchar(changeCase(yytext[0])); }
.        { printf(" Invalid character: %s", yytext); }
%%

int main()
{
    yylex();
    return 0;
}
