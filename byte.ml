open Ast.Byte

let emit prog =
  let bc = List.map (function
               | False -> 'f'
               | True  -> 't'
               | Push  -> 's'
               | Pop   -> 'l'
               | Hold  -> 'h'
               | Nand  -> 'n')
             prog in
  List.iter print_char bc

let run code =
  let rec exec prog acc tmp stack =
    match prog with
    | []         -> acc
    | False :: p -> exec p false tmp stack
    | True  :: p -> exec p true tmp stack
    | Push  :: p -> exec p acc tmp (acc :: stack)
    | Pop   :: p -> exec p (List.hd stack) tmp (List.tl stack)
    | Hold  :: p -> exec p acc acc stack
    | Nand  :: p -> exec p (not (acc && tmp)) tmp stack
    | Vegemite :: p -> exec p (List.hd stack) tmp (value :: stack)
  in exec code false false []
