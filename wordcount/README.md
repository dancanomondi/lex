Introduction
The Word Count LEX program is designed to count the number of words in a given file and calculate their total size. It uses regular expressions to identify and count the words based on whitespace boundaries.

Code Explanation
The LEX specification file (wordcount.lex) contains the following sections:

%{ ... %}: This block allows you to include C code within the LEX file. It includes the stdio.h header file and defines two variables: word_count to keep track of the number of words and total_size to calculate their total size.

%%: This delimiter separates the three sections of a LEX file: the definitions, rules, and user code.

[a-zA-Z]+: This rule matches one or more alphabetical characters, indicating a word. When a word is found, the corresponding action increments word_count and adds the length of the word (yyleng) to total_size.

[ \t]: This rule matches whitespace characters (space and tab) and ignores them.

.: This rule matches any other character that is not captured by the previous rules. It ensures that we progress through the input.

int main() { ... }: This is the entry point of the program. It calls yylex() to start scanning the input file and then displays the total number of words and their total size.

Running the Program
To run the Word Count program, follow these steps:

Save the LEX specification file (wordcount.lex) on your system.

Compile the LEX program using the following commands:

lex wordcount.lex
gcc lex.yy.c -o wordcount -ll
Execute the compiled program:

bash
./wordcount < input_file.txt
Replace input_file.txt with the path to the file you want to analyze.

The program will count the number of words in the file and display the total word count and their total size.

