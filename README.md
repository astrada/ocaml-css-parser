ocaml-css-parser
================

A CSS parser written in OCaml.

Parses a CSS string and produces an AST.

### Build

```bash
npm install -g esy
esy
# to build and run tests
esy dune runtest
```

### Example

```ocaml
let css =
{|
  {
    color: red !important;
    width: 100%;
  }
|} in
  let ast = Css.Parser.parse_stylesheet css in
  (* ast is a value of type Css.Stylesheet.t defined in lib/types.mli *)
  (* that looks like that:
    ([Rule.Style_rule
        {Style_rule.prelude = ([], Location.none);
         block =
           ([Declaration_list.Declaration
               {Declaration.name = ("color", Location.none);
                  value = ([(Component_value.Ident "blue", Location.none)], Location.none);
                  important = (true, Location.none);
                  loc = Location.none;
                 };
               {Declaration.name = ("width", Location.none);
                  value = ([(Component_value.Percentage "100", Location.none)], Location.none);
                  important = (false, Location.none);
                  loc = Location.none;
                };
            ], Location.none);
         loc = Location.none;
        };
     ], Location.none)
  *)
```

### Remarks

Whitespaces and comments are discarded by the lexer, so they are not available
to the parser. An exception is made for significant whitespaces in rule
preludes, to disambiguate between selectors like `p :first-child` and
`p:first-child`. These whitespaces are replaced with `*` to keep CSS semantics
intact. So, e.g., `p :first-child` is parsed as `p *:first-child`, `p .class`
as `p *.class`, and `p #id` as `p *#id`.

