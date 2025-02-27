local git_ref = 'ebe2ab2f642eda2072c68c8de02e83973c26f33c'
local modrev = '0.0.30'
local specrev = '1'

local repo_url = 'https://github.com/airbus-cert/tree-sitter-powershell'

rockspec_format = '3.0'
package = 'tree-sitter-powershell'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for powershell',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/airbus-cert/tree-sitter-powershell',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 5.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-powershell-' .. 'ebe2ab2f642eda2072c68c8de02e83973c26f33c',
}

build = {
  type = "treesitter-parser",
  lang = "powershell",
  parser = true,
  generate = false,
  generate_from_json = false,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["folds.scm"] = [==[
[
  (expandable_here_string_literal)
  (verbatim_here_string_characters)
  (function_statement)
  (param_block)
  (script_block_expression)
  (statement_block)
  (switch_body)
  (array_expression)
  (hash_literal_expression)
  (class_statement)
  (class_method_definition)
] @fold
]==],
    ["highlights.scm"] = [==[
; Punctuation
;------------
[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket

(hash_literal_expression
  [
    "@{"
    "}"
  ] @punctuation.special)

(array_expression
  [
    "@("
    ")"
  ] @punctuation.special)

[
  "."
  "::"
  ","
  ";"
  (empty_statement)
  (command_argument_sep)
] @punctuation.delimiter

; Keywords
;---------
[
  "if"
  "elseif"
  "else"
  "switch"
] @keyword.conditional

[
  "foreach"
  "for"
  "while"
  "do"
  "until"
  "in"
  "break"
  "continue"
] @keyword.repeat

[
  "function"
  "filter"
  "workflow"
  "exit"
  "trap"
  "param"
  "inlinescript"
] @keyword.function

"return" @keyword.return

[
  "class"
  "enum"
] @keyword.type

[
  "data"
  (class_attribute)
] @keyword.modifier

[
  "throw"
  "try"
  "catch"
  "finally"
] @keyword.exception

[
  "parallel"
  "sequence"
] @keyword.coroutine

[
  "param"
  "dynamicparam"
  "begin"
  "process"
  "end"
] @keyword

; Operators
;----------
[
  "-and"
  "-or"
  "-xor"
  "-band"
  "-bor"
  "-bxor"
  "+"
  "-"
  "/"
  "\\"
  "%"
  "*"
  ".."
  "-not"
  "-bnot"
  "!"
  "="
  "|"
  (pre_increment_expression)
  (pre_decrement_expression)
  (post_increment_expression)
  (post_decrement_expression)
  (comparison_operator)
  (assignement_operator)
] @operator

; Generic types
;--------------
(string_literal) @string

(integer_literal) @number

(real_literal) @number.float

(variable) @variable

((variable) @variable.builtin
  (#any-of? @variable.builtin
    "$$" "$?" "$^" "$_" "$args" "$ConsoleFileName" "$EnabledExperimentalFeatures" "$Error" "$Event"
    "$EventArgs" "$EventSubscriber" "$ExecutionContext" "$false" "$foreach" "$HOME" "$Host" "$input"
    "$IsCoreCLR" "$IsLinux" "$IsMacOS" "$IsWindows" "$LASTEXITCODE" "$Matches" "$MyInvocation"
    "$NestedPromptLevel" "$null" "$PID" "$PROFILE" "$PSBoundParameters" "$PSCmdlet" "$PSCommandPath"
    "$PSCulture" "$PSDebugContext" "$PSEdition" "$PSHOME" "$PSItem" "$PSScriptRoot" "$PSSenderInfo"
    "$PSUICulture" "$PSVersionTable" "$PWD" "$Sender" "ShellId" "$StackTrace" "$switch" "$this"
    "$true"))

((variable) @variable.builtin
  (#lua-match? @variable.builtin "^\$env:"))

(data_name
  (simple_name) @constant)

(comment) @comment @spell

((program
  .
  (comment) @keyword.directive)
  (#lua-match? @keyword.directive "^#!/"))

; Booleans
;---------
([
  (generic_token)
  (command_name)
  (variable)
  (command)
] @boolean
  (#any-of? @boolean "True" "False" "$true" "$false"))

; switch -regex
;--------------
(switch_statement
  (switch_parameters
    (switch_parameter) @_parameter)
  (switch_body
    (switch_clauses
      (switch_clause
        (switch_clause_condition
          (string_literal) @string.regexp))))
  (#eq? @_parameter "-regex")
  (#offset! @string.regexp 0 1 0 -1))

; Multiline strings
;------------------
([
  (verbatim_here_string_characters)
  (expandable_here_string_literal)
] @markup.raw.block
  (#offset! @markup.raw.block 0 2 0 -2))

; Type references and definitions
;--------------------------------
(type_spec
  (type_name) @type)

(class_statement
  (simple_name) @type)

(type_spec
  (type_name) @type.builtin
  (#any-of? @type.builtin
    "bool" "Boolean" "System.Boolean" "char" "Char" "System.Char" "string" "String" "System.String"
    "int" "Int32" "System.Int32" "long" "Int64" "System.Int64" "byte" "Byte" "System.Byte" "float"
    "Single" "System.Single" "double" "Double" "System.Double" "decimal" "Decimal" "System.Decimal"
    "array" "Array" "System.Array" "regex" "Regex" "System.Text.RegularExpressions.Regex" "ref"
    "Management.Automation.PSReference" "System.Management.Automation.PSReference" "scriptblock"
    "Management.Automation.ScriptBlock" "System.Management.Automation.ScriptBlock" "datetime"
    "DateTime" "System.DateTime" "enum" "Enum" "System.Enum" "IO.DirectoryInfo"
    "System.IO.DirectoryInfo" "IO.FileAttributes" "System.IO.FileAttributes" "IO.FileInfo"
    "System.IO.FileInfo" "IO.Path" "System.IO.Path" "Text.RegularExpressions.RegexOptions"
    "System.Text.RegularExpressions.RegexOptions" "Math" "System.Math" "PSObject" "System.PSObject"
    "Object" "System.Object" "ValueType" "System.ValueType" "Hashtable"
    "System.Collections.Hashtable" "Collections.Stack" "System.Collections.Generic.Stack"
    "Collections.Dictionary" "System.Collections.Dictionary" "Collections.DictionaryEntry"
    "System.Collections.DictionaryEntry" "Collections.ArrayList" "System.Collections.ArrayList"
    "Management.Automation.SwitchParameter" "System.Management.Automation.SwitchParameter"
    "Management.Automation.ActionPreference" "System.Management.Automation.ActionPreference"
    "Management.Automation.ConfirmImpact" "System.Management.Automation.ConfirmImpact"
    "Management.Automation.CommandInfo" "System.Management.Automation.CommandInfo"
    "Management.Automation.ProviderInfo" "System.Management.Automation.ProviderInfo"
    "Management.Automation.PSDriveInfo" "System.Management.Automation.PSDriveInfo"
    "Management.Automation.PSVariable" "System.Management.Automation.PSVariable"
    "Management.Automation.AliasInfo" "System.Management.Automation.AliasInfo"
    "Management.Automation.PathInfo" "System.Management.Automation.PathInfo"
    "Management.Automation.PathInfoStack" "System.Management.Automation.PathInfoStack"
    "Management.Automation.ApplicationInfo" "System.Management.Automation.ApplicationInfo"
    "Management.Automation.CmdletInfo" "System.Management.Automation.CmdletInfo"
    "Management.Automation.ExternalScriptInfo" "System.Management.Automation.ExternalScriptInfo"
    "Management.Automation.FunctionInfo" "System.Management.Automation.FunctionInfo"
    "Management.Automation.CommandTypes" "System.Management.CommandTypes"
    "Management.Automation.ScopedItemOptions" "System.Management.Automation.ScopedItemOptions"
    "Management.Automation.PSTypeName" "System.Management.Automation.PSTypeName"
    "Management.Automation.ParameterMetadata" "System.Management.Automation.ParameterMetadata"
    "Management.Automation.CommandParameterSetInfo"
    "System.Management.Automation.CommandParameterSetInfo"
    "Management.Automation.SessionStateEntryVisibility"
    "System.Management.Automation.SessionStateEntryVisibility" "Management.Automation.FilterInfo"
    "System.Management.Automation.FilterInfo" "Management.Automation.ModuleType"
    "System.Management.Automation.ModuleType" "Management.Automation.PSModuleInfo"
    "System.Management.Automation.PSModuleInfo" "Management.Automation.PSCustomObject"
    "System.Management.Automation.PSCustomObject" "Management.Automation.PSScriptCmdlet"
    "System.Management.Automation.PSScriptCmdlet" "Management.Automation.ErrorRecord"
    "System.Management.Automation.ErrorRecord" "Management.Automation.PSCredential"
    "System.Management.Automation.PSCredential" "Management.Automation.PSMethod"
    "System.Management.Automation.PSMethod")
  )

; Function definitions
;---------------------
(function_statement
  (function_name) @function)

; Classes, fields and methods definitions
;----------------------------------------
(class_property_definition
  (variable) @variable.member)

(class_method_definition
  (simple_name) @function.method)

(class_statement
  (simple_name) @_class_name
  (class_method_definition
    (simple_name) @constructor)
  (#eq? @constructor @_class_name))

(key_expression) @property

; Functions, methods calls and properties access
;--------------------------
(command_invokation_operator) @operator

(invokation_expression
  (member_name) @function.call)

(invokation_expression
  (member_name) @constructor
  (#eq? @constructor "new"))

(member_access
  (member_name
    [
      (simple_name)
      (variable)
    ] @variable.member))

; Commands execution
;-------------------
(command
  command_name: (command_name) @function.call)

(command
  command_name: (command_name) @function.builtin
  (#any-of? @function.builtin
    ; Locations & Paths
    "cd" "cd.." "cd\\" "cd~" "help" "Get-Location" "Pop-Location" "Push-Location" "Set-Location"
    "Convert-Path" "Join-Path" "Resolve-Path" "Split-Path" "Test-Path"
    ; Files & Directories
    "Clear-Item" "Clear-ItemProperty" "Copy-Item" "Copy-ItemProperty" "Get-Item" "Get-ItemProperty"
    "Get-ItemPropertyValue" "Invoke-Item" "Move-Item" "Move-ItemProperty" "New-Item"
    "New-ItemProperty" "Remove-Item" "Remove-ItemProperty" "Rename-Item" "Rename-ItemProperty"
    "Set-Item" "Set-ItemProperty"
    ; Aliases
    "New-Alias" "Get-Alias" "Set-Alias" "Remove-Alias" "Import-Alias" "Export-Alias"
    ; Host (prompt)
    "prompt" "cls" "echo" "Clear-Host" "Get-Host" "Out-Host" "Read-Host" "Write-Host" "Out-String"
    ; Expressions
    "Invoke-Expression"
    ; Objects
    "Compare-Object" "ForEach-Object" "Group-Object" "Measure-Object" "New-Object" "Select-Object"
    "Sort-Object" "Tee-Object" "Where-Object"
    ; Modules
    "Export-ModuleMember" "Find-Module" "Get-Module" "Import-Module" "Install-Module" "New-Module"
    "New-ModuleManifest" "Publish-Module" "Remove-Module" "Save-Module" "Test-ModuleManifest"
    "Uninstall-Module" "Update-Module" "Update-ModuleManifest"))

; Parameters and call arguments
;------------------------------
(command_elements
  (generic_token) @variable.parameter)

(switch_parameter) @variable.parameter.builtin

(command_parameter) @variable.parameter.builtin

(script_parameter
  (variable) @variable.parameter)

(class_method_parameter
  (variable) @variable.parameter)

; Document encoding
;------------------
((program
  .
  (comment) @keyword.directive @nospell)
  (#lua-match? @keyword.directive "Encoding$"))
]==],
    ["indents.scm"] = [==[
(function_statement
  "}" @indent.branch) @indent.begin

(param_block
  [
    "param"
    "("
    ")"
  ] @indent.branch) @indent.begin

(script_block_expression
  "}" @indent.branch) @indent.begin

(statement_block
  "}" @indent.branch) @indent.begin

(switch_body
  "}" @indent.branch) @indent.begin

(array_expression
  ")" @indent.branch) @indent.begin

(hash_literal_expression
  "}" @indent.branch) @indent.begin

(class_statement
  "}" @indent.branch) @indent.begin

(class_method_definition
  "}" @indent.branch) @indent.begin

[
  "}"
  ")"
] @indent.end

[
  (comment)
  (string_literal)
  (ERROR)
] @indent.auto
]==],
    ["injections.scm"] = [==[
; comments and block-comments
((comment) @injection.content
  (#set! injection.language "comment"))

; dynamic invocation like & "$env:ChocolateyInstall\bin\choco.exe"
(command
  (command_invokation_operator) @_operator
  (command_name_expr
    (string_literal) @injection.content)
  (#eq? @_operator "&")
  (#set! injection.language "powershell")
  (#offset! @injection.content 0 1 0 -1)
  (#set! injection.include-children))

; switch -regex
(switch_statement
  (switch_parameters
    (switch_parameter) @_parameter)
  (switch_body
    (switch_clauses
      (switch_clause
        (switch_clause_condition
          (string_literal) @injection.content))))
  (#eq? @_parameter "-regex")
  (#set! injection.language "regex")
  (#offset! @injection.content 0 1 0 -1)
  (#set! injection.include-children))
]==],
    ["locals.scm"] = [==[
; Scopes
;-------
(class_statement) @local.scope

(class_method_definition) @local.scope

(statement_block) @local.scope

(function_statement) @local.scope

; Definitions
;------------
(class_statement
  (simple_name) @local.definition.type
  (#set! definition.var.scope "parent"))

(class_property_definition
  (variable) @local.definition.field
  (#set! definition.var.scope "parent"))

(class_method_definition
  (simple_name) @local.definition.method
  (#set! definition.var.scope "parent"))

(function_statement
  (function_name) @local.definition.function
  (#set! definition.var.scope "parent"))

; function, script block parameters
(parameter_list
  (script_parameter
    (attribute_list
      (attribute
        (type_literal
          (type_spec) @local.definition.associated)))
    (variable) @local.definition.parameter))

; variable assignment
(assignment_expression
  (left_assignment_expression
    (logical_expression
      (bitwise_expression
        (comparison_expression
          (additive_expression
            (multiplicative_expression
              (format_expression
                (range_expression
                  (array_literal_expression
                    (unary_expression
                      (variable) @local.definition.var)))))))))))

; variable with type assignment
(assignment_expression
  (left_assignment_expression
    (logical_expression
      (bitwise_expression
        (comparison_expression
          (additive_expression
            (multiplicative_expression
              (format_expression
                (range_expression
                  (array_literal_expression
                    (unary_expression
                      (expression_with_unary_operator
                        (cast_expression
                          (type_literal
                            (type_spec) @local.definition.associated)
                          (unary_expression
                            (variable) @local.definition.var))))))))))))))

; data sections
(data_name
  (simple_name) @local.definition.var)

; References
;-----------
(variable) @local.reference

(command_name) @local.reference

(invokation_expression
  (variable) @_variable
  (member_name
    (simple_name) @local.reference)
  (#eq? @_variable "$this"))
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
