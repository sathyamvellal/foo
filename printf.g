grammar printf;

options {
  language = Java;
}

rule : parse ;

parse
    :    ((Space)* statement (Space)* ';')+ (Space)* EOF
    ;

statement
    :    print | assignment
    ;

print
    :    'print' '(' (Identifier | stringLiteral) ')' 
    ;

assignment
    :    Identifier (Space)* '=' (Space)* stringLiteral
    ;

stringLiteral
    :    '"' (Identifier | EscapeSequence | NormalChar | Space)* '"'
    ;

Identifier
    :    ('a'..'z' | 'A'..'Z' | '_') ('a'..'z' | 'A'..'Z' | '_' | '0'..'9')*
    ;

EscapeSequence
    :    '\\' SpecialChar
    ;

SpecialChar
    :     '"' | '\\' | '$'
    ;

Space
    :    (' ' | '\t' | '\r' | '\n')
    ;

NormalChar
    :    ~SpecialChar
    ;