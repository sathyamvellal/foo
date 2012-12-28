grammar calculator;

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

rule : s v o;
s : 'I' | 'He' | 'They' | 'You' ;
v : 'go' | 'you' | 'has gone' | 'have gone' ;
o : 'to school' | 'to sleep' | 'to college' ;