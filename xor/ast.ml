module Bool = struct
  type expr =
  | Bool of bool
  | Not  of expr
  | And  of expr * expr
  | Or   of expr * expr
  | Xor  of expr * expr
end

module Nand = struct
  type expr =
  | B of bool
  | N of expr * expr
end

module Byte = struct
  type instr =
    | False
    | True
    | Push
    | Pop
    | Hold
    | Nand
  and prog = instr list
end
