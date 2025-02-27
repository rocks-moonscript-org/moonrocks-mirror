local git_ref = 'b3710fe2723bd9b285de7f3d0c0717bebf3f17bd'
local modrev = '0.0.21'
local specrev = '1'

local repo_url = 'https://github.com/tact-lang/tree-sitter-tact'

rockspec_format = '3.0'
package = 'tree-sitter-tact'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for tact',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/tact-lang/tree-sitter-tact',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 5.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-tact-' .. 'b3710fe2723bd9b285de7f3d0c0717bebf3f17bd',
}

build = {
  type = "treesitter-parser",
  lang = "tact",
  parser = true,
  generate = false,
  generate_from_json = false,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["folds.scm"] = [==[
[
  ; import …
  (import)+
  ; (…, …)
  (parameter_list)
  (argument_list)
  ; {…, …}
  (instance_argument_list)
  ; {…; …}
  (message_body)
  (struct_body)
  (contract_body)
  (trait_body)
  (function_body)
  (block_statement)
] @fold
]==],
    ["highlights.scm"] = [==[
; variable
; --------
(identifier) @variable

; variable.builtin
; ----------------
(self) @variable.builtin

; variable.parameter
; ------------------
(parameter
  name: (identifier) @variable.parameter)

; punctuation.delimiter
; ---------------------
[
  ";"
  ","
  "."
  ":"
  "?"
] @punctuation.delimiter

; punctuation.bracket
; -------------------
[
  "("
  ")"
  "{"
  "}"
] @punctuation.bracket

; operator
; --------
[
  "-"
  "-="
  "+"
  "+="
  "*"
  "*="
  "/"
  "/="
  "%"
  "%="
  "="
  "=="
  "!"
  "!="
  "!!"
  "<"
  "<="
  "<<"
  ">"
  ">="
  ">>"
  "&"
  "|"
  "^"
  "&&"
  "||"
] @operator

; constructor
; -----------
(instance_expression
  name: (identifier) @constructor)

(initOf
  name: (identifier) @constructor)

; type
; ----
(type_identifier) @type

; type.builtin
; ------------
((identifier) @type.builtin
  (#eq? @type.builtin "SendParameters"))

(bounced_type
  "bounced" @type.builtin
  "<" @punctuation.bracket
  ">" @punctuation.bracket)

(map_type
  "map" @type.builtin
  "<" @punctuation.bracket
  ">" @punctuation.bracket)

((type_identifier) @type.builtin
  (#any-of? @type.builtin "Address" "Bool" "Builder" "Cell" "Int" "Slice" "String" "StringBuilder"))

(tlb_serialization
  "as" @keyword
  type: (identifier) @type.builtin
  (#any-of? @type.builtin
    "int8" "int16" "int32" "int64" "int128" "int256" "int257" "uint8" "uint16" "uint32" "uint64"
    "uint128" "uint256" "coins" "remaining" "bytes32" "bytes64"))

; string
; ------
(string) @string

; string.escape
; -------------
(escape_sequence) @string.escape

; string.special.path
; -------------------
(import
  library: (string) @string.special.path)

; boolean
; -------
(boolean) @boolean

; constant
; --------
(global_constant
  name: (identifier) @constant)

(storage_constant
  name: (identifier) @constant)

; constant.builtin
; ----------------
(null) @constant.builtin

((identifier) @constant.builtin
  (#any-of? @constant.builtin
    "SendBounceIfActionFail" "SendPayGasSeparately" "SendIgnoreErrors" "SendDestroyIfZero"
    "SendRemainingValue" "SendRemainingBalance" "ReserveExact" "ReserveAllExcept" "ReserveAtMost"
    "ReserveAddOriginalBalance" "ReserveInvertSign" "ReserveBounceIfActionFail"))

; property
; --------
(instance_argument
  name: (identifier) @variable.member)

(field_access_expression
  name: (identifier) @variable.member)

(field
  name: (identifier) @variable.member)

(storage_variable
  name: (identifier) @variable.member)

; number
; ------
(integer) @number

; keyword
; -------
[
  "with"
  "const"
  "let"
  ; "public" ; -- not used, but declared in grammar.ohm
  ; "extend" ; -- not used, but declared in grammar.ohm
] @keyword

; keyword.type
; ------------
[
  "contract"
  "trait"
  "struct"
  "message"
] @keyword.type

; keyword.function
; ----------------
[
  "fun"
  "native"
] @keyword.function

; keyword.operator
; ----------------
"initOf" @keyword.operator

; keyword.import
; --------------
"import" @keyword.import

; keyword.modifier
; ---------------
[
  "get"
  "mutates"
  "extends"
  "virtual"
  "override"
  "inline"
  "abstract"
] @keyword.modifier

; keyword.repeat
; --------------
(foreach_statement
  .
  (_)
  .
  (_)
  .
  "in" @keyword.repeat)

[
  "while"
  "repeat"
  "do"
  "until"
  "foreach"
] @keyword.repeat

; keyword.return
; --------------
"return" @keyword.return

; keyword.exception
; -----------------
[
  "try"
  "catch"
] @keyword.exception

; keyword.conditional
; -------------------
[
  "if"
  "else"
] @keyword.conditional

; keyword.directive.define
; ------------------------
"primitive" @keyword.directive.define

; function
; --------
(native_function
  name: (identifier) @function)

(global_function
  name: (identifier) @function)

(func_identifier) @function

; function.method
; ---------------
(init_function
  "init" @function.method)

(receive_function
  "receive" @function.method)

(bounced_function
  "bounced" @function.method)

(external_function
  "external" @function.method)

(storage_function
  name: (identifier) @function.method)

; function.call
; -------------
(static_call_expression
  name: (identifier) @function.call)

; function.method.call
; ---------------
(method_call_expression
  name: (identifier) @function.method.call)

; function.builtin
; ----------------
(static_call_expression
  name: (identifier) @function.builtin
  (#any-of? @function.builtin
    "log" "log2" "send" "sender" "require" "now" "myBalance" "myAddress" "newAddress"
    "contractAddress" "contractAddressExt" "emit" "cell" "ton" "dump" "dumpStack" "beginString"
    "beginComment" "beginTailString" "beginStringFromBuilder" "beginCell" "emptyCell" "randomInt"
    "random" "checkSignature" "checkDataSignature" "sha256" "min" "max" "abs" "pow" "pow2" "throw"
    "nativeThrowIf" "nativeThrowUnless" "getConfigParam" "nativeRandomize" "nativeRandomizeLt"
    "nativePrepareRandom" "nativeRandom" "nativeRandomInterval" "nativeReserve"))

; attribute
; ---------
[
  "@name"
  "@interface"
] @attribute

; comment
; -------
(comment) @comment @spell

((comment) @comment.documentation
  (#lua-match? @comment.documentation "^/[*][*][^*].*[*]/$"))
]==],
    ["indents.scm"] = [==[
; indent.begin       ; indent children when matching this node
; ------------
[
  ; (..., ...)
  (parameter_list)
  (argument_list)
  ; {..., ...}
  (instance_argument_list)
  ; {...; ...}
  (message_body)
  (struct_body)
  (contract_body)
  (trait_body)
  (function_body)
  (block_statement)
  ; misc.
  (binary_expression)
  (ternary_expression)
  (return_statement)
  (static_call_expression)
  (method_call_expression)
] @indent.begin

; indent.branch      ; dedent itself when matching this node
; -------------
[
  "}"
  ")"
  ">"
] @indent.branch

; indent.end         ; marks the end of indented block
; ----------
[
  "}"
  ")"
  ">"
] @indent.end

; indent.auto        ; behaves like 'autoindent' buffer option
; -----------
[
  (comment)
  (ERROR)
] @indent.auto

; indent.align       ; behaves like python aligned/hanging indent
; indent.dedent      ; dedent children when matching this node
; indent.ignore      ; do not indent in this node
; indent.zero        ; sets this node at position 0 (no indent)
]==],
    ["injections.scm"] = [==[
((comment) @injection.content
  (#set! injection.language "comment"))
]==],
    ["locals.scm"] = [==[
; Scopes       @local.scope
; -------------------------
[
  (global_function)
  (init_function)
  (bounced_function)
  (receive_function)
  (external_function)
  (storage_function)
  (block_statement)
] @local.scope

; Definitions  @local.definition
; ------------------------------
; variables
(let_statement
  name: (identifier) @local.definition.var)

; constants
(global_constant
  name: (identifier) @local.definition.constant)

(storage_constant
  name: (identifier) @local.definition.constant)

; functions
(global_function
  name: (identifier) @local.definition.function
  (#set! definition.var.scope parent))

; methods (functions off of contracts and traits)
(init_function
  "init" @local.definition.method
  (#set! definition.var.scope parent))

(bounced_function
  "bounced" @local.definition.method
  (#set! definition.var.scope parent))

(receive_function
  "receive" @local.definition.method
  (#set! definition.var.scope parent))

(external_function
  "external" @local.definition.method
  (#set! definition.var.scope parent))

(storage_function
  name: (identifier) @local.definition.method
  (#set! definition.var.scope parent))

; parameters
(parameter
  name: (identifier) @local.definition.parameter)

; user-defined types (structs and messages)
(type_identifier) @local.definition.type

; fields (of messages and structs)
(field
  name: (identifier) @local.definition.field)

; imports
(import
  (string) @local.definition.import)

; References   @local.reference
; -----------------------------
(self) @local.reference

(value_expression
  (identifier) @local.reference)

(field_access_expression
  name: (identifier) @local.reference)
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
