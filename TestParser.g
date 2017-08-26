parser grammar TestParser;

options { tokenVocab=TestLexer; }

block
    : prolog statement* epilog?
    | function_print
    | function_echo
    | EOF
    ;

prolog
    : TEST_START
    ;

epilog
    : TEST_END
    ;

statement
    : function_echo
    | function_print
    ;

function_echo
    : TEST_FUNCTION_ECHO
    ;

function_print
    : TEST_FUNCTION_PRINT
    ;
