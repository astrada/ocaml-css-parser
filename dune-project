(lang dune 2.4)
(using menhir 2.0)
(name css-parser)

(generate_opam_files true)

(source (github astrada/ocaml-css-parser))
(license MIT)
(authors "Alessandro Strada")
(maintainers "alessandro.strada@gmail.com")

(package
 (name css-parser)
 (synopsis "A CSS parser written in OCaml")
 (description "Parses a CSS Level 3 string and produces an AST.")
 (depends
  (alcotest :with-test)
  (dune (>= 2.4))
  (menhir (>= 20200211))
  (sedlex (>= 2.0))))

