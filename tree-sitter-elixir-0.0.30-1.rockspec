local git_ref = 'ef124b83a3f3572b0af23db4efae3f8de06a15e1'
local modrev = '0.0.30'
local specrev = '1'

local repo_url = 'https://github.com/elixir-lang/tree-sitter-elixir'

rockspec_format = '3.0'
package = 'tree-sitter-elixir'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for elixir',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/elixir-lang/tree-sitter-elixir',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 5.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-elixir-' .. 'ef124b83a3f3572b0af23db4efae3f8de06a15e1',
}

build = {
  type = "treesitter-parser",
  lang = "elixir",
  parser = true,
  generate = false,
  generate_from_json = false,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["folds.scm"] = [==[
[
  (anonymous_function)
  (stab_clause)
  (arguments)
  (block)
  (do_block)
  (list)
  (map)
  (tuple)
] @fold
]==],
    ["highlights.scm"] = [==[
; Punctuation
[
  ","
  ";"
] @punctuation.delimiter

[
  "("
  ")"
  "<<"
  ">>"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket

"%" @punctuation.special

; Identifiers
(identifier) @variable

; Unused Identifiers
((identifier) @comment
  (#lua-match? @comment "^_"))

; Comments
(comment) @comment @spell

; Strings
(string) @string

; Modules
(alias) @module

; Atoms & Keywords
[
  (atom)
  (quoted_atom)
  (keyword)
  (quoted_keyword)
] @string.special.symbol

; Interpolation
(interpolation
  [
    "#{"
    "}"
  ] @string.special)

; Escape sequences
(escape_sequence) @string.escape

; Integers
(integer) @number

; Floats
(float) @number.float

; Characters
[
  (char)
  (charlist)
] @character

; Booleans
(boolean) @boolean

; Nil
(nil) @constant.builtin

; Operators
(operator_identifier) @operator

(unary_operator
  operator: _ @operator)

(binary_operator
  operator: _ @operator)

; Pipe Operator
(binary_operator
  operator: "|>"
  right: (identifier) @function)

(dot
  operator: _ @operator)

(stab_clause
  operator: _ @operator)

; Local Function Calls
(call
  target: (identifier) @function.call)

; Remote Function Calls
(call
  target: (dot
    left: [
      (atom) @type
      (_)
    ]
    right: (identifier) @function.call)
  (arguments))

; Definition Function Calls
(call
  target: ((identifier) @keyword.function
    (#any-of? @keyword.function
      "def" "defdelegate" "defexception" "defguard" "defguardp" "defimpl" "defmacro" "defmacrop"
      "defmodule" "defn" "defnp" "defoverridable" "defp" "defprotocol" "defstruct"))
  (arguments
    [
      (call
        (identifier) @function)
      (identifier) @function
      (binary_operator
        left: (call
          target: (identifier) @function)
        operator: "when")
    ])?)

; Kernel Keywords & Special Forms
(call
  target: ((identifier) @keyword
    (#any-of? @keyword
      "alias" "case" "catch" "cond" "else" "for" "if" "import" "quote" "raise" "receive" "require"
      "reraise" "super" "throw" "try" "unless" "unquote" "unquote_splicing" "use" "with")))

; Special Constants
((identifier) @constant.builtin
  (#any-of? @constant.builtin "__CALLER__" "__DIR__" "__ENV__" "__MODULE__" "__STACKTRACE__"))

; Reserved Keywords
[
  "after"
  "catch"
  "do"
  "end"
  "fn"
  "rescue"
  "when"
  "else"
] @keyword

; Operator Keywords
[
  "and"
  "in"
  "not in"
  "not"
  "or"
] @keyword.operator

; Capture Operator
(unary_operator
  operator: "&"
  operand: [
    (integer) @operator
    (binary_operator
      left: [
        (call
          target: (dot
            left: (_)
            right: (identifier) @function))
        (identifier) @function
      ]
      operator: "/"
      right: (integer) @operator)
  ])

; Non-String Sigils
(sigil
  "~" @string.special
  (sigil_name) @string.special @_sigil_name
  quoted_start: _ @string.special
  quoted_end: _ @string.special
  ((sigil_modifiers) @string.special)?
  (#not-any-of? @_sigil_name "s" "S"))

; String Sigils
(sigil
  "~" @string
  (sigil_name) @string @_sigil_name
  quoted_start: _ @string
  (quoted_content) @string
  quoted_end: _ @string
  ((sigil_modifiers) @string)?
  (#any-of? @_sigil_name "s" "S"))

; Module attributes
(unary_operator
  operator: "@"
  operand: [
    (identifier)
    (call
      target: (identifier))
  ] @constant) @constant

; Documentation
(unary_operator
  operator: "@"
  operand: (call
    target: ((identifier) @_identifier
      (#any-of? @_identifier "moduledoc" "typedoc" "shortdoc" "doc")) @comment.documentation
    (arguments
      [
        (string)
        (boolean)
        (charlist)
        (sigil
          "~" @comment.documentation
          (sigil_name) @comment.documentation
          quoted_start: _ @comment.documentation
          (quoted_content) @comment.documentation
          quoted_end: _ @comment.documentation)
      ] @comment.documentation))) @comment.documentation
]==],
    ["indents.scm"] = [==[
[
  (block)
  (do_block)
  (list)
  (map)
  (stab_clause)
  (tuple)
  (arguments)
] @indent.begin

[
  ")"
  "]"
  "after"
  "catch"
  "else"
  "rescue"
  "}"
  "end"
] @indent.end @indent.branch

; Elixir pipelines are not indented, but other binary operator chains are
((binary_operator
  operator: _ @_operator) @indent.begin
  (#not-eq? @_operator "|>"))
]==],
    ["injections.scm"] = [==[
; Comments
((comment) @injection.content
  (#set! injection.language "comment"))

; Documentation
(unary_operator
  operator: "@"
  operand: (call
    target: ((identifier) @_identifier
      (#any-of? @_identifier "moduledoc" "typedoc" "shortdoc" "doc"))
    (arguments
      [
        (string
          (quoted_content) @injection.content)
        (sigil
          (quoted_content) @injection.content)
      ])
    (#set! injection.language "markdown")))

; HEEx
(sigil
  (sigil_name) @_sigil_name
  (quoted_content) @injection.content
  (#eq? @_sigil_name "H")
  (#set! injection.language "heex"))

; Surface
(sigil
  (sigil_name) @_sigil_name
  (quoted_content) @injection.content
  (#eq? @_sigil_name "F")
  (#set! injection.language "surface"))

; Zigler
(sigil
  (sigil_name) @_sigil_name
  (quoted_content) @injection.content
  (#any-of? @_sigil_name "E" "L")
  (#set! injection.language "eex"))

(sigil
  (sigil_name) @_sigil_name
  (quoted_content) @injection.content
  (#any-of? @_sigil_name "z" "Z")
  (#set! injection.language "zig"))

; Regex
(sigil
  (sigil_name) @_sigil_name
  (quoted_content) @injection.content
  (#any-of? @_sigil_name "r" "R")
  (#set! injection.language "regex"))

; Json
(sigil
  (sigil_name) @_sigil_name
  (quoted_content) @injection.content
  (#any-of? @_sigil_name "j" "J")
  (#set! injection.language "json"))
]==],
    ["locals.scm"] = [==[
; References
(identifier) @local.reference

(alias) @local.reference

; Module Definitions
(call
  target: ((identifier) @_identifier
    (#eq? @_identifier "defmodule"))
  (arguments
    (alias) @local.definition.type))

; Pattern Match Definitions
(binary_operator
  ; format-ignore
  left: 
    [
      (identifier) @local.definition.var
      (_ (identifier) @local.definition.var)
      (_ (_ (identifier) @local.definition.var))
      (_ (_ (_ (identifier) @local.definition.var)))
      (_ (_ (_ (_ (identifier) @local.definition.var))))
      (_ (_ (_ (_ (_ (identifier) @local.definition.var)))))
      (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var))))))
      (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var)))))))
      (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var))))))))
      (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var)))))))))
      (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var))))))))))
      (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var)))))))))))
      (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var))))))))))))
      (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var)))))))))))))
      (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var))))))))))))))
      (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var)))))))))))))))
      (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var))))))))))))))))
      (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var)))))))))))))))))
      (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var))))))))))))))))))
      (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var)))))))))))))))))))
      (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var))))))))))))))))))))
    ]
  operator: "=")

; Stab Clause Definitions
; format-ignore
(stab_clause
  left:
    [
     (arguments
      [
        (identifier) @local.definition.var
        (_ (identifier) @local.definition.var)
        (_ (_ (identifier) @local.definition.var))
        (_ (_ (_ (identifier) @local.definition.var)))
        (_ (_ (_ (_ (identifier) @local.definition.var))))
        (_ (_ (_ (_ (_ (identifier) @local.definition.var)))))
        (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var))))))
        (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var)))))))
        (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var))))))))
        (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var)))))))))
        (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var))))))))))
        (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var)))))))))))
        (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var))))))))))))
        (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var)))))))))))))
        (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var))))))))))))))
        (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var)))))))))))))))
        (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var))))))))))))))))
        (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var)))))))))))))))))
        (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var))))))))))))))))))
        (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var)))))))))))))))))))
        (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var))))))))))))))))))))
      ])

    (binary_operator
      left:
        (arguments
          ; format-ignore
          [
            (identifier) @local.definition.var
            (_ (identifier) @local.definition.var)
            (_ (_ (identifier) @local.definition.var))
            (_ (_ (_ (identifier) @local.definition.var)))
            (_ (_ (_ (_ (identifier) @local.definition.var))))
            (_ (_ (_ (_ (_ (identifier) @local.definition.var)))))
            (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var))))))
            (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var)))))))
            (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var))))))))
            (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var)))))))))
            (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var))))))))))
            (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var)))))))))))
            (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var))))))))))))
            (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var)))))))))))))
            (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var))))))))))))))
            (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var)))))))))))))))
            (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var))))))))))))))))
            (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var)))))))))))))))))
            (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var))))))))))))))))))
            (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var)))))))))))))))))))
            (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.var))))))))))))))))))))
          ])
      operator: "when")
    ])

; Aliases
; format-ignore
(call
  target:
    ((identifier) @_identifier
      (#any-of? @_identifier "require" "alias" "use" "import"))
  (arguments
    [
      (alias) @local.definition.import
      (_ (alias) @local.definition.import)
      (_ (_ (alias) @local.definition.import))
      (_ (_ (_ (alias) @local.definition.import)))
      (_ (_ (_ (_ (alias) @local.definition.import))))
    ]))

; Local Function Definitions & Scopes
; format-ignore
(call
  target:
    ((identifier) @_identifier
      (#any-of? @_identifier "def" "defp" "defmacro" "defmacrop" "defguard" "defguardp" "defn" "defnp" "for"))
  (arguments
    [
      (identifier) @local.definition.function
      (binary_operator
        left: (identifier) @local.definition.function
        operator: "when")
      (binary_operator
        (identifier) @local.definition.parameter)
      (call
        target: (identifier) @local.definition.function
        (arguments
          [
            (identifier) @local.definition.parameter
            (_ (identifier) @local.definition.parameter)
            (_ (_ (identifier) @local.definition.parameter))
            (_ (_ (_ (identifier) @local.definition.parameter)))
            (_ (_ (_ (_ (identifier) @local.definition.parameter))))
            (_ (_ (_ (_ (_ (identifier) @local.definition.parameter)))))
            (_ (_ (_ (_ (_ (_ (identifier) @local.definition.parameter))))))
            (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.parameter)))))))
            (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.parameter))))))))
            (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.parameter)))))))))
            (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.parameter))))))))))
            (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.parameter)))))))))))
            (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.parameter))))))))))))
            (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.parameter)))))))))))))
            (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.parameter))))))))))))))
            (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.parameter)))))))))))))))
            (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.parameter))))))))))))))))
            (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.parameter)))))))))))))))))
            (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.parameter))))))))))))))))))
            (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.parameter)))))))))))))))))))
            (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.parameter))))))))))))))))))))
          ]))
    ]?)
  (#set! definition.function.scope parent)(do_block)?) @local.scope

; ExUnit Test Definitions & Scopes
; format-ignore
(call
  target:
    ((identifier) @_identifier
      (#eq? @_identifier "test"))
  (arguments
    [
      (string)
      ((string)
        .
        ","
        .
        [
          (identifier) @local.definition.parameter
          (_ (identifier) @local.definition.parameter)
          (_ (_ (identifier) @local.definition.parameter))
          (_ (_ (_ (identifier) @local.definition.parameter)))
          (_ (_ (_ (_ (identifier) @local.definition.parameter))))
          (_ (_ (_ (_ (_ (identifier) @local.definition.parameter)))))
          (_ (_ (_ (_ (_ (_ (identifier) @local.definition.parameter))))))
          (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.parameter)))))))
          (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.parameter))))))))
          (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.parameter)))))))))
          (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.parameter))))))))))
          (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.parameter)))))))))))
          (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.parameter))))))))))))
          (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.parameter)))))))))))))
          (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.parameter))))))))))))))
          (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.parameter)))))))))))))))
          (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.parameter))))))))))))))))
          (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.parameter)))))))))))))))))
          (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.parameter))))))))))))))))))
          (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.parameter)))))))))))))))))))
          (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (_ (identifier) @local.definition.parameter))))))))))))))))))))
        ])
    ])
  (do_block)?) @local.scope

; Stab Clause Scopes
(stab_clause) @local.scope
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
