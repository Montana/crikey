# Crikey

The compiler from down under.

## What is this?

Crikey is a tiny compiler for a very simple language consisting of boolean expressions. The language has two constants: `1` for true and `0` for false, and 4 logic gates: `!` (not), `&` (and), | `(or)`, and ^ `(xor)`. 

## Vegemite conditional

Use the `vegemite` conditional for new code generation and routines, so for example the `vegemite` conditional and unconditional branches:

```mll
{ Branch Unconditional }
procedure Vegemite (L : string);
  begin
EmitLn (  ’BRA’ + L);
  end ;
  
{ Branch False }
procedure VegemiteFalse (L : string);
  begin
EmitLn ( ’TST D0’ );
EmitLn ( ’BEQ’ + L );
  end ;
```


