
%%
%line
%column
%unicode
%standalone
%class MiniJavaLexer

underline         = [_]
zero              = [0]
letter            = [A-Za-z]
digit             = [0-9]
integer           = ([1-9]({digit})*)|{zero}
alphanumeric      = {letter}|{digit}
starter           = {letter}|{underline}
identifier        = {starter}({alphanumeric}|{underline})*
multilineComment  = "/*"(" "|\n|\t|\r|\f|{alphanumeric}|{underline})*"*/"
unilineComment    = "//"([^\r\n]*)(\n|\r|\r\n)
comment           = {multilineComment}|{unilineComment}
whitespace        = [ \n\t\r\f]|{comment}

%%

"&&"                  { System.out.println("Token &&"); }
"<"                   { System.out.println("Token <"); }
"=="                  { System.out.println("Token =="); }
"!="                  { System.out.println("Token !="); }
"+"                   { System.out.println("Token +"); }
"-"                   { System.out.println("Token -"); }
"*"                   { System.out.println("Token *"); }
"!"                   { System.out.println("Token !"); }
"("                   { System.out.println("Token ("); }
")"                   { System.out.println("Token )"); }
"{"                   { System.out.println("Token {"); }
"}"                   { System.out.println("Token }"); }
"["                   { System.out.println("Token ["); }
"]"                   { System.out.println("Token ]"); }
"."                   { System.out.println("Token ."); }
","                   { System.out.println("Token ,"); }
";"                   { System.out.println("Token ;"); }
"="                   { System.out.println("Token ="); }
"boolean"             { System.out.println("Token boolean"); }
"class"               { System.out.println("Token class"); }
"public"              { System.out.println("Token public"); }
"extends"             { System.out.println("Token extends"); }
"static"              { System.out.println("Token static"); }
"void"                { System.out.println("Token void"); }
"main"                { System.out.println("Token main"); }
"String"              { System.out.println("Token String"); }
"int"                 { System.out.println("Token int"); }
"while"               { System.out.println("Token while"); }
"if"                  { System.out.println("Token if"); }
"else"                { System.out.println("Token else"); }
"return"              { System.out.println("Token return"); }
"length"              { System.out.println("Token length"); }
"true"                { System.out.println("Token true"); }
"false"               { System.out.println("Token false"); }
"this"                { System.out.println("Token this"); }
"new"                 { System.out.println("Token new"); }
"System.out.println"  { System.out.println("Token System.out.println"); }
{whitespace}          { /*fazer nada*/ }
{identifier}          { System.out.println("Token ID (" + yytext() + ")"); }
{integer}             { System.out.println("Token INT (" + yytext() + ")"); }
.                     { throw new RuntimeException("Caractere ilegal! '" + yytext() + "' na linha: " + yyline + ", coluna: " + yycolumn); }


