{
  open Parser
  exception Error of char
}

rule token = parse
| eof             { Leof }
| [' ' '\t' '\n'] { token lexbuf }
| "0"             { Lbool (false) }
| "1"             { Lbool (true) }
| "!"             { Lnot }
| "&"             { Land }
| "|"             { Lor }
| "^"             { Lxor }
| "("             { Lopar }
| ")"             { Lcpar }
| _ as c          { raise (Error c) }
