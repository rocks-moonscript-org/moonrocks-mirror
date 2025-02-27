local git_ref = 'a5d04fdb5a69a02b8fa8eb5525a60dfb5309b73b'
local modrev = '0.0.11'
local specrev = '1'

local repo_url = 'https://github.com/tree-sitter-grammars/tree-sitter-bitbake'

rockspec_format = '3.0'
package = 'tree-sitter-bitbake'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for bitbake',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/tree-sitter-grammars/tree-sitter-bitbake',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 5.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-bitbake-' .. 'a5d04fdb5a69a02b8fa8eb5525a60dfb5309b73b',
}

build = {
  type = "treesitter-parser",
  lang = "bitbake",
  parser = true,
  generate = false,
  generate_from_json = false,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["folds.scm"] = [==[
[
  (function_definition)
  (anonymous_python_function)
  (python_function_definition)
  (while_statement)
  (for_statement)
  (if_statement)
  (with_statement)
  (try_statement)
  (import_from_statement)
  (parameters)
  (argument_list)
  (parenthesized_expression)
  (generator_expression)
  (list_comprehension)
  (set_comprehension)
  (dictionary_comprehension)
  (tuple)
  (list)
  (set)
  (dictionary)
  (string)
  (python_string)
] @fold
]==],
    ["highlights.scm"] = [==[
; Includes
[
  "inherit"
  "include"
  "require"
  "export"
  "import"
] @keyword.import

; Keywords
[
  "unset"
  "EXPORT_FUNCTIONS"
  "python"
  "assert"
  "exec"
  "global"
  "nonlocal"
  "pass"
  "print"
  "with"
  "as"
] @keyword

[
  "async"
  "await"
] @keyword.coroutine

[
  "return"
  "yield"
] @keyword.return

(yield
  "from" @keyword.return)

(future_import_statement
  "from" @keyword.import
  "__future__" @constant.builtin)

(import_from_statement
  "from" @keyword.import)

"import" @keyword.import

(aliased_import
  "as" @keyword.import)

[
  "if"
  "elif"
  "else"
] @keyword.conditional

[
  "for"
  "while"
  "break"
  "continue"
] @keyword.repeat

[
  "try"
  "except"
  "except*"
  "raise"
  "finally"
] @keyword.exception

(raise_statement
  "from" @keyword.exception)

(try_statement
  (else_clause
    "else" @keyword.exception))

[
  "addtask"
  "deltask"
  "addhandler"
  "def"
  "lambda"
] @keyword.function

[
  "before"
  "after"
] @keyword.modifier

[
  "append"
  "prepend"
  "remove"
] @keyword.modifier

; Variables
[
  (identifier)
  (python_identifier)
] @variable

[
  "noexec"
  "INHERIT"
  "OVERRIDES"
  "$BB_ENV_PASSTHROUGH"
  "$BB_ENV_PASSTHROUGH_ADDITIONS"
] @variable.builtin

; Reset highlighting in f-string interpolations
(interpolation) @none

; Identifier naming conventions
((python_identifier) @type
  (#lua-match? @type "^[A-Z].*[a-z]"))

([
  (identifier)
  (python_identifier)
] @constant
  (#lua-match? @constant "^[A-Z][A-Z_0-9]*$"))

((python_identifier) @constant.builtin
  (#lua-match? @constant.builtin "^__[a-zA-Z0-9_]*__$"))

((python_identifier) @constant.builtin
  (#any-of? @constant.builtin
    ; https://docs.python.org/3/library/constants.html
    "NotImplemented" "Ellipsis" "quit" "exit" "copyright" "credits" "license"))

((assignment
  left: (python_identifier) @type.definition
  (type
    (python_identifier) @_annotation))
  (#eq? @_annotation "TypeAlias"))

((assignment
  left: (python_identifier) @type.definition
  right: (call
    function: (python_identifier) @_func))
  (#any-of? @_func "TypeVar" "NewType"))

; Fields
(flag) @variable.member

((attribute
  attribute: (python_identifier) @variable.member)
  (#lua-match? @variable.member "^[%l_].*$"))

; Functions
(call
  function: (python_identifier) @function.call)

(call
  function: (attribute
    attribute: (python_identifier) @function.method.call))

((call
  function: (python_identifier) @constructor)
  (#lua-match? @constructor "^%u"))

((call
  function: (attribute
    attribute: (python_identifier) @constructor))
  (#lua-match? @constructor "^%u"))

((call
  function: (python_identifier) @function.builtin)
  (#any-of? @function.builtin
    "abs" "all" "any" "ascii" "bin" "bool" "breakpoint" "bytearray" "bytes" "callable" "chr"
    "classmethod" "compile" "complex" "delattr" "dict" "dir" "divmod" "enumerate" "eval" "exec"
    "filter" "float" "format" "frozenset" "getattr" "globals" "hasattr" "hash" "help" "hex" "id"
    "input" "int" "isinstance" "issubclass" "iter" "len" "list" "locals" "map" "max" "memoryview"
    "min" "next" "object" "oct" "open" "ord" "pow" "print" "property" "range" "repr" "reversed"
    "round" "set" "setattr" "slice" "sorted" "staticmethod" "str" "sum" "super" "tuple" "type"
    "vars" "zip" "__import__"))

(python_function_definition
  name: (python_identifier) @function)

(type
  (python_identifier) @type)

(type
  (subscript
    (python_identifier) @type)) ; type subscript: Tuple[int]

((call
  function: (python_identifier) @_isinstance
  arguments: (argument_list
    (_)
    (python_identifier) @type))
  (#eq? @_isinstance "isinstance"))

(anonymous_python_function
  (identifier) @function)

(function_definition
  (identifier) @function)

(addtask_statement
  (identifier) @function)

(deltask_statement
  (identifier) @function)

(export_functions_statement
  (identifier) @function)

(addhandler_statement
  (identifier) @function)

(python_function_definition
  body: (block
    .
    (expression_statement
      (python_string) @string.documentation @spell)))

; Namespace
(inherit_path) @module

; Normal parameters
(parameters
  (python_identifier) @variable.parameter)

; Lambda parameters
(lambda_parameters
  (python_identifier) @variable.parameter)

(lambda_parameters
  (tuple_pattern
    (python_identifier) @variable.parameter))

; Default parameters
(keyword_argument
  name: (python_identifier) @variable.parameter)

; Naming parameters on call-site
(default_parameter
  name: (python_identifier) @variable.parameter)

(typed_parameter
  (python_identifier) @variable.parameter)

(typed_default_parameter
  (python_identifier) @variable.parameter)

; Variadic parameters *args, **kwargs
(parameters
  (list_splat_pattern
    ; *args
    (python_identifier) @variable.parameter))

(parameters
  (dictionary_splat_pattern
    ; **kwargs
    (python_identifier) @variable.parameter))

; Literals
(none) @constant.builtin

[
  (true)
  (false)
] @boolean

((python_identifier) @variable.builtin
  (#any-of? @variable.builtin "self" "cls"))

(integer) @number

(float) @number.float

; Operators
[
  "?="
  "??="
  ":="
  "=+"
  ".="
  "=."
  "-"
  "-="
  ":="
  "!="
  "*"
  "**"
  "**="
  "*="
  "/"
  "//"
  "//="
  "/="
  "&"
  "&="
  "%"
  "%="
  "^"
  "^="
  "+"
  "+="
  "<"
  "<<"
  "<<="
  "<="
  "<>"
  "="
  "=="
  ">"
  ">="
  ">>"
  ">>="
  "@"
  "@="
  "|"
  "|="
  "~"
  "->"
] @operator

[
  "and"
  "in"
  "is"
  "not"
  "or"
  "is not"
  "not in"
  "del"
] @keyword.operator

; Literals
[
  (string)
  (python_string)
  "\""
] @string

(include_path) @string.special.path

[
  (escape_sequence)
  (escape_interpolation)
] @string.escape

; Punctuation
[
  "("
  ")"
  "{"
  "}"
  "["
  "]"
] @punctuation.bracket

[
  ":"
  "->"
  ";"
  "."
  ","
  (ellipsis)
] @punctuation.delimiter

(variable_expansion
  [
    "${"
    "}"
  ] @punctuation.special)

(inline_python
  [
    "${@"
    "}"
  ] @punctuation.special)

(interpolation
  "{" @punctuation.special
  "}" @punctuation.special)

(type_conversion) @function.macro

([
  (identifier)
  (python_identifier)
] @type.builtin
  (#any-of? @type.builtin
    ; https://docs.python.org/3/library/exceptions.html
    "BaseException" "Exception" "ArithmeticError" "BufferError" "LookupError" "AssertionError"
    "AttributeError" "EOFError" "FloatingPointError" "GeneratorExit" "ImportError"
    "ModuleNotFoundError" "IndexError" "KeyError" "KeyboardInterrupt" "MemoryError" "NameError"
    "NotImplementedError" "OSError" "OverflowError" "RecursionError" "ReferenceError" "RuntimeError"
    "StopIteration" "StopAsyncIteration" "SyntaxError" "IndentationError" "TabError" "SystemError"
    "SystemExit" "TypeError" "UnboundLocalError" "UnicodeError" "UnicodeEncodeError"
    "UnicodeDecodeError" "UnicodeTranslateError" "ValueError" "ZeroDivisionError" "EnvironmentError"
    "IOError" "WindowsError" "BlockingIOError" "ChildProcessError" "ConnectionError"
    "BrokenPipeError" "ConnectionAbortedError" "ConnectionRefusedError" "ConnectionResetError"
    "FileExistsError" "FileNotFoundError" "InterruptedError" "IsADirectoryError"
    "NotADirectoryError" "PermissionError" "ProcessLookupError" "TimeoutError" "Warning"
    "UserWarning" "DeprecationWarning" "PendingDeprecationWarning" "SyntaxWarning" "RuntimeWarning"
    "FutureWarning" "ImportWarning" "UnicodeWarning" "BytesWarning" "ResourceWarning"
    ; https://docs.python.org/3/library/stdtypes.html
    "bool" "int" "float" "complex" "list" "tuple" "range" "str" "bytes" "bytearray" "memoryview"
    "set" "frozenset" "dict" "type" "object"))

(comment) @comment @spell
]==],
    ["indents.scm"] = [==[
[
  (import_from_statement)
  (parenthesized_expression)
  (generator_expression)
  (list_comprehension)
  (set_comprehension)
  (dictionary_comprehension)
  (tuple_pattern)
  (list_pattern)
  (binary_operator)
  (lambda)
  (concatenated_string)
] @indent.begin

((list) @indent.align
  (#set! indent.open_delimiter "[")
  (#set! indent.close_delimiter "]"))

((dictionary) @indent.align
  (#set! indent.open_delimiter "{")
  (#set! indent.close_delimiter "}"))

((set) @indent.align
  (#set! indent.open_delimiter "{")
  (#set! indent.close_delimiter "}"))

((for_statement) @indent.begin
  (#set! indent.immediate 1))

((if_statement) @indent.begin
  (#set! indent.immediate 1))

((while_statement) @indent.begin
  (#set! indent.immediate 1))

((try_statement) @indent.begin
  (#set! indent.immediate 1))

(ERROR
  "try"
  ":" @indent.begin
  (#set! indent.immediate 1))

((python_function_definition) @indent.begin
  (#set! indent.immediate 1))

(function_definition) @indent.begin

(anonymous_python_function) @indent.begin

((with_statement) @indent.begin
  (#set! indent.immediate 1))

(if_statement
  condition: (parenthesized_expression) @indent.align
  (#set! indent.open_delimiter "(")
  (#set! indent.close_delimiter ")")
  (#set! indent.avoid_last_matching_next 1))

(while_statement
  condition: (parenthesized_expression) @indent.align
  (#set! indent.open_delimiter "(")
  (#set! indent.close_delimiter ")")
  (#set! indent.avoid_last_matching_next 1))

(ERROR
  "(" @indent.align
  (#set! indent.open_delimiter "(")
  (#set! indent.close_delimiter ")")
  .
  (_))

((argument_list) @indent.align
  (#set! indent.open_delimiter "(")
  (#set! indent.close_delimiter ")"))

((parameters) @indent.align
  (#set! indent.open_delimiter "(")
  (#set! indent.close_delimiter ")")
  (#set! indent.avoid_last_matching_next 1))

((tuple) @indent.align
  (#set! indent.open_delimiter "(")
  (#set! indent.close_delimiter ")"))

(ERROR
  "[" @indent.align
  (#set! indent.open_delimiter "[")
  (#set! indent.close_delimiter "]")
  .
  (_))

(ERROR
  "{" @indent.align
  (#set! indent.open_delimiter "{")
  (#set! indent.close_delimiter "}")
  .
  (_))

[
  (break_statement)
  (continue_statement)
] @indent.dedent

(ERROR
  (_) @indent.branch
  ":"
  .
  (#lua-match? @indent.branch "^else"))

(ERROR
  (_) @indent.branch @indent.dedent
  ":"
  .
  (#lua-match? @indent.branch "^elif"))

(parenthesized_expression
  ")" @indent.end)

(generator_expression
  ")" @indent.end)

(list_comprehension
  "]" @indent.end)

(set_comprehension
  "}" @indent.end)

(dictionary_comprehension
  "}" @indent.end)

(tuple_pattern
  ")" @indent.end)

(list_pattern
  "]" @indent.end)

(function_definition
  "}" @indent.end)

(anonymous_python_function
  "}" @indent.end)

(return_statement
  [
    (_) @indent.end
    (_
      [
        (_)
        ")"
        "}"
        "]"
      ] @indent.end .)
    (attribute
      attribute: (_) @indent.end)
    (call
      arguments: (_
        ")" @indent.end))
    "return" @indent.end
  ] .)

[
  ")"
  "]"
  "}"
  (elif_clause)
  (else_clause)
  (except_clause)
  (finally_clause)
] @indent.branch

(string) @indent.auto
]==],
    ["injections.scm"] = [==[
(call
  function: (attribute
    object: (python_identifier) @_re)
  arguments: (argument_list
    (python_string
      (string_content) @injection.content) @_string)
  (#eq? @_re "re")
  (#lua-match? @_string "^r.*")
  (#set! injection.language "regex"))

((shell_content) @injection.content
  (#set! injection.language "bash"))

((comment) @injection.content
  (#set! injection.language "comment"))
]==],
    ["locals.scm"] = [==[
; References
[
  (python_identifier)
  (identifier)
] @local.reference

; Imports
(aliased_import
  alias: (python_identifier) @local.definition.import)

(import_statement
  name: (dotted_name
    (python_identifier) @local.definition.import))

(import_from_statement
  name: (dotted_name
    (python_identifier) @local.definition.import))

; Function with parameters, defines parameters
(parameters
  (python_identifier) @local.definition.parameter)

(default_parameter
  (python_identifier) @local.definition.parameter)

(typed_parameter
  (python_identifier) @local.definition.parameter)

(typed_default_parameter
  (python_identifier) @local.definition.parameter)

; *args parameter
(parameters
  (list_splat_pattern
    (python_identifier) @local.definition.parameter))

; **kwargs parameter
(parameters
  (dictionary_splat_pattern
    (python_identifier) @local.definition.parameter))

; Function defines function and scope
((python_function_definition
  name: (python_identifier) @local.definition.function) @local.scope
  (#set! definition.function.scope "parent"))

(function_definition
  (identifier) @local.definition.function)

(anonymous_python_function
  (identifier) @local.definition.function)

; Loops
; not a scope!
(for_statement
  left: (pattern_list
    (python_identifier) @local.definition.var))

(for_statement
  left: (tuple_pattern
    (python_identifier) @local.definition.var))

(for_statement
  left: (python_identifier) @local.definition.var)

; not a scope!
;(while_statement) @local.scope
; for in list comprehension
(for_in_clause
  left: (python_identifier) @local.definition.var)

(for_in_clause
  left: (tuple_pattern
    (python_identifier) @local.definition.var))

(for_in_clause
  left: (pattern_list
    (python_identifier) @local.definition.var))

(dictionary_comprehension) @local.scope

(list_comprehension) @local.scope

(set_comprehension) @local.scope

; Assignments
(assignment
  left: (python_identifier) @local.definition.var)

(assignment
  left: (pattern_list
    (python_identifier) @local.definition.var))

(assignment
  left: (tuple_pattern
    (python_identifier) @local.definition.var))

(assignment
  left: (attribute
    (python_identifier)
    (python_identifier) @local.definition.field))

(variable_assignment
  (identifier)
  operator: [
    "="
    "?="
    "??="
    ":="
  ] @local.definition.var)

; Walrus operator  x := 1
(named_expression
  (python_identifier) @local.definition.var)

(as_pattern
  alias: (as_pattern_target) @local.definition.var)
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
