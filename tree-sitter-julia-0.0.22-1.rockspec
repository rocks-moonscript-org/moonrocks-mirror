local git_ref = '3520b57e418f734f582215181ecd926a6178c90f'
local modrev = '0.0.22'
local specrev = '1'

local repo_url = 'https://github.com/tree-sitter/tree-sitter-julia'

rockspec_format = '3.0'
package = 'tree-sitter-julia'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for julia',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/tree-sitter/tree-sitter-julia',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 5.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-julia-' .. '3520b57e418f734f582215181ecd926a6178c90f',
}

build = {
  type = "treesitter-parser",
  lang = "julia",
  parser = true,
  generate = false,
  generate_from_json = false,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["folds.scm"] = [==[
[
  (module_definition)
  (struct_definition)
  (macro_definition)
  (function_definition)
  (if_statement)
  (try_statement)
  (for_statement)
  (while_statement)
  (let_statement)
  (quote_statement)
  (do_clause)
  (compound_statement)
] @fold
]==],
    ["highlights.scm"] = [==[
; Identifiers
(identifier) @variable

; ;; If you want type highlighting based on Julia naming conventions (this might collide with mathematical notation)
; ((identifier) @type
;   (match? @type "^[A-Z][^_]"))  ; exception: Highlight `A_foo` sort of identifiers as variables
(quote_expression
  ":" @string.special.symbol
  [
    (identifier)
    (operator)
  ] @string.special.symbol)

(field_expression
  (identifier) @variable.member .)

; calls
(call_expression
  (identifier) @function.call)

(call_expression
  (field_expression
    (identifier) @function.call .))

(broadcast_call_expression
  (identifier) @function.call)

(broadcast_call_expression
  (field_expression
    (identifier) @function.call .))

(binary_expression
  (_)
  (operator) @_pipe
  (identifier) @function.call
  (#any-of? @_pipe "|>" ".|>"))

(macro_identifier) @function.macro

(macro_identifier
  (identifier) @function.macro) ; for any one using the variable highlight

(macro_definition
  (signature
    (call_expression
      .
      (identifier) @function.macro)))

; Builtins
((identifier) @function.builtin
  (#any-of? @function.builtin
    "_abstracttype" "_apply_iterate" "_apply_pure" "_call_in_world" "_call_in_world_total"
    "_call_latest" "_equiv_typedef" "_expr" "_primitivetype" "_setsuper!" "_structtype" "_typebody!"
    "_typevar" "applicable" "apply_type" "arrayref" "arrayset" "arraysize" "const_arrayref"
    "donotdelete" "fieldtype" "get_binding_type" "getfield" "ifelse" "invoke" "isa" "isdefined"
    "modifyfield!" "nfields" "replacefield!" "set_binding_type!" "setfield!" "sizeof" "svec"
    "swapfield!" "throw" "tuple" "typeassert" "typeof"))

; Types
; Definitions
(abstract_definition
  name: (identifier) @type.definition) @keyword

(primitive_definition
  name: (identifier) @type.definition) @keyword

(struct_definition
  name: (identifier) @type)

(type_clause
  [
    (identifier) @type
    (field_expression
      (identifier) @type .)
  ])

; Annotations
(parametrized_type_expression
  (_) @type
  (curly_expression
    (_) @type))

(type_parameter_list
  (identifier) @type)

(typed_expression
  (identifier) @type .)

(unary_typed_expression
  (identifier) @type .)

(where_clause
  (identifier) @type)

(where_clause
  (curly_expression
    (_) @type))

; Builtins
; This list was generated with:
;
;  istype(x) = typeof(x) === DataType || typeof(x) === UnionAll
;  get_types(m) = filter(x -> istype(Base.eval(m, x)), names(m))
;  type_names = sort(union(get_types(Core), get_types(Base)))
;
((identifier) @type.builtin
  (#any-of? @type.builtin
    "AbstractArray" "AbstractChannel" "AbstractChar" "AbstractDict" "AbstractDisplay"
    "AbstractFloat" "AbstractIrrational" "AbstractLock" "AbstractMatch" "AbstractMatrix"
    "AbstractPattern" "AbstractRange" "AbstractSet" "AbstractSlices" "AbstractString"
    "AbstractUnitRange" "AbstractVecOrMat" "AbstractVector" "Any" "ArgumentError" "Array"
    "AssertionError" "Atomic" "BigFloat" "BigInt" "BitArray" "BitMatrix" "BitSet" "BitVector" "Bool"
    "BoundsError" "By" "CanonicalIndexError" "CapturedException" "CartesianIndex" "CartesianIndices"
    "Cchar" "Cdouble" "Cfloat" "Channel" "Char" "Cint" "Cintmax_t" "Clong" "Clonglong" "Cmd" "Colon"
    "ColumnSlices" "Complex" "ComplexF16" "ComplexF32" "ComplexF64" "ComposedFunction"
    "CompositeException" "ConcurrencyViolationError" "Condition" "Cptrdiff_t" "Cshort" "Csize_t"
    "Cssize_t" "Cstring" "Cuchar" "Cuint" "Cuintmax_t" "Culong" "Culonglong" "Cushort" "Cvoid"
    "Cwchar_t" "Cwstring" "DataType" "DenseArray" "DenseMatrix" "DenseVecOrMat" "DenseVector" "Dict"
    "DimensionMismatch" "Dims" "DivideError" "DomainError" "EOFError" "Enum" "ErrorException"
    "Exception" "ExponentialBackOff" "Expr" "Float16" "Float32" "Float64" "Function" "GlobalRef"
    "HTML" "IO" "IOBuffer" "IOContext" "IOStream" "IdDict" "IndexCartesian" "IndexLinear"
    "IndexStyle" "InexactError" "InitError" "Int" "Int128" "Int16" "Int32" "Int64" "Int8" "Integer"
    "InterruptException" "InvalidStateException" "Irrational" "KeyError" "LazyString" "LinRange"
    "LineNumberNode" "LinearIndices" "LoadError" "Lt" "MIME" "Matrix" "Method" "MethodError"
    "Missing" "MissingException" "Module" "NTuple" "NamedTuple" "Nothing" "Number" "Ordering"
    "OrdinalRange" "OutOfMemoryError" "OverflowError" "Pair" "ParseError" "PartialQuickSort" "Perm"
    "PermutedDimsArray" "Pipe" "ProcessFailedException" "Ptr" "QuoteNode" "Rational" "RawFD"
    "ReadOnlyMemoryError" "Real" "ReentrantLock" "Ref" "Regex" "RegexMatch" "Returns"
    "ReverseOrdering" "RoundingMode" "RowSlices" "SegmentationFault" "Set" "Signed" "Slices" "Some"
    "SpinLock" "StackFrame" "StackOverflowError" "StackTrace" "Stateful" "StepRange" "StepRangeLen"
    "StridedArray" "StridedMatrix" "StridedVecOrMat" "StridedVector" "String" "StringIndexError"
    "SubArray" "SubString" "SubstitutionString" "Symbol" "SystemError" "Task" "TaskFailedException"
    "Text" "TextDisplay" "Timer" "Tmstruct" "Tuple" "Type" "TypeError" "TypeVar" "UInt" "UInt128"
    "UInt16" "UInt32" "UInt64" "UInt8" "UndefInitializer" "UndefKeywordError" "UndefRefError"
    "UndefVarError" "Union" "UnionAll" "UnitRange" "Unsigned" "Val" "VecElement" "VecOrMat" "Vector"
    "VersionNumber" "WeakKeyDict" "WeakRef"))

((identifier) @variable.builtin
  (#any-of? @variable.builtin "begin" "end")
  (#has-ancestor? @variable.builtin index_expression))

((identifier) @variable.builtin
  (#any-of? @variable.builtin "begin" "end")
  (#has-ancestor? @variable.builtin range_expression))

; Keywords
[
  "global"
  "local"
] @keyword

(compound_statement
  [
    "begin"
    "end"
  ] @keyword)

(quote_statement
  [
    "quote"
    "end"
  ] @keyword)

(let_statement
  [
    "let"
    "end"
  ] @keyword)

(if_statement
  [
    "if"
    "end"
  ] @keyword.conditional)

(elseif_clause
  "elseif" @keyword.conditional)

(else_clause
  "else" @keyword.conditional)

(if_clause
  "if" @keyword.conditional) ; `if` clause in comprehensions

(ternary_expression
  [
    "?"
    ":"
  ] @keyword.conditional.ternary)

(try_statement
  [
    "try"
    "end"
  ] @keyword.exception)

(finally_clause
  "finally" @keyword.exception)

(catch_clause
  "catch" @keyword.exception)

(for_statement
  [
    "for"
    "end"
  ] @keyword.repeat)

(while_statement
  [
    "while"
    "end"
  ] @keyword.repeat)

(for_clause
  "for" @keyword.repeat)

(for_binding
  "outer" @keyword.repeat)

[
  (break_statement)
  (continue_statement)
] @keyword.repeat

(module_definition
  [
    "module"
    "baremodule"
    "end"
  ] @keyword.import)

(import_statement
  [
    "import"
    "using"
  ] @keyword.import)

(import_alias
  "as" @keyword.import)

(export_statement
  "export" @keyword.import)

(selected_import
  ":" @punctuation.delimiter)

(struct_definition
  [
    "struct"
    "end"
  ] @keyword.type)

(macro_definition
  [
    "macro"
    "end"
  ] @keyword)

(function_definition
  [
    "function"
    "end"
  ] @keyword.function)

(do_clause
  [
    "do"
    "end"
  ] @keyword.function)

(return_statement
  "return" @keyword.return)

[
  "const"
  "mutable"
] @keyword.modifier

; Operators & Punctuation
[
  "="
  "∈"
  (operator)
] @operator

(adjoint_expression
  "'" @operator)

(range_expression
  ":" @operator)

((operator) @keyword.operator
  (#any-of? @keyword.operator "in" "isa"))

(for_binding
  "in" @keyword.operator)

(where_clause
  "where" @keyword.operator)

(where_expression
  "where" @keyword.operator)

[
  ","
  "."
  ";"
  "::"
  "->"
] @punctuation.delimiter

"..." @punctuation.special

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket

; Literals
(boolean_literal) @boolean

(integer_literal) @number

(float_literal) @number.float

((identifier) @number.float
  (#any-of? @number.float "NaN" "NaN16" "NaN32" "Inf" "Inf16" "Inf32"))

((identifier) @constant.builtin
  (#any-of? @constant.builtin "nothing" "missing"))

(character_literal) @character

(escape_sequence) @string.escape

(string_literal) @string

(prefixed_string_literal
  prefix: (identifier) @function.macro) @string

(command_literal) @string.special

(prefixed_command_literal
  prefix: (identifier) @function.macro) @string.special

((string_literal) @string.documentation @spell
  .
  [
    (module_definition)
    (abstract_definition)
    (struct_definition)
    (function_definition)
    (assignment)
    (const_statement)
  ])

[
  (line_comment)
  (block_comment)
] @comment @spell
]==],
    ["indents.scm"] = [==[
[
  (struct_definition)
  (macro_definition)
  (function_definition)
  (compound_statement)
  (if_statement)
  (try_statement)
  (for_statement)
  (while_statement)
  (let_statement)
  (quote_statement)
  (do_clause)
  (assignment)
  (for_binding)
  (call_expression)
  (parenthesized_expression)
  (tuple_expression)
  (comprehension_expression)
  (matrix_expression)
  (vector_expression)
] @indent.begin

[
  "end"
  ")"
  "]"
  "}"
] @indent.end

[
  "end"
  ")"
  "]"
  "}"
  (else_clause)
  (elseif_clause)
  (catch_clause)
  (finally_clause)
] @indent.branch

[
  (line_comment)
  (block_comment)
] @indent.ignore

((argument_list) @indent.align
  (#set! indent.open_delimiter "(")
  (#set! indent.close_delimiter ")"))

((curly_expression) @indent.align
  (#set! indent.open_delimiter "{")
  (#set! indent.close_delimiter "}"))
]==],
    ["injections.scm"] = [==[
; Inject markdown in docstrings
((string_literal) @injection.content
  .
  [
    (module_definition)
    (abstract_definition)
    (struct_definition)
    (function_definition)
    (macro_definition)
    (assignment)
    (const_statement)
  ]
  (#lua-match? @injection.content "^\"\"\"")
  (#set! injection.language "markdown")
  (#offset! @injection.content 0 3 0 -3))

; Inject comments
([
  (line_comment)
  (block_comment)
] @injection.content
  (#set! injection.language "comment"))

; Inject regex in r"hello\bworld"
((prefixed_string_literal
  prefix: (identifier) @_prefix) @injection.content
  (#eq? @_prefix "r")
  (#set! injection.language "regex")
  (#offset! @injection.content 0 2 0 -1))

; Inject markdown in md"**Bold** and _Italics_"
((prefixed_string_literal
  prefix: (identifier) @_prefix) @injection.content
  (#eq? @_prefix "md")
  (#set! injection.language "markdown")
  (#offset! @injection.content 0 3 0 -1))

; Inject bash in `git add --help`
((command_literal) @injection.content
  (#set! injection.language "bash"))
]==],
    ["locals.scm"] = [==[
; Variables
(assignment
  (identifier) @local.definition.var)

(assignment
  (tuple_expression
    (identifier) @local.definition.var))

; let/const bindings
(let_binding
  (identifier) @local.definition.var)

(let_binding
  (tuple_expression
    (identifier) @local.definition.var))

; For bindings
(for_binding
  (identifier) @local.definition.var)

(for_binding
  (tuple_expression
    (identifier) @local.definition.var))

; Types
(struct_definition
  name: (identifier) @local.definition.type)

(abstract_definition
  name: (identifier) @local.definition.type)

(abstract_definition
  name: (identifier) @local.definition.type)

(type_parameter_list
  (identifier) @local.definition.type)

; Module imports
(import_statement
  (identifier) @local.definition.import)

; Function/macro definitions
(function_definition
  (signature
    (call_expression
      .
      (identifier) @local.definition.function))) @local.scope

(macro_definition
  (signature
    (call_expression
      .
      (identifier) @local.definition.function))) @local.scope

(identifier) @local.reference

[
  (for_statement)
  (while_statement)
  (try_statement)
  (catch_clause)
  (finally_clause)
  (let_statement)
  (quote_statement)
  (do_clause)
] @local.scope
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
