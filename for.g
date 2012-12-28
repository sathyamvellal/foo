grammar for;

options {
  language = Java;
}

tokens {
	ADD = '+' ;
	SUB = '-' ;
	MUL = '*' ;
	DIV = '/' ;
	OB  = '(' ;
	CB  = ')' ;
}

rule : 'for' '(' init ;
init : e ';' cond ;
cond : e ';' updt ;
updt : e ')' (stmt | '{' stmt_list '}') ;
stmt : e ';' ;
stmt_list :  stmt stmt_list | ;

e  : t ed ;
ed : ADD t ed | SUB t ed | ;
t  : f td ;
td : MUL f td | DIV f td | ;
f  : NUMBER | ID | OB e CB ;

fragment DIGIT : '0'..'9' ;
NUMBER : (DIGIT)+('\.'(DIGIT)+)? ;
fragment LETTER : 'a'..'z' ;
ID : (LETTER|'_')(LETTER|'_'|DIGIT)+ ;  
