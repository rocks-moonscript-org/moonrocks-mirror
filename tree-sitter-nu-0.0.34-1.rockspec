local git_ref = '2a153c88d5d44d96653057c7cc14292f4e641bef'
local modrev = '0.0.34'
local specrev = '1'

local repo_url = 'https://github.com/nushell/tree-sitter-nu'

rockspec_format = '3.0'
package = 'tree-sitter-nu'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for nu',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/nushell/tree-sitter-nu',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 5.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-nu-' .. '2a153c88d5d44d96653057c7cc14292f4e641bef',
}

build = {
  type = "treesitter-parser",
  lang = "nu",
  parser = true,
  generate = false,
  generate_from_json = false,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["highlights.scm"] = [==[
; ---
; keywords
[
  "let"
  "let-env"
  "mut"
  "const"
  "hide-env"
  "source"
  "source-env"
  "overlay"
] @keyword

[
  "if"
  "else"
  "match"
] @keyword.conditional

[
  "loop"
  "while"
  "break"
  "continue"
] @keyword.repeat

[
  "def"
  "do"
] @keyword.function

"return" @keyword.return

[
  "try"
  "catch"
  "error"
] @keyword.exception

[
  "module"
  "use"
] @keyword.import

[
  "alias"
  "export-env"
  "export"
  "extern"
] @keyword.modifier

(hide_mod
  "hide" @keyword)

(decl_use
  module: (unquoted) @module)

(ctrl_for
  "for" @keyword
  "in" @keyword)

(overlay_list
  "list" @keyword.import)

(overlay_hide
  "hide" @keyword.import)

(overlay_new
  "new" @keyword.import)

(overlay_use
  "as" @keyword)

(ctrl_error
  "make" @keyword.import)

; ---
; literals
(val_number) @number

(val_duration
  unit: _ @variable.parameter)

(val_filesize
  unit: _ @variable.parameter)

(val_binary
  [
    "0b"
    "0o"
    "0x"
  ] @number
  digit: [
    "," @punctuation.delimiter
    (hex_digit) @number
  ]) @number

(val_bool) @constant.builtin

(val_nothing) @constant.builtin

(val_string) @string

arg_str: (val_string) @variable.parameter

file_path: (val_string) @variable.parameter

(val_date) @number

(inter_escape_sequence) @string.escape

(escape_sequence) @string.escape

(val_interpolated
  [
    "$\""
    "$'"
    "\""
    "'"
  ] @string)

(unescaped_interpolated_content) @string

(escaped_interpolated_content) @string

(expr_interpolated
  [
    "("
    ")"
  ] @variable.parameter)

; ---
; operators
[
  "+"
  "-"
  "*"
  "/"
  "//"
  "++"
  "**"
  "=="
  "!="
  "<"
  "<="
  ">"
  ">="
  "=~"
  "!~"
  "="
  "+="
  "-="
  "*="
  "/="
  "++="
  "-"
  ".."
  "..="
  "..<"
  "=>"
  "="
  "|"
  "o>"
  "out>"
  "e>"
  "err>"
  "e+o>"
  "err+out>"
  "o+e>"
  "out+err>"
  "o>>"
  "out>>"
  "e>>"
  "err>>"
  "e+o>>"
  "err+out>>"
  "o+e>>"
  "out+err>>"
  "e>|"
  "err>|"
  "e+o>|"
  "err+out>|"
  "o+e>|"
  "out+err>|"
] @operator

[
  "mod"
  "and"
  "or"
  "xor"
  "bit-or"
  "bit-xor"
  "bit-and"
  "bit-shl"
  "bit-shr"
  "in"
  "not-in"
  "has"
  "not-has"
  "starts-with"
  "ends-with"
  "not"
] @keyword.operator

; ---
; punctuation
[
  ","
  ";"
  ":"
] @punctuation.delimiter

(param_long_flag
  "--" @punctuation.delimiter)

(long_flag
  "--" @punctuation.delimiter)

(long_flag
  "=" @punctuation.delimiter)

(short_flag
  "-" @punctuation.delimiter)

(short_flag
  "=" @punctuation.delimiter)

(param_short_flag
  "-" @punctuation.delimiter)

(param_rest
  "..." @punctuation.delimiter)

(param_value
  "=" @punctuation.delimiter)

(param_cmd
  "@" @punctuation.delimiter)

(param_opt
  "?" @punctuation.delimiter)

(returns
  "->" @punctuation.delimiter)

[
  "("
  ")"
  "{"
  "}"
  "["
  "]"
  "...["
  "...("
  "...{"
] @punctuation.bracket

(parameter_pipes
  "|" @punctuation.bracket)

key: (identifier) @property

; ---
; identifiers
(param_rest
  name: (_) @variable.parameter)

(param_opt
  name: (_) @variable.parameter)

(parameter
  param_name: (_) @variable.parameter)

(param_cmd
  (cmd_identifier) @string)

(param_long_flag
  (long_flag_identifier) @attribute)

(param_short_flag
  (param_short_flag_identifier) @attribute)

(short_flag
  (short_flag_identifier) @attribute)

(long_flag_identifier) @attribute

(scope_pattern
  (wild_card) @function)

(cmd_identifier) @function

; generated with Nu 0.93.0
; > help commands
;   | filter { $in.command_type == builtin and $in.category != core }
;   | each {$'"($in.name | split row " " | $in.0)"'}
;   | uniq
;   | str join ' '
(command
  head: [
    (cmd_identifier) @function.builtin
    (#any-of? @function.builtin
      "all" "ansi" "any" "append" "ast" "bits" "bytes" "cal" "cd" "char" "clear" "collect" "columns"
      "compact" "complete" "config" "cp" "date" "debug" "decode" "default" "detect" "dfr" "drop"
      "du" "each" "encode" "enumerate" "every" "exec" "exit" "explain" "explore" "export-env" "fill"
      "filter" "find" "first" "flatten" "fmt" "format" "from" "generate" "get" "glob" "grid" "group"
      "group-by" "hash" "headers" "histogram" "history" "http" "input" "insert" "inspect"
      "interleave" "into" "is-empty" "is-not-empty" "is-terminal" "items" "join" "keybindings"
      "kill" "last" "length" "let-env" "lines" "load-env" "ls" "math" "merge" "metadata" "mkdir"
      "mktemp" "move" "mv" "nu-check" "nu-highlight" "open" "panic" "par-each" "parse" "path"
      "plugin" "port" "prepend" "print" "ps" "query" "random" "range" "reduce" "reject" "rename"
      "reverse" "rm" "roll" "rotate" "run-external" "save" "schema" "select" "seq" "shuffle" "skip"
      "sleep" "sort" "sort-by" "split" "split-by" "start" "stor" "str" "sys" "table" "take" "tee"
      "term" "timeit" "to" "touch" "transpose" "tutor" "ulimit" "uname" "uniq" "uniq-by" "update"
      "upsert" "url" "values" "view" "watch" "where" "which" "whoami" "window" "with-env" "wrap"
      "zip")
  ])

(command
  "^" @punctuation.delimiter
  head: (_) @function)

"where" @function.builtin

(path
  [
    "."
    "?"
  ] @punctuation.delimiter) @variable.parameter

(stmt_let
  (identifier) @variable)

(val_variable
  "$"? @punctuation.special
  "...$"? @punctuation.special
  [
    (identifier) @variable
    "in" @variable.parameter.builtin
    "nu" @module
    "env" @constant
  ]) @none

; ---
; types
(flat_type) @type

(list_type
  "list" @type.builtin
  [
    "<"
    ">"
  ] @punctuation.bracket)

(collection_type
  [
    "record"
    "table"
  ] @type.builtin
  "<" @punctuation.bracket
  key: (_) @variable.parameter
  [
    ","
    ":"
  ] @punctuation.delimiter
  ">" @punctuation.bracket)

(shebang) @keyword.directive

(comment) @comment @spell

((comment)+ @comment.documentation @spell
  .
  (decl_def))

(parameter
  (comment) @comment.documentation @spell)
]==],
    ["indents.scm"] = [==[
; Forked from https://github.com/nushell/tree-sitter-nu
; Copyright (c) 2019 - 2022 The Nushell Project Developers
; Licensed under the MIT license.
[
  (expr_parenthesized)
  (parameter_bracks)
  (val_record)
  (val_list)
  (val_closure)
  (val_table)
  (block)
] @indent.begin

[
  "}"
  "]"
  ")"
] @indent.end

[
  "}"
  "]"
  ")"
] @indent.branch

(comment) @indent.auto
]==],
    ["injections.scm"] = [==[
; Forked from https://github.com/nushell/tree-sitter-nu
; Copyright (c) 2019 - 2022 The Nushell Project Developers
; Licensed under the MIT license.
((comment) @injection.content
  (#set! injection.language "comment"))
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
