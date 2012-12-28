grammar assignment;

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

rule : ID '=' e ;
e  : t ed;
ed : ADD t ed | ;
t  : f td ;
td : MUL f td | ;
f  : NUMBER | ID | OB e CB ;

fragment DIGIT : '0'..'9' ;
NUMBER : (DIGIT)+('\.'(DIGIT)+)? ;
fragment LETTER : 'a'..'z' ;
ID : (LETTER|'_')(LETTER|'_'|DIGIT)+ ;  
