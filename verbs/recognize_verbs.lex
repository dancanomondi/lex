%option noyywrap

%%
is|am|are|were|was|be|being|been|do|does|did|will|would|should|can|could|has|have|had|go {
    printf("VERB: %s\n", yytext);
}
. ;

%%

int main() {
    yylex();
    return 0;
}
