local git_ref = 'd0ebabefaea9ac3f6fc3004cf08cd121b66da9e4'
local modrev = '0.0.16'
local specrev = '1'

local repo_url = 'https://github.com/Isopod/tree-sitter-pascal'

rockspec_format = '3.0'
package = 'tree-sitter-pascal'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for pascal',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/Isopod/tree-sitter-pascal',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 5.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-pascal-' .. 'd0ebabefaea9ac3f6fc3004cf08cd121b66da9e4',
}

build = {
  type = "treesitter-parser",
  lang = "pascal",
  parser = true,
  generate = false,
  generate_from_json = false,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["folds.scm"] = [==[
[
  (interface)
  (implementation)
  (initialization)
  (finalization)
  (if)
  (ifElse)
  (while)
  (repeat)
  (for)
  (foreach)
  (try)
  (case)
  (caseCase)
  (asm)
  (with)
  (declVar)
  (declConst)
  (declEnum)
  (declProcRef)
  (declExports)
  (declProcRef)
  (declType)
  (defProc)
  (declField)
  (declProp)
  (comment)
] @fold

(interface
  (declProc) @fold)
]==],
    ["highlights.scm"] = [==[
; -- Keywords
[
  (kProgram)
  (kLibrary)
  (kUnit)
  (kBegin)
  (kEnd)
  (kAsm)
  (kVar)
  (kThreadvar)
  (kConst)
  (kConstref)
  (kResourcestring)
  (kOut)
  (kType)
  (kLabel)
  (kExports)
  (kProperty)
  (kRead)
  (kWrite)
  (kImplements)
  (kClass)
  (kInterface)
  (kObject)
  (kRecord)
  (kObjcclass)
  (kObjccategory)
  (kObjcprotocol)
  (kArray)
  (kFile)
  (kString)
  (kSet)
  (kOf)
  (kHelper)
  (kInherited)
  (kGeneric)
  (kSpecialize)
  (kFunction)
  (kProcedure)
  (kConstructor)
  (kDestructor)
  (kOperator)
  (kReference)
  (kInterface)
  (kImplementation)
  (kInitialization)
  (kFinalization)
  (kTry)
  (kExcept)
  (kFinally)
  (kRaise)
  (kOn)
  (kCase)
  (kWith)
  (kGoto)
] @keyword

[
  (kFor)
  (kTo)
  (kDownto)
  (kDo)
  (kWhile)
  (kRepeat)
  (kUntil)
] @keyword.repeat

[
  (kIf)
  (kThen)
  (kElse)
] @keyword.conditional

[
  (kPublished)
  (kPublic)
  (kProtected)
  (kPrivate)
  (kStrict)
  (kRequired)
  (kOptional)
] @keyword.modifier

[
  (kPacked)
  (kAbsolute)
] @keyword.modifier

(kUses) @keyword.import

; -- Attributes
[
  (kDefault)
  (kIndex)
  (kNodefault)
  (kStored)
  (kStatic)
  (kVirtual)
  (kAbstract)
  (kSealed)
  (kDynamic)
  (kOverride)
  (kOverload)
  (kReintroduce)
  (kInline)
  (kForward)
  (kStdcall)
  (kCdecl)
  (kCppdecl)
  (kPascal)
  (kRegister)
  (kMwpascal)
  (kExternal)
  (kName)
  (kMessage)
  (kDeprecated)
  (kExperimental)
  (kPlatform)
  (kUnimplemented)
  (kCvar)
  (kExport)
  (kFar)
  (kNear)
  (kSafecall)
  (kAssembler)
  (kNostackframe)
  (kInterrupt)
  (kNoreturn)
  (kIocheck)
  (kLocal)
  (kHardfloat)
  (kSoftfloat)
  (kMs_abi_default)
  (kMs_abi_cdecl)
  (kSaveregisters)
  (kSysv_abi_default)
  (kSysv_abi_cdecl)
  (kVectorcall)
  (kVarargs)
  (kWinapi)
  (kAlias)
  (kDelayed)
  (rttiAttributes)
  (procAttribute)
] @attribute

(procAttribute
  (kPublic) @attribute)

; -- Punctuation & operators
[
  "("
  ")"
  "["
  "]"
] @punctuation.bracket

[
  ";"
  ","
  ":"
  (kEndDot)
] @punctuation.delimiter

".." @punctuation.special

[
  (kDot)
  (kAdd)
  (kSub)
  (kMul)
  (kFdiv)
  (kAssign)
  (kAssignAdd)
  (kAssignSub)
  (kAssignMul)
  (kAssignDiv)
  (kEq)
  (kLt)
  (kLte)
  (kGt)
  (kGte)
  (kNeq)
  (kAt)
  (kHat)
] @operator

[
  (kOr)
  (kXor)
  (kDiv)
  (kMod)
  (kAnd)
  (kShl)
  (kShr)
  (kNot)
  (kIs)
  (kAs)
  (kIn)
] @keyword.operator

; -- Builtin constants
[
  (kTrue)
  (kFalse)
] @boolean

(kNil) @constant.builtin

; -- Literals
(literalNumber) @number

(literalString) @string

; -- Variables
(exprBinary
  (identifier) @variable)

(exprUnary
  (identifier) @variable)

(assignment
  (identifier) @variable)

(exprBrackets
  (identifier) @variable)

(exprParens
  (identifier) @variable)

(exprDot
  (identifier) @variable)

(exprTpl
  (identifier) @variable)

(exprArgs
  (identifier) @variable)

(defaultValue
  (identifier) @variable)

; -- Comments
(comment) @comment @spell

((comment) @comment.documentation
  (#lua-match? @comment.documentation "^///[^/]"))

((comment) @comment.documentation
  (#lua-match? @comment.documentation "^///$"))

((comment) @comment.documentation
  .
  [
    (unit)
    (declProc)
  ])

(declTypes
  (comment) @comment.documentation
  .
  (declType))

(declSection
  (comment) @comment.documentation
  .
  [
    (declField)
    (declProc)
  ])

(declEnum
  (comment) @comment.documentation
  .
  (declEnumValue))

(declConsts
  (comment) @comment.documentation
  .
  (declConst))

(declVars
  (comment) @comment.documentation
  .
  (declVar))

(pp) @keyword.directive

; -- Type declaration
(declType
  name: (identifier) @type)

(declType
  name: (genericTpl
    entity: (identifier) @type))

; -- Procedure & function declarations
; foobar
(declProc
  name: (identifier) @function)

; foobar<t>
(declProc
  name: (genericTpl
    entity: (identifier) @function))

; foo.bar
(declProc
  name: (genericDot
    rhs: (identifier) @function))

; foo.bar<t>
(declProc
  name: (genericDot
    rhs: (genericTpl
      entity: (identifier) @function)))

; Treat property declarations like functions
(declProp
  name: (identifier) @function)

(declProp
  getter: (identifier) @variable.member)

(declProp
  setter: (identifier) @variable.member)

; -- Function parameters
(declArg
  name: (identifier) @variable.parameter)

; -- Template parameters
(genericArg
  name: (identifier) @variable.parameter)

(genericArg
  type: (typeref) @type)

(declProc
  name: (genericDot
    lhs: (identifier) @type))

(declType
  (genericDot
    (identifier) @type))

(genericDot
  (genericTpl
    (identifier) @type))

(genericDot
  (genericDot
    (identifier) @type))

(genericTpl
  entity: (identifier) @type)

(genericTpl
  entity: (genericDot
    (identifier) @type))

; -- Exception parameters
(exceptionHandler
  variable: (identifier) @variable.parameter)

; -- Type usage
(typeref) @type

; -- Constant usage
[
  (caseLabel)
  (label)
] @constant

(procAttribute
  (identifier) @constant)

(procExternal
  (identifier) @constant)

; -- Variable & constant declarations
; (This is only questionable because we cannot detect types of identifiers
; declared in other units, so the results will be inconsistent)
(declVar
  name: (identifier) @variable)

(declConst
  name: (identifier) @constant)

(declEnumValue
  name: (identifier) @constant)

; -- Fields
(exprDot
  rhs: (identifier) @variable.member)

(exprDot
  rhs: (exprDot) @variable.member)

(declClass
  (declField
    name: (identifier) @variable.member))

(declSection
  (declField
    name: (identifier) @variable.member))

(declSection
  (declVars
    (declVar
      name: (identifier) @variable.member)))

(recInitializerField
  name: (identifier) @variable.member)

; ---------------------------------------------- ;;;
; EVERYTHING BELOW THIS IS OF QUESTIONABLE VALUE ;;;
; ---------------------------------------------- ;;;
; -- Procedure name in calls with parentheses
; (Pascal doesn't require parentheses for procedure calls, so this will not
; detect all calls)
; foobar
(exprCall
  entity: (identifier) @function)

; foobar<t>
(exprCall
  entity: (exprTpl
    entity: (identifier) @function))

; foo.bar
(exprCall
  entity: (exprDot
    rhs: (identifier) @function))

; foo.bar<t>
(exprCall
  entity: (exprDot
    rhs: (exprTpl
      entity: (identifier) @function)))

(inherited) @function

; -- Heuristic for procedure/function calls without parentheses
; (If a statement consists only of an identifier, assume it's a procedure)
; (This will still not match all procedure calls, and also may produce false
; positives in rare cases, but only for nonsensical code)
(statement
  (identifier) @function)

(statement
  (exprDot
    rhs: (identifier) @function))

(statement
  (exprTpl
    entity: (identifier) @function))

(statement
  (exprDot
    rhs: (exprTpl
      entity: (identifier) @function)))

; -- Break, Continue & Exit
; (Not ideal: ideally, there would be a way to check if these special
; identifiers are shadowed by a local variable)
(statement
  ((identifier) @keyword.return
    (#lua-match? @keyword.return "^[eE][xX][iI][tT]$")))

(statement
  (exprCall
    entity: ((identifier) @keyword.return
      (#lua-match? @keyword.return "^[eE][xX][iI][tT]$"))))

(statement
  ((identifier) @keyword.repeat
    (#lua-match? @keyword.repeat "^[bB][rR][eE][aA][kK]$")))

(statement
  ((identifier) @keyword.repeat
    (#lua-match? @keyword.repeat "^[cC][oO][nN][tT][iI][nN][uU][eE]$")))

; -- Identifier type inference
; VERY QUESTIONABLE: Highlighting of identifiers based on spelling
(exprBinary
  ((identifier) @constant
    (#match? @constant "^[A-Z][A-Z0-9_]+$|^[a-z]{2,3}[A-Z].+$")))

(exprUnary
  ((identifier) @constant
    (#match? @constant "^[A-Z][A-Z0-9_]+$|^[a-z]{2,3}[A-Z].+$")))

(assignment
  rhs: ((identifier) @constant
    (#match? @constant "^[A-Z][A-Z0-9_]+$|^[a-z]{2,3}[A-Z].+$")))

(exprBrackets
  ((identifier) @constant
    (#match? @constant "^[A-Z][A-Z0-9_]+$|^[a-z]{2,3}[A-Z].+$")))

(exprParens
  ((identifier) @constant
    (#match? @constant "^[A-Z][A-Z0-9_]+$|^[a-z]{2,3}[A-Z].+$")))

(exprDot
  rhs: ((identifier) @constant
    (#match? @constant "^[A-Z][A-Z0-9_]+$|^[a-z]{2,3}[A-Z].+$")))

(exprTpl
  args: ((identifier) @constant
    (#match? @constant "^[A-Z][A-Z0-9_]+$|^[a-z]{2,3}[A-Z].+$")))

(exprArgs
  ((identifier) @constant
    (#match? @constant "^[A-Z][A-Z0-9_]+$|^[a-z]{2,3}[A-Z].+$")))

(declEnumValue
  ((identifier) @constant
    (#match? @constant "^[A-Z][A-Z0-9_]+$|^[a-z]{2,3}[A-Z].+$")))

(defaultValue
  ((identifier) @constant
    (#match? @constant "^[A-Z][A-Z0-9_]+$|^[a-z]{2,3}[A-Z].+$")))
]==],
    ["indents.scm"] = [==[
[
  (statement)
  (declVars)
  (declConsts)
  (declTypes)
  (declProc)
  (declArgs)
  (declUses)
  (declClass)
  (exprArgs)
  (exprSubscript)
  (exprBrackets)
  (exprParens)
  (recInitializer)
  (arrInitializer)
  (defaultValue)
] @indent.begin

(defProc
  (block) @indent.begin)

[
  (kEnd)
  (kFinally)
  (kDo)
  (kUntil)
  (kExcept)
  (kElse)
  (kThen)
  (declSection)
  "]"
  ")"
] @indent.branch
]==],
    ["injections.scm"] = [==[
((comment) @injection.content
  (#set! injection.language "comment"))

; There is no parser for assembly language yet. Add an injection here when we
; have a parser.
; ((asmBody) @injection.content
;  (#set! injection.language "asm"))
]==],
    ["locals.scm"] = [==[
(root) @local.scope

(defProc) @local.scope

(lambda) @local.scope

(interface
  (declProc) @local.scope)

(declSection
  (declProc) @local.scope)

(declClass
  (declProc) @local.scope)

(declHelper
  (declProc) @local.scope)

(declProcRef) @local.scope

(exceptionHandler) @local.scope

(exceptionHandler
  variable: (identifier) @local.definition)

(declArg
  name: (identifier) @local.definition)

(declVar
  name: (identifier) @local.definition)

(declConst
  name: (identifier) @local.definition)

(declLabel
  name: (identifier) @local.definition)

(genericArg
  name: (identifier) @local.definition)

(declEnumValue
  name: (identifier) @local.definition)

(declType
  name: (identifier) @local.definition)

(declType
  name: (genericTpl
    entity: (identifier) @local.definition))

(declProc
  name: (identifier) @local.definition)

(identifier) @local.reference
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
