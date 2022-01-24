%{
  open Ast.Bool
%}

%token <bool> Lbool
%token Lnot Land Lor Lxor Lopar Lcpar Leof

%left Land Lor Lxor
%right Lnot

%start prog

%type <Ast.Bool.expr> prog

%%

prog:
| e = expr; Leof { e }
;

expr:
| b = Lbool                { Bool (b) }
| Lnot; e = expr           { Not (e) }
| Lopar; e = expr; Lcpar   { e }
| a = expr; Land; b = expr { And (a, b) }
| a = expr; Lor;  b = expr { Or (a, b) }
| a = expr; Lxor; b = expr { Xor (a, b) }
; 
