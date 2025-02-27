local git_ref = '2a8476371ff4f8b9e451d702033fdf9410fc1a16'
local modrev = '0.0.46'
local specrev = '1'

local repo_url = 'https://github.com/artagnon/tree-sitter-mlir'

rockspec_format = '3.0'
package = 'tree-sitter-mlir'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for mlir',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/artagnon/tree-sitter-mlir',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 5.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-mlir-' .. '2a8476371ff4f8b9e451d702033fdf9410fc1a16',
}

build = {
  type = "treesitter-parser",
  lang = "mlir",
  parser = true,
  generate = true,
  generate_from_json = false,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["highlights.scm"] = [==[
[
  "ins"
  "outs"
  "else"
  "do"
  "loc"
  "attributes"
  "into"
  "to"
  "from"
  "step"
  "low"
  "high"
  "iter_args"
  "padding_value"
  "inner_tiles"
  "gather_dims"
  "scatter_dims"
  "outer_dims_perm"
  "inner_dims_pos"
  "shared_outs"
  "default"
  (arith_cmp_predicate)
] @keyword

; format-ignore
[
  "module"
  "unrealized_conversion_cast"

  "func.call"
  "call"
  "func.call_indirect"
  "call_indirect"
  "func.constant"
  "constant"
  "func.func"
  "func.return"
  "return"

  "llvm.func"
  "llvm.return"

  "cf.assert"
  "cf.br"
  "cf.cond_br"
  "cf.switch"

  "scf.condition"
  "scf.execute_region"
  "scf.if"
  "scf.index_switch"
  "scf.for"
  "scf.forall"
  "scf.forall.in_parallel"
  "scf.parallel"
  "scf.reduce"
  "scf.reduce.return"
  "scf.while"
  "scf.yield"

  "arith.constant"
  "arith.addi"
  "arith.subi"
  "arith.divsi"
  "arith.divui"
  "arith.ceildivsi"
  "arith.ceildivui"
  "arith.floordivsi"
  "arith.remsi"
  "arith.remui"
  "arith.muli"
  "arith.mulsi_extended"
  "arith.mului_extended"
  "arith.andi"
  "arith.ori"
  "arith.xori"
  "arith.maxsi"
  "arith.maxui"
  "arith.minsi"
  "arith.minui"
  "arith.shli"
  "arith.shrsi"
  "arith.shrui"
  "arith.addui_extended"
  "arith.addf"
  "arith.divf"
  "arith.maximumf"
  "arith.minimumf"
  "arith.mulf"
  "arith.remf"
  "arith.subf"
  "arith.negf"
  "arith.cmpi"
  "arith.cmpf"
  "arith.extf"
  "arith.extsi"
  "arith.extui"
  "arith.fptosi"
  "arith.fptoui"
  "arith.index_cast"
  "arith.index_castui"
  "arith.sitofp"
  "arith.uitofp"
  "arith.bitcast"
  "arith.truncf"
  "arith.select"

  "math.absf"
  "math.atan"
  "math.cbrt"
  "math.ceil"
  "math.cos"
  "math.erf"
  "math.exp"
  "math.exp2"
  "math.expm1"
  "math.floor"
  "math.log"
  "math.log10"
  "math.log1p"
  "math.log2"
  "math.round"
  "math.roundeven"
  "math.rsqrt"
  "math.sin"
  "math.sqrt"
  "math.tan"
  "math.tanh"
  "math.trunc"
  "math.absi"
  "math.ctlz"
  "math.cttz"
  "math.ctpop"
  "math.atan2"
  "math.copysign"
  "math.fpowi"
  "math.powf"
  "math.ipowi"
  "math.fma"

  "memref.alloc"
  "memref.cast"
  "memref.copy"
  "memref.collapse_shape"
  "memref.expand_shape"
  "memref.prefetch"
  "memref.rank"
  "memref.realloc"
  "memref.view"

  "vector.bitcast"
  "vector.broadcast"
  "vector.shape_cast"
  "vector.type_cast"
  "vector.constant_mask"
  "vector.create_mask"
  "vector.extract"
  "vector.load"
  "vector.scalable.extract"
  "vector.fma"
  "vector.flat_transpose"
  "vector.insert"
  "vector.scalable.insert"
  "vector.shuffle"
  "vector.store"
  "vector.insert_strided_slice"
  "vector.matrix_multiply"
  "vector.print"
  "vector.splat"
  "vector.transfer_read"
  "vector.transfer_write"
  "vector.yield"

  "tensor.empty"
  "tensor.cast"
  "tensor.dim"
  "tensor.collapse_shape"
  "tensor.expand_shape"
  "tensor.extract"
  "tensor.insert"
  "tensor.extract_slice"
  "tensor.insert_slice"
  "tensor.parallel_insert_slice"
  "tensor.from_elements"
  "tensor.gather"
  "tensor.scatter"
  "tensor.pad"
  "tensor.reshape"
  "tensor.splat"
  "tensor.pack"
  "tensor.unpack"
  "tensor.generate"
  "tensor.rank"
  "tensor.yield"

  "bufferization.alloc_tensor"
  "bufferization.to_memref"
  "bufferization.to_tensor"

  "linalg.batch_matmul"
  "linalg.batch_matmul_transpose_b"
  "linalg.batch_matvec"
  "linalg.batch_reduce_matmul"
  "linalg.broadcast"
  "linalg.conv_1d_ncw_fcw"
  "linalg.conv_1d_nwc_wcf"
  "linalg.conv_1d"
  "linalg.conv_2d_nchw_fchw"
  "linalg.conv_2d_ngchw_fgchw"
  "linalg.conv_2d_nhwc_fhwc"
  "linalg.conv_2d_nhwc_hwcf"
  "linalg.conv_2d_nhwc_hwcf_q"
  "linalg.conv_2d"
  "linalg.conv_3d_ndhwc_dhwcf"
  "linalg.conv_3d_ndhwc_dhwcf_q"
  "linalg.conv_3d"
  "linalg.copy"
  "linalg.depthwise_conv_1d_nwc_wcm"
  "linalg.depthwise_conv_2d_nchw_chw"
  "linalg.depthwise_conv_2d_nhwc_hwc"
  "linalg.depthwise_conv_2d_nhwc_hwc_q"
  "linalg.depthwise_conv_2d_nhwc_hwcm"
  "linalg.depthwise_conv_2d_nhwc_hwcm_q"
  "linalg.depthwise_conv_3d_ndhwc_dhwc"
  "linalg.depthwise_conv_3d_ndhwc_dhwcm"
  "linalg.dot"
  "linalg.elemwise_binary"
  "linalg.elemwise_unary"
  "linalg.fill"
  "linalg.fill_rng_2d"
  "linalg.matmul"
  "linalg.matmul_transpose_b"
  "linalg.matmul_unsigned"
  "linalg.matvec"
  "linalg.mmt4d"
  "linalg.pooling_nchw_max"
  "linalg.pooling_nchw_sum"
  "linalg.pooling_ncw_max"
  "linalg.pooling_ncw_sum"
  "linalg.pooling_ndhwc_max"
  "linalg.pooling_ndhwc_min"
  "linalg.pooling_ndhwc_sum"
  "linalg.pooling_nhwc_max"
  "linalg.pooling_nhwc_max_unsigned"
  "linalg.pooling_nhwc_min"
  "linalg.pooling_nhwc_min_unsigned"
  "linalg.pooling_nhwc_sum"
  "linalg.pooling_nwc_max"
  "linalg.pooling_nwc_max_unsigned"
  "linalg.pooling_nwc_min"
  "linalg.pooling_nwc_min_unsigned"
  "linalg.pooling_nwc_sum"
  "linalg.quantized_batch_matmul"
  "linalg.quantized_matmul"
  "linalg.vecmat"
  "linalg.generic"
  "linalg.index"
  "linalg.map"
  "linalg.yield"
] @function.builtin

(generic_operation) @function

(builtin_type) @type.builtin

[
  (type_alias)
  (dialect_type)
  (type_alias_def)
] @type

[
  (integer_literal)
  (complex_literal)
] @number

(float_literal) @number.float

(bool_literal) @boolean

[
  (tensor_literal)
  (array_literal)
  (unit_literal)
] @constant.builtin

(string_literal) @string

[
  (attribute_alias_def)
  (attribute_alias)
  (bare_attribute_entry)
  (attribute)
  (fastmath_attr)
  (scatter_dims_attr)
  (gather_dims_attr)
  (outer_dims_perm_attr)
  (inner_dims_pos_attr)
  (inner_tiles_attr)
  (unique_attr)
  (nofold_attr)
  (isWrite_attr)
  (localityHint_attr)
  (isDataCache_attr)
  (restrict_attr)
  (writable_attr)
] @attribute

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
  ","
] @punctuation.delimiter

[
  "="
  "->"
] @operator

(builtin_dialect
  name: (symbol_ref_id) @function)

(func_dialect
  name: (symbol_ref_id) @function)

(llvm_dialect
  name: (symbol_ref_id) @function)

(func_arg_list
  (value_use) @variable.parameter)

(block_arg_list
  (value_use) @variable.parameter)

(caret_id) @string.special

(value_use) @variable

(comment) @comment @spell
]==],
    ["injections.scm"] = [==[
((comment) @injection.content
  (#set! injection.language "comment"))
]==],
    ["locals.scm"] = [==[
(region) @local.scope

(func_arg_list
  (value_use) @local.definition.var)

(block_arg_list
  (value_use) @local.definition.var)

(op_result
  (value_use) @local.definition.var)

(value_use) @local.reference
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
