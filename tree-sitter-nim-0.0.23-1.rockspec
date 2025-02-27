local git_ref = '897e5d346f0b59ed62b517cfb0f1a845ad8f0ab7'
local modrev = '0.0.23'
local specrev = '1'

local repo_url = 'https://github.com/alaviss/tree-sitter-nim'

rockspec_format = '3.0'
package = 'tree-sitter-nim'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for nim',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/alaviss/tree-sitter-nim',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1', 'tree-sitter-nim_format_string == 0.0.23' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 5.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-nim-' .. '897e5d346f0b59ed62b517cfb0f1a845ad8f0ab7',
}

build = {
  type = "treesitter-parser",
  lang = "nim",
  parser = true,
  generate = false,
  generate_from_json = false,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["folds.scm"] = [==[
[
  (const_section)
  (var_section)
  (let_section)
  (type_section)
  (using_section)
  (object_declaration)
  (tuple_type)
  (enum_declaration)
  (case)
  (if)
  (when)
  (conditional_declaration)
  (variant_declaration)
  (of_branch)
  (elif_branch)
  (else_branch)
  (for)
  (while)
  (block)
  (static_statement)
  (pragma_statement)
  (try)
  (except_branch)
  (finally_branch)
  (do_block)
  (call
    (argument_list
      (statement_list)))
  (proc_declaration)
  (func_declaration)
  (method_declaration)
  (iterator_declaration)
  (converter_declaration)
  (template_declaration)
  (macro_declaration)
  (proc_expression)
  (func_expression)
  (iterator_expression)
  (concept_declaration)
] @fold
]==],
    ["highlights.scm"] = [==[
; SPDX-FileCopyrightText: 2023 Leorize <leorize+oss@disroot.org>, aMOPel <>
; SPDX-License-Identifier: MPL-2.0
; SPDX-License-Identifier: Apache-2.0
; =============================================================================
; catch all rules
((identifier) @variable
  (#set! priority 99))

; NOTE: we need priority, since (identifier) is most specific and we have to
; capture nodes containing (identifier) as a whole, while overruling the
; @variable capture.
(type_expression) @type

; NOTE: has to be after
; ((identifier) @variable (#set! priority 99))
; overrule identifiers in pragmas in (proc_type)s and (pragma_expression)s
(proc_type
  pragmas: (pragma_list) @variable)

(iterator_type
  pragmas: (pragma_list) @variable)

(type_expression
  (pragma_expression
    right: (pragma_list) @variable))

; NOTE: has to be after
; (type_expression) @type
; and before @keyword.directive and all literals
; constants/enums in array construction
(array_construction
  (colon_expression
    left: (_) @constant))

; NOTE: has to be before literals and punctuation etc.
; identifiers in "case" "of" branches have to be enums
(case
  alternative: (of_branch
    values: (expression_list
      (_) @constant)))

; NOTE: has to be before literals and punctuation etc.
; in variant objects with "case" "of"
(variant_declaration
  alternative: (of_branch
    values: (expression_list
      (_) @constant)))

; NOTE: has to be before literals and punctuation etc.
; =============================================================================
; @comment               ; line and block comments
[
  (comment)
  (block_comment)
] @comment

; =============================================================================
; @comment.documentation ; comments documenting code
(documentation_comment
  "##" @comment.documentation)

(block_documentation_comment
  "##[" @comment.documentation
  "]##" @comment.documentation)

; NOTE: leaving content uncaptured so markdown can be injected
; =============================================================================
; @punctuation.delimiter ; delimiters (e.g. `;` / `.` / `,`)
[
  "."
  ";"
  ","
  ":"
  "="
] @punctuation.delimiter

; =============================================================================
; @operator              ; symbolic operators (e.g. `+` / `*`)
(operator) @operator

(assignment
  "=" @operator)

; =============================================================================
; @punctuation.bracket   ; brackets (e.g. `()` / `{}` / `[]`)
[
  "("
  ")"
  "["
  "[:"
  "]"
  "{"
  "}"
] @punctuation.bracket

; =============================================================================
; @keyword.directive               ; various preprocessor directives & shebangs
[
  "macro"
  "template"
] @keyword.directive

(pragma_list
  [
    "{."
    "}"
    ".}"
  ] @keyword.directive)

; NOTE: has to come after @punctuation.bracket
; =============================================================================
; @punctuation.special   ; special symbols (e.g. `{}` in string interpolation)
(accent_quoted
  "`" @punctuation.special)

(exported_symbol
  "*" @punctuation.special)

; dereference operator
(bracket_expression
  !right
  "[" @punctuation.special
  .
  "]" @punctuation.special)

; =============================================================================
; @string               ; string literals
[
  (interpreted_string_literal)
  (long_string_literal)
  (raw_string_literal)
  (generalized_string)
] @string

; injections in generalized_strings
(generalized_string
  (string_content) @none)

; format string injection in normal strings with & prefix
(prefix_expression
  operator: (operator) @_string_prefix
  .
  (_
    (string_content) @none)
  (#eq? @_string_prefix "&"))

; emit pragma injection
(pragma_statement
  (pragma_list
    (colon_expression
      left: (identifier) @_emit_keyword
      (#eq? @_emit_keyword "emit")
      right: (_
        (string_content) @none))))

; =============================================================================
; @string.escape        ; escape sequences
(escape_sequence) @string.escape

; =============================================================================
; @character            ; character literals
(char_literal) @character

; =============================================================================
; @boolean              ; boolean literals
((identifier) @boolean
  (#any-of? @boolean "true" "false" "on" "off"))

; =============================================================================
; @number               ; numeric literals
(integer_literal) @number

(custom_numeric_literal) @number

; =============================================================================
; @number.float                ; floating-point number literals
(float_literal) @number.float

; =============================================================================
; @function         ; function definitions
(proc_declaration
  name: [
    (identifier) @function
    (accent_quoted
      (identifier) @function)
    (exported_symbol
      (identifier) @function)
    (exported_symbol
      (accent_quoted
        (identifier) @function))
  ])

(func_declaration
  name: [
    (identifier) @function
    (accent_quoted
      (identifier) @function)
    (exported_symbol
      (identifier) @function)
    (exported_symbol
      (accent_quoted
        (identifier) @function))
  ])

(iterator_declaration
  name: [
    (identifier) @function
    (accent_quoted
      (identifier) @function)
    (exported_symbol
      (identifier) @function)
    (exported_symbol
      (accent_quoted
        (identifier) @function))
  ])

(converter_declaration
  name: [
    (identifier) @function
    (accent_quoted
      (identifier) @function)
    (exported_symbol
      (identifier) @function)
    (exported_symbol
      (accent_quoted
        (identifier) @function))
  ])

; =============================================================================
; @function.call    ; function calls
(call
  function: [
    (identifier) @function.call
    (accent_quoted
      (identifier) @function.call)
    ; generic types
    (bracket_expression
      left: (identifier) @function.call)
    (bracket_expression
      left: (accent_quoted
        (identifier) @function.call))
    ; dot accessor
    (dot_expression
      right: (identifier) @function.call)
    (dot_expression
      right: (accent_quoted
        (identifier) @function.call))
    ; both
    (bracket_expression
      left: (dot_expression
        right: (identifier) @function.call))
    (bracket_expression
      left: (dot_expression
        right: (accent_quoted
          (identifier) @function.call)))
  ])

(dot_generic_call
  function: [
    (identifier) @function.call
    (accent_quoted
      (identifier) @function.call)
  ])

; generalized_string is a function call
; `identifier"string literal"`
; is short for
; `identifier(r"string literal")`
(generalized_string
  function: [
    (identifier) @function.call
    (accent_quoted
      (identifier) @function.call)
  ])

; call with leading literal
(dot_expression
  left: [
    (nil_literal)
    (integer_literal)
    (float_literal)
    (custom_numeric_literal)
    (char_literal)
    (interpreted_string_literal)
    (long_string_literal)
    (raw_string_literal)
    (generalized_string)
    (array_construction)
    ; for sequences
    (prefix_expression
      operator: (operator) @_at
      (array_construction)
      (#eq? @_at "@"))
    (tuple_construction)
    (curly_construction)
  ]
  right: [
    (identifier) @function.call
    (accent_quoted
      (identifier) @function.call)
  ])

; NOTE: will double capture as @function.call if it also has argument_list
; function.calls in `varargs[type, routine]`
(bracket_expression
  left: (identifier) @_varargs
  right: (argument_list
    .
    (_)
    .
    [
      (identifier) @function.call
      (accent_quoted
        (identifier) @function.call)
      (dot_expression
        right: (identifier) @function.call)
      (dot_expression
        right: (accent_quoted
          (identifier) @function.call))
    ])
  (#eq? @_varargs "varargs"))

; =============================================================================
; @function.macro   ; preprocessor macros
(template_declaration
  name: [
    (identifier) @function.macro
    (accent_quoted
      (identifier) @function.macro)
    (exported_symbol
      (identifier) @function.macro)
    (exported_symbol
      (accent_quoted
        (identifier) @function.macro))
  ])

(macro_declaration
  name: [
    (identifier) @function.macro
    (accent_quoted
      (identifier) @function.macro)
    (exported_symbol
      (identifier) @function.macro)
    (exported_symbol
      (accent_quoted
        (identifier) @function.macro))
  ])

; =============================================================================
; @function.method           ; method definitions
(method_declaration
  name: [
    (identifier) @function.method
    (accent_quoted
      (identifier) @function.method)
    (exported_symbol
      (identifier) @function.method)
    (exported_symbol
      (accent_quoted
        (identifier) @function.method))
  ])

; =============================================================================
; @constructor      ; constructor calls and definitions
(call
  function: [
    (identifier) @constructor
    (accent_quoted
      (identifier) @constructor)
    ; generic types
    (bracket_expression
      left: (identifier) @constructor)
    (bracket_expression
      left: (accent_quoted
        (identifier) @constructor))
    ; dot accessor
    (dot_expression
      right: (identifier) @constructor)
    (dot_expression
      right: (accent_quoted
        (identifier) @constructor))
    ; both
    (bracket_expression
      left: (dot_expression
        right: (identifier) @constructor))
    (bracket_expression
      left: (dot_expression
        right: (accent_quoted
          (identifier) @constructor)))
  ]
  (argument_list
    (colon_expression)+))

; NOTE: this cannot detect constructors with 0 arguments
; those will be matched as @function.call instead
; =============================================================================
; @keyword             ; various keywords
; unhandled but reserved keywords
; end
; interface
; static expression
; addr operator
((call
  function: (identifier) @keyword)
  (#any-of? @keyword "static" "addr"))

[
  "const"
  "let"
  "var"
  "concept"
  "asm"
  "bind"
  "defer"
  "do"
  "mixin"
  "static"
  "tuple"
  "block"
  "using"
  "discard"
] @keyword

[
  "enum"
  "object"
  "type"
] @keyword.type

; =============================================================================
; @keyword.function    ; keywords that define a function (e.g. `func` in Go, `def` in Python)
[
  "proc"
  "func"
  "method"
  "converter"
  "iterator"
] @keyword.function

; =============================================================================
; @keyword.operator    ; operators that are English words (e.g. `and` / `or`)
[
  "and"
  "or"
  "xor"
  "not"
  "div"
  "mod"
  "shl"
  "shr"
  "from"
  "as"
  "of"
  "in"
  "notin"
  "is"
  "isnot"
  "cast"
] @keyword.operator

; =============================================================================
; @keyword.return      ; keywords like `return` and `yield`
[
  "return"
  "yield"
] @keyword.return

; =============================================================================
; @keyword.conditional         ; keywords related to conditionals (e.g. `if` / `else`)
[
  "if"
  "when"
  "case"
  "elif"
  "else"
] @keyword.conditional

(of_branch
  "of" @keyword.conditional)

; =============================================================================
; @keyword.repeat              ; keywords related to loops (e.g. `for` / `while`)
[
  "for"
  "while"
  "continue"
  "break"
] @keyword.repeat

(for
  "in" @keyword.repeat)

; =============================================================================
; @label               ; GOTO and other labels (e.g. `label:` in C)
(block
  label: [
    (identifier) @label
    (accent_quoted
      (identifier) @label)
  ])

; =============================================================================
; @keyword.import             ; keywords for including modules (e.g. `import` / `from` in Python)
[
  "import"
  "include"
  "export"
] @keyword.import

(import_from_statement
  "from" @keyword.import)

(except_clause
  "except" @keyword.import)

; =============================================================================
; @keyword.exception           ; keywords related to exceptions (e.g. `throw` / `catch`)
[
  "try"
  "except"
  "finally"
  "raise"
] @keyword.exception

; =============================================================================
; @type            ; type or class definitions and annotations
; generic types when calling
(call
  function: (bracket_expression
    right: (argument_list) @type))

; NOTE: this also falsely matches
; when accessing and directly call elements from an array of routines
; eg `array_of_routines[index](arguments), but that is an uncommon case
; dot_generic_call `v.call[:type, type]()
(dot_generic_call
  generic_arguments: (_) @type)

; right side of `is` operator is always type
(infix_expression
  operator: [
    "is"
    "isnot"
  ]
  right: (_) @type)

; except branch always contains types of errors
; Eg: `except module.exception[gen_type]:`
(except_branch
  values: (expression_list) @type)

; overrule special case in (except_branch) with "as" operator
; `except module.exception[gen_type] as variable:`
(except_branch
  values: (expression_list
    (infix_expression
      operator: "as"
      right: [
        (identifier) @variable
        (accent_quoted
          (identifier) @variable)
      ])))

; for inline tuple types
; `type a = tuple[a: int]`
(tuple_type
  "tuple" @type
  (field_declaration_list))

; NOTE: this is consistent with other generic types like `seq[int]`
; but inconsistent with multiline tuple declaration,
; where `tuple` is captured as @keyword
; =============================================================================
; @variable.parameter        ; parameters of a function
; named parameters when calling
; call(parameter_name=arg)
(argument_list
  (equal_expression
    left: [
      (identifier) @variable.parameter
      (accent_quoted
        (identifier) @variable.parameter)
    ]))

; parameters in function declaration
(parameter_declaration_list
  (parameter_declaration
    (symbol_declaration_list
      (symbol_declaration
        name: [
          (identifier) @variable.parameter
          (accent_quoted
            (identifier) @variable.parameter)
        ]))))

; NOTE: needs to be after @type
; generic types when declaring
(generic_parameter_list
  (parameter_declaration
    (symbol_declaration_list
      (symbol_declaration
        name: [
          (identifier) @variable.parameter
          (accent_quoted
            (identifier) @variable.parameter)
        ]))))

; for loop variables
(for
  left: (symbol_declaration_list
    (symbol_declaration
      name: [
        (identifier) @variable.parameter
        (accent_quoted
          (identifier) @variable.parameter)
      ])))

((tuple_deconstruct_declaration
  (symbol_declaration
    name: [
      (identifier) @variable.parameter
      (accent_quoted
        (identifier) @variable.parameter)
    ])) @_tuple_decons
  (#has-ancestor? @_tuple_decons for))

(concept_declaration
  parameters: (parameter_list
    [
      (identifier) @variable.parameter
      (accent_quoted
        (identifier) @variable.parameter)
    ]))

(var_parameter
  [
    (identifier) @variable.parameter
    (accent_quoted
      (identifier) @variable.parameter)
  ])

(type_parameter
  [
    (identifier) @variable.parameter
    (accent_quoted
      (identifier) @variable.parameter)
  ])

(static_parameter
  [
    (identifier) @variable.parameter
    (accent_quoted
      (identifier) @variable.parameter)
  ])

(ref_parameter
  [
    (identifier) @variable.parameter
    (accent_quoted
      (identifier) @variable.parameter)
  ])

(pointer_parameter
  [
    (identifier) @variable.parameter
    (accent_quoted
      (identifier) @variable.parameter)
  ])

; =============================================================================
; @type.definition ; type definitions (e.g. `typedef` in C)
(type_section
  (type_declaration
    (type_symbol_declaration
      name: [
        (identifier) @type.definition
        (accent_quoted
          (identifier) @type.definition)
        (exported_symbol
          (identifier) @type.definition)
        (exported_symbol
          (accent_quoted
            (identifier) @type.definition))
      ])))

; =============================================================================
; @keyword.modifier  ; type qualifier keywords (e.g. `const`)
(var_type
  "var" @keyword.modifier)

(out_type
  "out" @keyword.modifier)

(distinct_type
  "distinct" @keyword.modifier)

(ref_type
  "ref" @keyword.modifier)

(pointer_type
  "ptr" @keyword.modifier)

(var_parameter
  "var" @keyword.modifier)

(type_parameter
  "type" @keyword.modifier)

(static_parameter
  "static" @keyword.modifier)

(ref_parameter
  "ref" @keyword.modifier)

(pointer_parameter
  "ptr" @keyword.modifier)

; =============================================================================
; @variable.member           ; object and struct fields
; fields in object/tuple declaration
(field_declaration
  (symbol_declaration_list
    (symbol_declaration
      name: [
        (identifier) @variable.member
        (accent_quoted
          (identifier) @variable.member)
        (exported_symbol
          (identifier) @variable.member)
        (exported_symbol
          (accent_quoted
            (identifier) @variable.member))
      ])))

; fields in object construction
(call
  (argument_list
    (colon_expression
      left: [
        (identifier) @variable.member
        (accent_quoted
          (identifier) @variable.member)
      ])))

; fields in tuple construction
(tuple_construction
  (colon_expression
    left: [
      (identifier) @variable.member
      (accent_quoted
        (identifier) @variable.member)
    ]))

(variant_declaration
  (variant_discriminator_declaration
    (symbol_declaration_list
      (symbol_declaration
        name: [
          (identifier) @variable.member
          (accent_quoted
            (identifier) @variable.member)
          (exported_symbol
            (identifier) @variable.member)
          (exported_symbol
            (accent_quoted
              (identifier) @variable.member))
        ]))))

; =============================================================================
; @variable.builtin ; built-in variable names (e.g. `this`)
(blank_identifier) @variable.builtin

((identifier) @variable.builtin
  (#eq? @variable.builtin "result"))

; NOTE: technically needs `has-ancestor some routine declaration` but it's
; not worth it
; =============================================================================
; @constant         ; constant identifiers
; enum declaration
(enum_field_declaration
  (symbol_declaration
    name: [
      (identifier) @constant
      (accent_quoted
        (identifier) @constant)
    ]))

; constant declaration
(const_section
  (variable_declaration
    (symbol_declaration_list
      (symbol_declaration
        name: [
          (identifier) @constant
          (accent_quoted
            (identifier) @constant)
          (exported_symbol
            (identifier) @constant)
          (exported_symbol
            (accent_quoted
              (identifier) @constant))
        ]))))

((tuple_deconstruct_declaration
  (symbol_declaration
    name: [
      (identifier) @constant
      (accent_quoted
        (identifier) @constant)
      (exported_symbol
        (identifier) @constant)
      (exported_symbol
        (accent_quoted
          (identifier) @constant))
    ])) @_tuple_decons
  (#has-ancestor? @_tuple_decons const_section))

; constants x and y in `array[x..y, type]`
(bracket_expression
  left: (identifier) @_array
  right: (argument_list
    .
    (infix_expression
      right: [
        (identifier) @constant
        (accent_quoted
          (identifier) @constant)
        (dot_expression
          right: (identifier) @constant)
        (dot_expression
          right: (accent_quoted
            (identifier) @constant))
      ]))
  (#any-of? @_array "array" "range"))

(bracket_expression
  left: (identifier) @_array
  right: (argument_list
    .
    (infix_expression
      left: [
        (identifier) @constant
        (accent_quoted
          (identifier) @constant)
        (dot_expression
          right: (identifier) @constant)
        (dot_expression
          right: (accent_quoted
            (identifier) @constant))
      ]))
  (#any-of? @_array "array" "range"))

; NOTE: can only do this for (infix_expression)s, since standalone identifiers
; could be ordinal types and constants
; =============================================================================
; @constant.builtin ; built-in constant values
(nil_literal) @constant.builtin

; =============================================================================
; @module        ; modules or namespaces
(import_statement
  (expression_list
    (identifier) @module))

(import_statement
  (expression_list
    (infix_expression
      operator: "as"
      right: (identifier) @module)))

(import_statement
  (expression_list
    (infix_expression
      operator: (operator) @_operator
      right: [
        (identifier) @module
        (array_construction
          (identifier) @module)
      ]))
  (#eq? @_operator "/"))

(import_from_statement
  module: (infix_expression
    operator: (operator) @_operator
    right: (identifier) @module)
  (#eq? @_operator "/"))

(export_statement
  (expression_list
    (identifier) @module))

; =============================================================================
; overrule things
; left identifier in dot_expression
(dot_expression
  left: [
    (identifier) @none
    (accent_quoted
      (identifier) @none)
  ])

; NOTE: we can't know what the left identifier is, so better leave it alone
; for consistency
; discard literals is like a comment
(discard_statement
  "discard" @comment
  [
    (nil_literal)
    (integer_literal)
    (float_literal)
    (custom_numeric_literal)
    (char_literal)
    (interpreted_string_literal)
    (long_string_literal)
    (raw_string_literal)
    (generalized_string)
    (array_construction)
    ; for sequences
    (prefix_expression
      operator: (operator) @_at
      (array_construction)
      (#eq? @_at "@"))
    (tuple_construction)
    (curly_construction)
  ] @comment)
]==],
    ["injections.scm"] = [==[
; =============================================================================
; generalized_strings
; regex in generalized_strings
(generalized_string
  function: (identifier) @_string_prefix
  .
  (string_content) @injection.content
  (#set! injection.language "regex")
  (#any-of? @_string_prefix "re" "rex"))

; format string in generalized_strings
(generalized_string
  function: (identifier) @_string_prefix
  .
  (string_content) @injection.content
  (#set! injection.language "nim_format_string")
  (#eq? @_string_prefix "fmt"))

; format string in normal strings with & prefix
(prefix_expression
  operator: (operator) @_string_prefix
  .
  (_
    (string_content) @injection.content)
  (#set! injection.language "nim_format_string")
  (#eq? @_string_prefix "&"))

; sql in generalized_strings
; and anything you like as long as the function name is the same as the injected language's parser
(generalized_string
  function: (identifier) @injection.language
  (string_content) @injection.content
  (#not-any-of? @injection.language "re" "rex" "fmt"))

; =============================================================================
; emit pragma
; C / CPP / OBJC / JAVASCRIPT
; a `#<no whitespace><language name>`
; has to directly precede the {.emit: "<language code>".} pragma
; eg.:
; #objc
; {.emit: "<objc code>".}
; OR
; #javascript
; {.emit: "<javascript code>".}
; normal strings
((comment
  (comment_content) @injection.language)
  .
  (pragma_statement
    (pragma_list
      (colon_expression
        left: (identifier) @_emit_keyword
        (#eq? @_emit_keyword "emit")
        right: (_
          (string_content) @injection.content)))))

; =============================================================================
; asm statement
; works same as emit pragma, needs preceding comment with language name
((comment
  (comment_content) @injection.language)
  .
  (assembly_statement
    (_
      (string_content) @injection.content)))

; =============================================================================
; comments
; NOTE: ts "comment" parser heavily impacts performance
; markdown parser in documentation_comment
(documentation_comment
  (comment_content) @injection.content
  (#set! injection.language "markdown_inline"))

; markdown parser in block_documentation_comment
(block_documentation_comment
  (comment_content) @injection.content
  (#set! injection.language "markdown"))
]==],
    ["locals.scm"] = [==[
; ==============================================================================
; @local.definition            ; various definitions
(block
  label: [
    (identifier) @local.definition
    (accent_quoted) @local.definition
  ])

; ==============================================================================
; @local.definition.constant   ; constants
(const_section
  (variable_declaration
    (symbol_declaration_list
      (symbol_declaration
        name: [
          (identifier) @local.definition.constant
          (accent_quoted) @local.definition.constant
          (exported_symbol
            (identifier) @local.definition.constant)
          (exported_symbol
            (accent_quoted) @local.definition.constant)
        ]))
    type: (type_expression)? @local.definition.associated))

; ==============================================================================
; @local.definition.function   ; functions
(proc_declaration
  name: [
    (identifier) @local.definition.function
    (accent_quoted) @local.definition.function
    (exported_symbol
      (identifier) @local.definition.function)
    (exported_symbol
      (accent_quoted) @local.definition.function)
  ]
  (#set! definition.function.scope "parent"))

(func_declaration
  name: [
    (identifier) @local.definition.function
    (accent_quoted) @local.definition.function
    (exported_symbol
      (identifier) @local.definition.function)
    (exported_symbol
      (accent_quoted) @local.definition.function)
  ]
  (#set! definition.function.scope "parent"))

(iterator_declaration
  name: [
    (identifier) @local.definition.function
    (accent_quoted) @local.definition.function
    (exported_symbol
      (identifier) @local.definition.function)
    (exported_symbol
      (accent_quoted) @local.definition.function)
  ]
  (#set! definition.function.scope "parent"))

(converter_declaration
  name: [
    (identifier) @local.definition.function
    (accent_quoted) @local.definition.function
    (exported_symbol
      (identifier) @local.definition.function)
    (exported_symbol
      (accent_quoted) @local.definition.function)
  ]
  (#set! definition.function.scope "parent"))

; ==============================================================================
; @local.definition.method     ; methods
(method_declaration
  name: [
    (identifier) @local.definition.method
    (accent_quoted) @local.definition.method
    (exported_symbol
      (identifier) @local.definition.method)
    (exported_symbol
      (accent_quoted) @local.definition.method)
  ]
  (#set! definition.method.scope "parent"))

; ==============================================================================
; @local.definition.var        ; variables
(var_section
  (variable_declaration
    (symbol_declaration_list
      (symbol_declaration
        name: [
          (identifier) @local.definition.var
          (accent_quoted) @local.definition.var
          (exported_symbol
            (identifier) @local.definition.var)
          (exported_symbol
            (accent_quoted) @local.definition.var)
        ]))
    type: (type_expression)? @local.definition.associated))

(let_section
  (variable_declaration
    (symbol_declaration_list
      (symbol_declaration
        name: [
          (identifier) @local.definition.var
          (accent_quoted) @local.definition.var
          (exported_symbol
            (identifier) @local.definition.var)
          (exported_symbol
            (accent_quoted) @local.definition.var)
        ]))
    type: (type_expression)? @local.definition.associated))

(for
  (symbol_declaration_list
    (symbol_declaration
      name: [
        (identifier) @local.definition.var
        (accent_quoted) @local.definition.var
      ])))

(try
  (except_branch
    values: (expression_list
      (infix_expression
        right: [
          (identifier) @local.definition.var
          (accent_quoted) @local.definition.var
        ]))))

; ==============================================================================
; @local.definition.parameter  ; parameters
(parameter_declaration
  (symbol_declaration_list
    (symbol_declaration
      name: [
        (identifier) @local.definition.parameter
        (accent_quoted) @local.definition.parameter
      ]))
  type: (type_expression)? @local.definition.associated)

(concept_declaration
  parameters: (parameter_list
    [
      (identifier) @local.definition.parameter
      (accent_quoted
        (identifier) @local.definition.parameter)
    ]))

(var_parameter
  [
    (identifier) @local.definition.parameter
    (accent_quoted
      (identifier) @local.definition.parameter)
  ])

(type_parameter
  [
    (identifier) @local.definition.parameter
    (accent_quoted
      (identifier) @local.definition.parameter)
  ])

(static_parameter
  [
    (identifier) @local.definition.parameter
    (accent_quoted
      (identifier) @local.definition.parameter)
  ])

(ref_parameter
  [
    (identifier) @local.definition.parameter
    (accent_quoted
      (identifier) @local.definition.parameter)
  ])

(pointer_parameter
  [
    (identifier) @local.definition.parameter
    (accent_quoted
      (identifier) @local.definition.parameter)
  ])

; ==============================================================================
; @local.definition.macro      ; preprocessor macros
(template_declaration
  name: [
    (identifier) @local.definition.macro
    (accent_quoted) @local.definition.macro
    (exported_symbol
      (identifier) @local.definition.macro)
    (exported_symbol
      (accent_quoted) @local.definition.macro)
  ]
  (#set! definition.macro.scope "parent"))

(macro_declaration
  name: [
    (identifier) @local.definition.macro
    (accent_quoted) @local.definition.macro
    (exported_symbol
      (identifier) @local.definition.macro)
    (exported_symbol
      (accent_quoted) @local.definition.macro)
  ]
  (#set! definition.macro.scope "parent"))

; ==============================================================================
; @local.definition.type       ; types or classes
(type_declaration
  (type_symbol_declaration
    name: [
      (identifier) @local.definition.type
      (accent_quoted) @local.definition.type
      (exported_symbol
        (identifier) @local.definition.type)
      (exported_symbol
        (accent_quoted) @local.definition.type)
    ]))

; ==============================================================================
; @local.definition.field      ; fields or properties
; object_declaration
; variant_declaration
; conditional_declaration
; tuple_type inline
; tuple_type multiline
(field_declaration
  (symbol_declaration_list
    (symbol_declaration
      name: [
        (identifier) @local.definition.field
        (accent_quoted) @local.definition.field
        (exported_symbol
          (identifier) @local.definition.field)
        (exported_symbol
          (accent_quoted) @local.definition.field)
      ]))
  type: (type_expression)? @local.definition.associated)

; ==============================================================================
; @local.definition.enum       ; enumerations
(enum_declaration
  (enum_field_declaration
    (symbol_declaration
      name: [
        (identifier) @local.definition.enum
        (accent_quoted) @local.definition.enum
      ])))

; ==============================================================================
; @local.definition.namespace  ; modules or namespaces
; @local.definition.import     ; imported names
(import_statement
  (expression_list
    (identifier) @local.definition.namespace))

(import_statement
  (expression_list
    (infix_expression
      operator: "as"
      right: (identifier) @local.definition.namespace)))

(import_statement
  (expression_list
    (infix_expression
      operator: (operator) @_operator
      right: [
        (identifier) @local.definition.namespace
        (array_construction
          (identifier) @local.definition.namespace)
      ]))
  (#eq? @_operator "/"))

(import_from_statement
  module: (infix_expression
    operator: (operator) @_operator
    right: (identifier) @local.definition.namespace)
  (expression_list
    [
      (identifier) @local.definition.import
      (accent_quoted) @local.definition.import
    ])
  (#eq? @_operator "/"))

; ==============================================================================
; @local.scope                 ; scope block
; (when)
; NOTE: `when` does actually not create a scope
(if
  consequence: (statement_list) @local.scope
  alternative: (elif_branch)* @local.scope
  alternative: (else_branch)? @local.scope)

(case
  alternative: (of_branch)* @local.scope
  alternative: (elif_branch)* @local.scope
  alternative: (else_branch)? @local.scope)

(try
  body: (statement_list) @local.scope
  (except_branch) @local.scope
  (finally_branch)? @local.scope)

[
  (for)
  (while)
  (block)
  (static_statement)
  (proc_declaration)
  (func_declaration)
  (method_declaration)
  (iterator_declaration)
  (converter_declaration)
  (template_declaration)
  (macro_declaration)
  (proc_expression)
  (func_expression)
  (iterator_expression)
  (concept_declaration)
] @local.scope

; ==============================================================================
; @local.reference             ; identifier reference
(identifier) @local.reference

(accent_quoted) @local.reference
]==],
  },
  extra_files = {
    ["nvim-treesitter-LICENSE"] = [[
The tree-sitter queries that are bundled with this package
have been borrowed from nvim-treesitter.
See the following license:

                                 Apache License
                           Version 2.0, January 2004
                        http://www.apache.org/licenses/

   TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION

   1. Definitions.

      "License" shall mean the terms and conditions for use, reproduction,
      and distribution as defined by Sections 1 through 9 of this document.

      "Licensor" shall mean the copyright owner or entity authorized by
      the copyright owner that is granting the License.

      "Legal Entity" shall mean the union of the acting entity and all
      other entities that control, are controlled by, or are under common
      control with that entity. For the purposes of this definition,
      "control" means (i) the power, direct or indirect, to cause the
      direction or management of such entity, whether by contract or
      otherwise, or (ii) ownership of fifty percent (50%) or more of the
      outstanding shares, or (iii) beneficial ownership of such entity.

      "You" (or "Your") shall mean an individual or Legal Entity
      exercising permissions granted by this License.

      "Source" form shall mean the preferred form for making modifications,
      including but not limited to software source code, documentation
      source, and configuration files.

      "Object" form shall mean any form resulting from mechanical
      transformation or translation of a Source form, including but
      not limited to compiled object code, generated documentation,
      and conversions to other media types.

      "Work" shall mean the work of authorship, whether in Source or
      Object form, made available under the License, as indicated by a
      copyright notice that is included in or attached to the work
      (an example is provided in the Appendix below).

      "Derivative Works" shall mean any work, whether in Source or Object
      form, that is based on (or derived from) the Work and for which the
      editorial revisions, annotations, elaborations, or other modifications
      represent, as a whole, an original work of authorship. For the purposes
      of this License, Derivative Works shall not include works that remain
      separable from, or merely link (or bind by name) to the interfaces of,
      the Work and Derivative Works thereof.

      "Contribution" shall mean any work of authorship, including
      the original version of the Work and any modifications or additions
      to that Work or Derivative Works thereof, that is intentionally
      submitted to Licensor for inclusion in the Work by the copyright owner
      or by an individual or Legal Entity authorized to submit on behalf of
      the copyright owner. For the purposes of this definition, "submitted"
      means any form of electronic, verbal, or written communication sent
      to the Licensor or its representatives, including but not limited to
      communication on electronic mailing lists, source code control systems,
      and issue tracking systems that are managed by, or on behalf of, the
      Licensor for the purpose of discussing and improving the Work, but
      excluding communication that is conspicuously marked or otherwise
      designated in writing by the copyright owner as "Not a Contribution."

      "Contributor" shall mean Licensor and any individual or Legal Entity
      on behalf of whom a Contribution has been received by Licensor and
      subsequently incorporated within the Work.

   2. Grant of Copyright License. Subject to the terms and conditions of
      this License, each Contributor hereby grants to You a perpetual,
      worldwide, non-exclusive, no-charge, royalty-free, irrevocable
      copyright license to reproduce, prepare Derivative Works of,
      publicly display, publicly perform, sublicense, and distribute the
      Work and such Derivative Works in Source or Object form.

   3. Grant of Patent License. Subject to the terms and conditions of
      this License, each Contributor hereby grants to You a perpetual,
      worldwide, non-exclusive, no-charge, royalty-free, irrevocable
      (except as stated in this section) patent license to make, have made,
      use, offer to sell, sell, import, and otherwise transfer the Work,
      where such license applies only to those patent claims licensable
      by such Contributor that are necessarily infringed by their
      Contribution(s) alone or by combination of their Contribution(s)
      with the Work to which such Contribution(s) was submitted. If You
      institute patent litigation against any entity (including a
      cross-claim or counterclaim in a lawsuit) alleging that the Work
      or a Contribution incorporated within the Work constitutes direct
      or contributory patent infringement, then any patent licenses
      granted to You under this License for that Work shall terminate
      as of the date such litigation is filed.

   4. Redistribution. You may reproduce and distribute copies of the
      Work or Derivative Works thereof in any medium, with or without
      modifications, and in Source or Object form, provided that You
      meet the following conditions:

      (a) You must give any other recipients of the Work or
          Derivative Works a copy of this License; and

      (b) You must cause any modified files to carry prominent notices
          stating that You changed the files; and

      (c) You must retain, in the Source form of any Derivative Works
          that You distribute, all copyright, patent, trademark, and
          attribution notices from the Source form of the Work,
          excluding those notices that do not pertain to any part of
          the Derivative Works; and

      (d) If the Work includes a "NOTICE" text file as part of its
          distribution, then any Derivative Works that You distribute must
          include a readable copy of the attribution notices contained
          within such NOTICE file, excluding those notices that do not
          pertain to any part of the Derivative Works, in at least one
          of the following places: within a NOTICE text file distributed
          as part of the Derivative Works; within the Source form or
          documentation, if provided along with the Derivative Works; or,
          within a display generated by the Derivative Works, if and
          wherever such third-party notices normally appear. The contents
          of the NOTICE file are for informational purposes only and
          do not modify the License. You may add Your own attribution
          notices within Derivative Works that You distribute, alongside
          or as an addendum to the NOTICE text from the Work, provided
          that such additional attribution notices cannot be construed
          as modifying the License.

      You may add Your own copyright statement to Your modifications and
      may provide additional or different license terms and conditions
      for use, reproduction, or distribution of Your modifications, or
      for any such Derivative Works as a whole, provided Your use,
      reproduction, and distribution of the Work otherwise complies with
      the conditions stated in this License.

   5. Submission of Contributions. Unless You explicitly state otherwise,
      any Contribution intentionally submitted for inclusion in the Work
      by You to the Licensor shall be under the terms and conditions of
      this License, without any additional terms or conditions.
      Notwithstanding the above, nothing herein shall supersede or modify
      the terms of any separate license agreement you may have executed
      with Licensor regarding such Contributions.

   6. Trademarks. This License does not grant permission to use the trade
      names, trademarks, service marks, or product names of the Licensor,
      except as required for reasonable and customary use in describing the
      origin of the Work and reproducing the content of the NOTICE file.

   7. Disclaimer of Warranty. Unless required by applicable law or
      agreed to in writing, Licensor provides the Work (and each
      Contributor provides its Contributions) on an "AS IS" BASIS,
      WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
      implied, including, without limitation, any warranties or conditions
      of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A
      PARTICULAR PURPOSE. You are solely responsible for determining the
      appropriateness of using or redistributing the Work and assume any
      risks associated with Your exercise of permissions under this License.

   8. Limitation of Liability. In no event and under no legal theory,
      whether in tort (including negligence), contract, or otherwise,
      unless required by applicable law (such as deliberate and grossly
      negligent acts) or agreed to in writing, shall any Contributor be
      liable to You for damages, including any direct, indirect, special,
      incidental, or consequential damages of any character arising as a
      result of this License or out of the use or inability to use the
      Work (including but not limited to damages for loss of goodwill,
      work stoppage, computer failure or malfunction, or any and all
      other commercial damages or losses), even if such Contributor
      has been advised of the possibility of such damages.

   9. Accepting Warranty or Additional Liability. While redistributing
      the Work or Derivative Works thereof, You may choose to offer,
      and charge a fee for, acceptance of support, warranty, indemnity,
      or other liability obligations and/or rights consistent with this
      License. However, in accepting such obligations, You may act only
      on Your own behalf and on Your sole responsibility, not on behalf
      of any other Contributor, and only if You agree to indemnify,
      defend, and hold each Contributor harmless for any liability
      incurred by, or claims asserted against, such Contributor by reason
      of your accepting any such warranty or additional liability.

   END OF TERMS AND CONDITIONS

   APPENDIX: How to apply the Apache License to your work.

      To apply the Apache License to your work, attach the following
      boilerplate notice, with the fields enclosed by brackets "[]"
      replaced with your own identifying information. (Don't include
      the brackets!)  The text should be enclosed in the appropriate
      comment syntax for the file format. We also recommend that a
      file or class name and description of purpose be included on the
      same "printed page" as the copyright notice for easier
      identification within third-party archives.

   Copyright [yyyy] [name of copyright owner]

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
]],
  },
}
