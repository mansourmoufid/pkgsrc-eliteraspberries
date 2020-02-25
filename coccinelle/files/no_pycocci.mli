module StringMap : Map.S with type key = string
exception Pycocciexception
val python_support : bool
val initialised : bool ref
val cocci_file_name : string ref
val is_module_loaded : StringMap.key -> bool
val split_fqn : string -> string * string
val inc_match : bool ref
val exited : bool ref
val pycocci_init : unit -> unit
val build_classes : (string * string) list -> unit
val contains_binding : (('a * 'b) * 'c) list -> 'd * ('a * 'b) * 'e -> bool
val construct_variables :
  (string * ('a * 'b) * 'c * Ast_cocci.mvinit) list ->
  (('a * 'b) * Ast_c.metavar_binding_kind) list -> unit
val construct_script_variables : ('a * string) list -> unit
val retrieve_script_variables :
  ('a * string) list -> Coccilib.Ast_c.metavar_binding_kind list
val set_coccifile : string -> unit
val pickle_variable : string -> string
val unpickle_variable : string -> string list -> unit
val pyrun_simplestring : string -> unit
val run : string * int -> string -> unit
val py_isinitialized : unit -> bool
val py_finalize : unit -> unit
val run_constraint :
  (('a * string) * Ast_c.metavar_binding_kind) list ->
  string * int -> string -> bool
val flush_stdout_and_stderr : unit -> unit
