lexer grammar TestLexer;

TEST_FUNCTION_ECHO
    : 'echo'
    ;

TEST_FUNCTION_PRINT
    : 'print'
    ;

TEST_START
    : ('<?' | '<?php' | '<?PHP')
    ;

TEST_END
    : '?>'
    ;

WS : [ \t\r\n]+ -> skip ;
