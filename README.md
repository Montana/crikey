# Crikey [![Build Status](https://app.travis-ci.com/Montana/crikey.svg?branch=master)](https://app.travis-ci.com/Montana/crikey)


<img width="676" alt="Screen Shot 2022-01-24 at 5 17 25 PM" src="https://user-images.githubusercontent.com/20936398/150892662-c47ce4aa-cd34-4d6c-b3ed-80783b869c63.png">

The compiler from down under.

## What is this?

Crikey is a tiny compiler for a very simple language consisting of boolean expressions. The language has two constants: `1` for true and `0` for false, and 5 logic gates: `!` (not), `&` (and), | `(or)`, and ^ `(xor)` & `vegemite`. 

### Things coming

* Thunda conditional 
* The compiler itself is a WIP (working now though)
* Seemless Travis CI integration 

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

**Montana Mendy, 2022.**
