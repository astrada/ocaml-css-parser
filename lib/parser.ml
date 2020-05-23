let parse_stylesheet ?container_lnum ?pos css =
  Lexer.parse_string ?container_lnum ?pos css Menhir_parser.stylesheet

let parse_declaration_list ?container_lnum ?pos css =
  Lexer.parse_string ?container_lnum ?pos css Menhir_parser.declaration_list
