local git_ref = '4a6272ad32b8d9d41996644190b2b2874cbe7882'
local modrev = '0.0.40'
local specrev = '1'

local repo_url = 'https://github.com/tree-sitter-perl/tree-sitter-perl'

rockspec_format = '3.0'
package = 'tree-sitter-perl'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for perl',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/tree-sitter-perl/tree-sitter-perl',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 5.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-perl-' .. '4a6272ad32b8d9d41996644190b2b2874cbe7882',
}

build = {
  type = "treesitter-parser",
  lang = "perl",
  parser = true,
  generate = false,
  generate_from_json = true,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["folds.scm"] = [==[
(comment)+ @fold

(pod) @fold

; fold the block-typed package and class statements only
(package_statement
  (block)) @fold

(class_statement
  (block)) @fold

[
  (subroutine_declaration_statement)
  (method_declaration_statement)
  (conditional_statement)
  (loop_statement)
  (for_statement)
  (cstyle_for_statement)
  (block_statement)
  (defer_statement)
  (phaser_statement)
] @fold

(try_statement
  (block) @fold)

(eval_expression
  (block) @fold)

(anonymous_subroutine_expression) @fold

; perhaps folks want to fold these too?
[
  (anonymous_array_expression)
  (anonymous_hash_expression)
] @fold
]==],
    ["highlights.scm"] = [==[
((source_file
  .
  (comment) @keyword.directive @nospell)
  (#lua-match? @keyword.directive "^#!/"))

[
  "use"
  "no"
  "require"
] @keyword.import

[
  "if"
  "elsif"
  "unless"
  "else"
] @keyword.conditional

(conditional_expression
  [
    "?"
    ":"
  ] @keyword.conditional.ternary)

[
  "while"
  "until"
  "for"
  "foreach"
] @keyword.repeat

("continue" @keyword.repeat
  (block))

[
  "try"
  "catch"
  "finally"
] @keyword.exception

"return" @keyword.return

[
  "sub"
  "method"
] @keyword.function

[
  "async"
  "await"
] @keyword.coroutine

[
  "map"
  "grep"
  "sort"
] @function.builtin

[
  "package"
  "class"
  "role"
] @keyword.import

[
  "defer"
  "do"
  "eval"
  "my"
  "our"
  "local"
  "dynamically"
  "state"
  "field"
  "last"
  "next"
  "redo"
  "goto"
  "undef"
] @keyword

(_
  operator: _ @operator)

"\\" @operator

(yadayada) @keyword.exception

(phaser_statement
  phase: _ @keyword)

(class_phaser_statement
  phase: _ @keyword)

[
  "or"
  "xor"
  "and"
  "eq"
  "equ"
  "eqr"
  "ne"
  "cmp"
  "lt"
  "le"
  "ge"
  "gt"
  "isa"
] @keyword.operator

(eof_marker) @keyword.directive

(data_section) @comment

(pod) @none

[
  (number)
  (version)
] @number

(boolean) @boolean

[
  (string_literal)
  (interpolated_string_literal)
  (quoted_word_list)
  (command_string)
  (heredoc_content)
  (replacement)
  (transliteration_content)
] @string

[
  (heredoc_token)
  (command_heredoc_token)
  (heredoc_end)
] @label

[
  (escape_sequence)
  (escaped_delimiter)
] @string.escape

(_
  modifiers: _ @character.special)

[
  (quoted_regexp)
  (match_regexp)
  (regexp_content)
] @string.regexp

(autoquoted_bareword) @string.special

(use_statement
  (package) @type)

(package_statement
  (package) @type)

(class_statement
  (package) @type)

(require_expression
  (bareword) @type)

(subroutine_declaration_statement
  name: (bareword) @function)

(method_declaration_statement
  name: (bareword) @function)

(attribute_name) @attribute

(attribute_value) @string

(label) @label

(statement_label
  label: _ @label)

(relational_expression
  operator: "isa"
  right: (bareword) @type)

(function_call_expression
  (function) @function.call)

(method_call_expression
  (method) @function.method.call)

(method_call_expression
  invocant: (bareword) @type)

(func0op_call_expression
  function: _ @function.builtin)

(func1op_call_expression
  function: _ @function.builtin)

; this was a regex for the CLI
([
  (function)
  (expression_statement
    (bareword))
] @function.builtin
  (#any-of? @function.builtin
    "accept" "atan2" "bind" "binmode" "bless" "crypt" "chmod" "chown" "connect" "die" "dbmopen"
    "exec" "fcntl" "flock" "formline" "getpriority" "getprotobynumber" "gethostbyaddr"
    "getnetbyaddr" "getservbyname" "getservbyport" "getsockopt" "glob" "index" "ioctl" "join" "kill"
    "link" "listen" "mkdir" "msgctl" "msgget" "msgrcv" "msgsend" "open" "opendir" "print" "printf"
    "push" "pack" "pipe" "return" "rename" "rindex" "read" "recv" "reverse" "say" "select" "seek"
    "semctl" "semget" "semop" "send" "setpgrp" "setpriority" "seekdir" "setsockopt" "shmctl"
    "shmread" "shmwrite" "shutdown" "socket" "socketpair" "split" "sprintf" "splice" "substr"
    "system" "symlink" "syscall" "sysopen" "sysseek" "sysread" "syswrite" "tie" "truncate" "unlink"
    "unpack" "utime" "unshift" "vec" "warn" "waitpid"))

(function) @function

(_
  "{" @punctuation.special
  (varname)
  "}" @punctuation.special)

(varname
  (block
    "{" @punctuation.special
    "}" @punctuation.special))

([
  (varname)
  (filehandle)
] @variable.builtin
  (#any-of? @variable.builtin
    "ENV" "ARGV" "INC" "ARGVOUT" "SIG" "STDIN" "STDOUT" "STDERR" "a" "b" "_"))

((varname) @variable.builtin
  ; highlights all the reserved ^ vars like ${^THINGS}
  (#lua-match? @variable.builtin "%^"))

((varname) @variable.builtin
  ; highlights punc vars and also numeric only like $11
  (#lua-match? @variable.builtin "^%A+$"))

(scalar) @variable

(scalar_deref_expression
  [
    "$"
    "*"
  ] @variable)

[
  (array)
  (arraylen)
] @variable

(array_deref_expression
  [
    "@"
    "*"
  ] @variable)

(hash) @variable

(hash_deref_expression
  [
    "%"
    "*"
  ] @variable)

(array_element_expression
  array: (_) @variable)

(slice_expression
  array: (_) @variable)

(keyval_expression
  array: (_) @variable)

(hash_element_expression
  hash: (_) @variable)

(slice_expression
  hash: (_) @variable)

(keyval_expression
  hash: (_) @variable)

(comment) @comment @spell

[
  "=>"
  ","
  ";"
  "->"
] @punctuation.delimiter

([
  "["
  "]"
  "{"
  "}"
  "("
  ")"
] @punctuation.bracket
  ; priority hack so nvim + ts-cli behave the same
  (#set! priority 90))
]==],
    ["injections.scm"] = [==[
; an injections.scm file for nvim-treesitter
((comment) @injection.content
  (#set! injection.language "comment"))

((pod) @injection.content
  (#set! injection.language "pod"))

((substitution_regexp
  (replacement) @injection.content
  (substitution_regexp_modifiers) @_modifiers)
  ; match if there's a single `e` in the modifiers list
  (#lua-match? @_modifiers "e")
  (#not-lua-match? @_modifiers "e.*e")
  (#set! injection.language "perl"))
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
