local git_ref = '4cb8ccf74f44cf9d648d02298de6e9ba515d7c56'
local modrev = '0.0.46'
local specrev = '1'

local repo_url = 'https://github.com/cstrahan/tree-sitter-nix'

rockspec_format = '3.0'
package = 'tree-sitter-nix'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for nix',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/cstrahan/tree-sitter-nix',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 5.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-nix-' .. '4cb8ccf74f44cf9d648d02298de6e9ba515d7c56',
}

build = {
  type = "treesitter-parser",
  lang = "nix",
  parser = true,
  generate = false,
  generate_from_json = false,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["folds.scm"] = [==[
; Nix doesn't really have blocks, so just guess what people might want folds for
[
  (if_expression)
  (with_expression)
  (let_expression)
  (function_expression)
  (attrset_expression)
  (rec_attrset_expression)
  (list_expression)
  (indented_string_expression)
] @fold
]==],
    ["highlights.scm"] = [==[
; basic keywords
[
  "assert"
  "in"
  "inherit"
  "let"
  "rec"
  "with"
] @keyword

; if/then/else
[
  "if"
  "then"
  "else"
] @keyword.conditional

; field access default (`a.b or c`)
"or" @keyword.operator

; comments
(comment) @comment @spell

; strings
(string_fragment) @string

(string_expression
  "\"" @string)

(indented_string_expression
  "''" @string)

; paths and URLs
[
  (path_expression)
  (hpath_expression)
  (spath_expression)
] @string.special.path

(uri_expression) @string.special.url

; escape sequences
(escape_sequence) @string.escape

; delimiters
[
  "."
  ";"
  ":"
  ","
] @punctuation.delimiter

; brackets
[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket

; `?` in `{ x ? y }:`, used to set defaults for named function arguments
(formal
  name: (identifier) @variable.parameter
  "?"? @operator)

; `...` in `{ ... }`, used to ignore unknown named function arguments (see above)
(ellipses) @variable.parameter.builtin

; universal is the parameter of the function expression
; `:` in `x: y`, used to separate function argument from body (see above)
(function_expression
  universal: (identifier) @variable.parameter
  ":" @punctuation.special)

; function calls
(apply_expression
  function: (variable_expression
    name: (identifier) @function.call))

; basic identifiers
(variable_expression) @variable

(variable_expression
  name: (identifier) @keyword.import
  (#eq? @keyword.import "import"))

(variable_expression
  name: (identifier) @boolean
  (#any-of? @boolean "true" "false"))

; builtin functions (with builtins prefix)
(select_expression
  expression: (variable_expression
    name: (identifier) @_id)
  attrpath: (attrpath
    attr: (identifier) @function.builtin)
  (#eq? @_id "builtins"))

; builtin functions (without builtins prefix)
(variable_expression
  name: (identifier) @function.builtin
  (#any-of? @function.builtin
    ; nix eval --impure --expr 'with builtins; filter (x: !(elem x [ "abort" "import" "throw" ]) && isFunction builtins.${x}) (attrNames builtins)'
    "add" "addErrorContext" "all" "any" "appendContext" "attrNames" "attrValues" "baseNameOf"
    "bitAnd" "bitOr" "bitXor" "break" "catAttrs" "ceil" "compareVersions" "concatLists" "concatMap"
    "concatStringsSep" "deepSeq" "derivation" "derivationStrict" "dirOf" "div" "elem" "elemAt"
    "fetchGit" "fetchMercurial" "fetchTarball" "fetchTree" "fetchurl" "filter" "filterSource"
    "findFile" "floor" "foldl'" "fromJSON" "fromTOML" "functionArgs" "genList" "genericClosure"
    "getAttr" "getContext" "getEnv" "getFlake" "groupBy" "hasAttr" "hasContext" "hashFile"
    "hashString" "head" "intersectAttrs" "isAttrs" "isBool" "isFloat" "isFunction" "isInt" "isList"
    "isNull" "isPath" "isString" "length" "lessThan" "listToAttrs" "map" "mapAttrs" "match" "mul"
    "parseDrvName" "partition" "path" "pathExists" "placeholder" "readDir" "readFile" "removeAttrs"
    "replaceStrings" "scopedImport" "seq" "sort" "split" "splitVersion" "storePath" "stringLength"
    "sub" "substring" "tail" "toFile" "toJSON" "toPath" "toString" "toXML" "trace" "traceVerbose"
    "tryEval" "typeOf" "unsafeDiscardOutputDependency" "unsafeDiscardStringContext"
    "unsafeGetAttrPos" "zipAttrsWith"
    ; primops, `__<tab>` in `nix repl`
    "__add" "__filter" "__isFunction" "__split" "__addErrorContext" "__filterSource" "__isInt"
    "__splitVersion" "__all" "__findFile" "__isList" "__storeDir" "__any" "__floor" "__isPath"
    "__storePath" "__appendContext" "__foldl'" "__isString" "__stringLength" "__attrNames"
    "__fromJSON" "__langVersion" "__sub" "__attrValues" "__functionArgs" "__length" "__substring"
    "__bitAnd" "__genList" "__lessThan" "__tail" "__bitOr" "__genericClosure" "__listToAttrs"
    "__toFile" "__bitXor" "__getAttr" "__mapAttrs" "__toJSON" "__catAttrs" "__getContext" "__match"
    "__toPath" "__ceil" "__getEnv" "__mul" "__toXML" "__compareVersions" "__getFlake" "__nixPath"
    "__trace" "__concatLists" "__groupBy" "__nixVersion" "__traceVerbose" "__concatMap" "__hasAttr"
    "__parseDrvName" "__tryEval" "__concatStringsSep" "__hasContext" "__partition" "__typeOf"
    "__currentSystem" "__hashFile" "__path" "__unsafeDiscardOutputDependency" "__currentTime"
    "__hashString" "__pathExists" "__unsafeDiscardStringContext" "__deepSeq" "__head" "__readDir"
    "__unsafeGetAttrPos" "__div" "__intersectAttrs" "__readFile" "__zipAttrsWith" "__elem"
    "__isAttrs" "__replaceStrings" "__elemAt" "__isBool" "__seq" "__fetchurl" "__isFloat" "__sort"))

; constants
(variable_expression
  name: (identifier) @constant.builtin
  (#any-of? @constant.builtin
    ; nix eval --impure --expr 'with builtins; filter (x: !(isFunction builtins.${x} || isBool builtins.${x})) (attrNames builtins)'
    "builtins" "currentSystem" "currentTime" "langVersion" "nixPath" "nixVersion" "null" "storeDir"))

; string interpolation (this was very annoying to get working properly)
(interpolation
  "${" @punctuation.special
  (_)
  "}" @punctuation.special) @none

(select_expression
  expression: (_) @_expr
  attrpath: (attrpath
    attr: (identifier) @variable.member)
  (#not-eq? @_expr "builtins"))

(attrset_expression
  (binding_set
    (binding
      .
      (attrpath
        (identifier) @variable.member))))

(rec_attrset_expression
  (binding_set
    (binding
      .
      (attrpath
        (identifier) @variable.member))))

; function definition
(binding
  attrpath: (attrpath
    attr: (identifier) @function)
  expression: (function_expression))

; unary operators
(unary_expression
  operator: _ @operator)

; binary operators
(binary_expression
  operator: _ @operator)

[
  "="
  "@"
  "?"
] @operator

; integers, also highlight a unary -
[
  (unary_expression
    "-"
    (integer_expression))
  (integer_expression)
] @number

; floats, also highlight a unary -
[
  (unary_expression
    "-"
    (float_expression))
  (float_expression)
] @number.float

; exceptions
(variable_expression
  name: (identifier) @keyword.exception
  (#any-of? @keyword.exception "abort" "throw"))
]==],
    ["indents.scm"] = [==[
[
  (list_expression)
  (indented_string_expression)
  (let_expression)
  (if_expression)
  (binding)
  (parenthesized_expression)
] @indent.begin

((attrset_expression) @indent.begin
  (#not-has-parent? @indent.begin if_expression))

((rec_attrset_expression) @indent.begin
  (#not-has-parent? @indent.begin if_expression))

((binding
  "=" @indent.begin)
  (#set! indent.immediate 1))

(binding
  ";" @indent.end)

(parenthesized_expression
  ")" @indent.branch @indent.end)

(attrset_expression
  "}" @indent.branch @indent.end)

(rec_attrset_expression
  "}" @indent.branch @indent.end)

(list_expression
  "]" @indent.branch @indent.dedent)

(indented_string_expression
  "''" @indent.branch @indent.end .)

[
  "else"
  "in"
] @indent.branch

(let_expression
  body: (_) @indent.end @indent.dedent)

(string_fragment) @indent.ignore @indent.auto

(if_expression
  condition: (_) @indent.auto)

alternative: (if_expression) @indent.dedent

(interpolation) @indent.begin @indent.dedent

(interpolation
  "}" @indent.end @indent.branch)

(ERROR
  "then" @indent.begin)

(ERROR
  "then"
  .
  (formals) @indent.begin)

(ERROR
  "then"
  .
  (formals
    "}" @indent.branch @indent.end))

(ERROR
  "let") @indent.begin

(comment) @indent.ignore
]==],
    ["injections.scm"] = [==[
((comment) @injection.content
  (#set! injection.language "comment"))

((comment) @injection.language
  . ; this is to make sure only adjacent comments are accounted for the injections
  [
    (string_expression
      (string_fragment) @injection.content)
    (indented_string_expression
      (string_fragment) @injection.content)
  ]
  (#gsub! @injection.language "/%*%s*([%w%p]+)%s*%*/" "%1")
  (#set! injection.combined))

; #-style Comments
((comment) @injection.language
  . ; this is to make sure only adjacent comments are accounted for the injections
  [
    (string_expression
      (string_fragment) @injection.content)
    (indented_string_expression
      (string_fragment) @injection.content)
  ]
  (#gsub! @injection.language "#%s*([%w%p]+)%s*" "%1")
  (#set! injection.combined))

(apply_expression
  function: (_) @_func
  argument: [
    (string_expression
      ((string_fragment) @injection.content
        (#set! injection.language "regex")))
    (indented_string_expression
      ((string_fragment) @injection.content
        (#set! injection.language "regex")))
  ]
  (#match? @_func "(^|\\.)match$")
  (#set! injection.combined))

(binding
  attrpath: (attrpath
    (identifier) @_path)
  expression: [
    (string_expression
      ((string_fragment) @injection.content
        (#set! injection.language "bash")))
    (indented_string_expression
      ((string_fragment) @injection.content
        (#set! injection.language "bash")))
  ]
  (#match? @_path "(^\\w+(Phase|Hook|Check)|(pre|post)[A-Z]\\w+|script)$"))

(apply_expression
  function: (_) @_func
  argument: (_
    (_)*
    (_
      (_)*
      (binding
        attrpath: (attrpath
          (identifier) @_path)
        expression: [
          (string_expression
            ((string_fragment) @injection.content
              (#set! injection.language "bash")))
          (indented_string_expression
            ((string_fragment) @injection.content
              (#set! injection.language "bash")))
        ])))
  (#match? @_func "(^|\\.)writeShellApplication$")
  (#match? @_path "^text$")
  (#set! injection.combined))

(apply_expression
  function: (apply_expression
    function: (apply_expression
      function: (_) @_func))
  argument: [
    (string_expression
      ((string_fragment) @injection.content
        (#set! injection.language "bash")))
    (indented_string_expression
      ((string_fragment) @injection.content
        (#set! injection.language "bash")))
  ]
  (#match? @_func "(^|\\.)runCommand((No)?CC)?(Local)?$")
  (#set! injection.combined))

((apply_expression
  function: (apply_expression
    function: (_) @_func)
  argument: [
    (string_expression
      ((string_fragment) @injection.content
        (#set! injection.language "bash")))
    (indented_string_expression
      ((string_fragment) @injection.content
        (#set! injection.language "bash")))
  ])
  (#match? @_func "(^|\\.)write(Bash|Dash|ShellScript)(Bin)?$")
  (#set! injection.combined))

((apply_expression
  function: (apply_expression
    function: (_) @_func)
  argument: [
    (string_expression
      ((string_fragment) @injection.content
        (#set! injection.language "fish")))
    (indented_string_expression
      ((string_fragment) @injection.content
        (#set! injection.language "fish")))
  ])
  (#match? @_func "(^|\\.)writeFish(Bin)?$")
  (#set! injection.combined))

((apply_expression
  function: (apply_expression
    function: (apply_expression
      function: (_) @_func))
  argument: [
    (string_expression
      ((string_fragment) @injection.content
        (#set! injection.language "haskell")))
    (indented_string_expression
      ((string_fragment) @injection.content
        (#set! injection.language "haskell")))
  ])
  (#match? @_func "(^|\\.)writeHaskell(Bin)?$")
  (#set! injection.combined))

((apply_expression
  function: (apply_expression
    function: (apply_expression
      function: (_) @_func))
  argument: [
    (string_expression
      ((string_fragment) @injection.content
        (#set! injection.language "javascript")))
    (indented_string_expression
      ((string_fragment) @injection.content
        (#set! injection.language "javascript")))
  ])
  (#match? @_func "(^|\\.)writeJS(Bin)?$")
  (#set! injection.combined))

((apply_expression
  function: (apply_expression
    function: (apply_expression
      function: (_) @_func))
  argument: [
    (string_expression
      ((string_fragment) @injection.content
        (#set! injection.language "perl")))
    (indented_string_expression
      ((string_fragment) @injection.content
        (#set! injection.language "perl")))
  ])
  (#match? @_func "(^|\\.)writePerl(Bin)?$")
  (#set! injection.combined))

((apply_expression
  function: (apply_expression
    function: (apply_expression
      function: (_) @_func))
  argument: [
    (string_expression
      ((string_fragment) @injection.content
        (#set! injection.language "python")))
    (indented_string_expression
      ((string_fragment) @injection.content
        (#set! injection.language "python")))
  ])
  (#match? @_func "(^|\\.)write(PyPy|Python)[23](Bin)?$")
  (#set! injection.combined))

((apply_expression
  function: (apply_expression
    function: (apply_expression
      function: (_) @_func))
  argument: [
    (string_expression
      ((string_fragment) @injection.content
        (#set! injection.language "rust")))
    (indented_string_expression
      ((string_fragment) @injection.content
        (#set! injection.language "rust")))
  ])
  (#match? @_func "(^|\\.)writeRust(Bin)?$")
  (#set! injection.combined))

; (nixosTest) testScript
((binding
  attrpath: (attrpath) @_attr_name
  (#eq? @_attr_name "nodes"))
  (binding
    attrpath: (attrpath) @_func_name
    (#eq? @_func_name "testScript")
    (_
      (string_fragment) @injection.content
      (#set! injection.language "python")))
  (#set! injection.combined))

; home-manager Neovim plugin config
(attrset_expression
  (binding_set
    (binding
      attrpath: (attrpath) @_ty_attr
      (_
        (string_fragment) @_ty)
      (#eq? @_ty_attr "type")
      (#eq? @_ty "lua"))
    (binding
      attrpath: (attrpath) @_cfg_attr
      (_
        (string_fragment) @injection.content
        (#set! injection.language "lua"))
      (#eq? @_cfg_attr "config")))
  (#set! injection.combined))
]==],
    ["locals.scm"] = [==[
; let bindings
(let_expression
  (binding_set
    (binding
      .
      (attrpath) @local.definition.var))) @local.scope

; rec attrsets
(rec_attrset_expression
  (binding_set
    (binding
      .
      (attrpath) @local.definition.field))) @local.scope

; functions and parameters
(function_expression
  .
  [
    (identifier) @local.definition.parameter
    (formals
      (formal
        .
        (identifier) @local.definition.parameter))
  ]) @local.scope

((formals)
  "@"
  (identifier) @local.definition.parameter) ; I couldn't get this to work properly inside the (function)

(variable_expression
  (identifier) @local.reference)

(inherited_attrs
  attr: (identifier) @local.reference)
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
