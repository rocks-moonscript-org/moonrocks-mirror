local git_ref = '9b2f9aec2106b94b4e099fe75e73ebd8ae707c04'
local modrev = '0.0.18'
local specrev = '1'

local repo_url = 'https://github.com/tree-sitter-grammars/tree-sitter-ispc'

rockspec_format = '3.0'
package = 'tree-sitter-ispc'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for ispc',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/tree-sitter-grammars/tree-sitter-ispc',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1', 'tree-sitter-c == 0.0.19' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 5.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-ispc-' .. '9b2f9aec2106b94b4e099fe75e73ebd8ae707c04',
}

build = {
  type = "treesitter-parser",
  lang = "ispc",
  parser = true,
  generate = false,
  generate_from_json = true,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["folds.scm"] = [==[
; inherits: c

[
  (foreach_statement)
  (foreach_instance_statement)
  (unmasked_statement)
  (template_declaration)
] @fold
]==],
    ["highlights.scm"] = [==[
; inherits: c

[
  "soa"
  "task"
  "launch"
  "unmasked"
  "template"
  "typename"
  (sync_expression)
] @keyword

[
  "in"
  "new"
  "delete"
] @keyword.operator

[
  "cdo"
  "cfor"
  "cwhile"
  "foreach"
  "foreach_tiled"
  "foreach_active"
  "foreach_unique"
] @keyword.repeat

"cif" @keyword.conditional

[
  "varying"
  "uniform"
] @keyword.modifier

"__regcall" @attribute

(overload_declarator
  name: _ @function)

(foreach_statement
  range_operator: _ @operator)

(short_vector
  [
    "<"
    ">"
  ] @punctuation.bracket)

(soa_qualifier
  [
    "<"
    ">"
  ] @punctuation.bracket)

(template_argument_list
  [
    "<"
    ">"
  ] @punctuation.bracket)

(template_parameter_list
  [
    "<"
    ">"
  ] @punctuation.bracket)

(llvm_identifier) @function.builtin

; built-in variables
((identifier) @variable.builtin
  (#any-of? @variable.builtin
    "programCount" "programIndex" "taskCount" "taskCount0" "taskCount1" "taskCount2" "taskIndex"
    "taskIndex0" "taskIndex1" "taskIndex2" "threadCount" "threadIndex"))

; preprocessor constants
((identifier) @constant.builtin
  (#any-of? @constant.builtin
    "ISPC" "ISPC_FP16_SUPPORTED" "ISPC_FP64_SUPPORTED" "ISPC_LLVM_INTRINSICS_ENABLED"
    "ISPC_MAJOR_VERSION" "ISPC_MINOR_VERSION" "ISPC_POINTER_SIZE" "ISPC_TARGET_AVX"
    "ISPC_TARGET_AVX2" "ISPC_TARGET_AVX512KNL" "ISPC_TARGET_AVX512SKX" "ISPC_TARGET_AVX512SPR"
    "ISPC_TARGET_NEON" "ISPC_TARGET_SSE2" "ISPC_TARGET_SSE4" "ISPC_UINT_IS_DEFINED" "PI"
    "TARGET_ELEMENT_WIDTH" "TARGET_WIDTH"))

; standard library built-in
((type_identifier) @type.builtin
  (#lua-match? @type.builtin "^RNGState"))

(call_expression
  function: (identifier) @function.builtin
  (#any-of? @function.builtin
    "abs" "acos" "all" "alloca" "and" "any" "aos_to_soa2" "aos_to_soa3" "aos_to_soa4" "asin"
    "assert" "assume" "atan" "atan2" "atomic_add_global" "atomic_add_local" "atomic_and_global"
    "atomic_and_local" "atomic_compare_exchange_global" "atomic_compare_exchange_local"
    "atomic_max_global" "atomic_max_local" "atomic_min_global" "atomic_min_local" "atomic_or_global"
    "atomic_or_local" "atomic_subtract_global" "atomic_subtract_local" "atomic_swap_global"
    "atomic_swap_local" "atomic_xor_global" "atomic_xor_local" "avg_down" "avg_up" "broadcast"
    "ceil" "clamp" "clock" "cos" "count_leading_zeros" "count_trailing_zeros" "doublebits"
    "exclusive_scan_add" "exclusive_scan_and" "exclusive_scan_or" "exp" "extract" "fastmath"
    "float16bits" "floatbits" "float_to_half" "float_to_half_fast" "float_to_srgb8" "floor"
    "frandom" "frexp" "half_to_float" "half_to_float_fast" "insert" "intbits" "invoke_sycl" "isnan"
    "ISPCAlloc" "ISPCLaunch" "ISPCSync" "lanemask" "ldexp" "log" "max" "memcpy" "memcpy64" "memmove"
    "memmove64" "memory_barrier" "memset" "memset64" "min" "none" "num_cores" "or"
    "packed_load_active" "packed_store_active" "packed_store_active2" "packmask" "popcnt" "pow"
    "prefetch_l1" "prefetch_l2" "prefetch_l3" "prefetch_nt" "prefetchw_l1" "prefetchw_l2"
    "prefetchw_l3" "print" "random" "rcp" "rcp_fast" "rdrand" "reduce_add" "reduce_equal"
    "reduce_max" "reduce_min" "rotate" "round" "rsqrt" "rsqrt_fast" "saturating_add"
    "saturating_div" "saturating_mul" "saturating_sub" "seed_rng" "select" "shift" "shuffle"
    "signbits" "sign_extend" "sin" "sincos" "soa_to_aos2" "soa_to_aos3" "soa_to_aos4" "sqrt"
    "streaming_load" "streaming_load_uniform" "streaming_store" "tan" "trunc")
  )
]==],
    ["indents.scm"] = [==[
; inherits: c

((foreach_statement
  body: (_) @_body) @indent.begin
  (#not-kind-eq? @_body "compound_statement"))

((foreach_instance_statement
  body: (_) @_body) @indent.begin
  (#not-kind-eq? @_body "compound_statement"))
]==],
    ["injections.scm"] = [==[
; inherits: c
]==],
    ["locals.scm"] = [==[
; inherits: c

(reference_declarator
  (identifier) @local.definition.var)

(type_parameter_declaration
  (type_identifier) @local.definition.type)

(template_declaration) @local.scope

(template_function
  name: (identifier) @local.definition.function) @local.scope

[
  (foreach_statement)
  (foreach_instance_statement)
  (unmasked_statement)
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
