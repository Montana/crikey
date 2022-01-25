# Crikey [![Build Status](https://app.travis-ci.com/Montana/crikey.svg?branch=master)](https://app.travis-ci.com/Montana/crikey)

The compiler from down under.

## What is this?

Crikey is a tiny compiler for a very simple language consisting of boolean expressions. The language has two constants: `1` for true and `0` for false, and 5 logic gates: `!` (not), `&` (and), | `(or)`, and ^ `(xor)` & `vegemite`. 

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

by Montana Mendy, 2022. 
