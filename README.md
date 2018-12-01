ocaml-css-parser
================

A CSS parser written in OCaml.

Parses a CSS string and produces an AST.

### Build

    npm install -g esy
    esy
    # to build and run tests
    esy dune runtest

### Example

```ocaml
let css =
  {|
{
  color: red !important;
  background-color: red;
}
|} in
  let ast = Css.Parser.parse_stylesheet css in
  (* ast is a value of type Css.Stylesheet.t defined in lib/types.mli *)
```

