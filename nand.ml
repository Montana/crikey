open Ast.Nand
open Ast.Byte

let rec compile = function
  | B false  -> [ False ]
  | B true   -> [ True ]
  | N (a, b) -> (compile a) @ [ Push ] @ (compile b) @ [ Hold ; Pop ; Nand ]

let rec eval = function
  | B e      -> e
  | N (a, b) -> not ((eval a) && (eval b))
