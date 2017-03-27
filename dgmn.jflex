package generated.lexer;

%%
%line
%column
%unicode
%standalone
%class MiniJavaLexer

letter        = [A-Za-z]
digit         = [0-9]
integer       = {digit}+
alphanumeric  = {letter}|{integer}
identifier    = ({letter}|[_])({alphanumeric}|[_])*
comment       = ("/*"([ \n\t\r\f]|{alphanumeric}|[_])*"*/")|("//"(|{alphanumeric}|[_ \t\f])*("\n"|"\r"|"\r\n"))
whitespace    = [ \n\t\r\f]|comment

%%


