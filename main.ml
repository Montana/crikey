let err msg pos =
  Lexing.(Printf.eprintf "Error on line %d col %d: %s.\n"
            pos.pos_lnum (pos.pos_cnum - pos.pos_bol) msg) ;
  exit 1

let () =
  let src = Lexing.from_channel Stdlib.stdin in
  try
    let boolexpr = Parser.prog Lexer.token src in
    let nandexpr = Bool.compile boolexpr in
    let bytecode = Nand.compile nandexpr in
    Byte.emit bytecode
  with
  | Lexer.Error c ->
     err (Printf.sprintf "unrecognized char '%c'" c) (Lexing.lexeme_start_p src)
  | Parser.Error ->
     err "syntax error" (Lexing.lexeme_start_p src)
