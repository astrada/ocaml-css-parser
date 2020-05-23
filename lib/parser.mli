val parse_stylesheet :
  ?container_lnum:int -> ?pos:Lexing.position -> string -> Types.Stylesheet.t

val parse_declaration_list :
  ?container_lnum:int ->
  ?pos:Lexing.position ->
  string ->
  Types.Declaration_list.t
