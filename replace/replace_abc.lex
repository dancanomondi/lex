%option noyywrap

%%
[a-zA-Z]+   {
    char* word = yytext;
    while (*word != '\0') {
        if (strstr(word, "abc") == word) {
            printf("ABC");
            word += 3;  // Skip the "abc" substring
        } else {
            putchar(*word++);
        }
    }
}
. ;

%%

int main() {
    yylex();
    return 0;
}
