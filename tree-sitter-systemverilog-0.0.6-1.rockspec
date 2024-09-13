local git_ref = '4f897d5e3f0e38bf8fbb55e8f39dc97d2bc2229e'
local modrev = '0.0.6'
local specrev = '1'

local repo_url = 'https://github.com/zhangwwpeng/tree-sitter-systemverilog'

rockspec_format = '3.0'
package = 'tree-sitter-systemverilog'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for systemverilog',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/zhangwwpeng/tree-sitter-systemverilog',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 5.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-systemverilog-' .. '4f897d5e3f0e38bf8fbb55e8f39dc97d2bc2229e',
}

build = {
  type = "treesitter-parser",
  lang = "systemverilog",
  parser = true,
  generate = false,
  generate_from_json = false,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["folds.scm"] = [==[
[
  (seq_block)
  (function_body_declaration)
  (task_body_declaration)
  (generate_block)
  (always_construct)
  (property_declaration)
  (checker_declaration)
  (class_declaration)
  (config_declaration)
  (covergroup_declaration)
  (clocking_declaration)
  (interface_declaration)
  (module_declaration)
  (package_declaration)
  (module_instantiation)
  (program_declaration)
  (specify_block)
  (generate_region)
  (package_import_declaration)
  (text_macro_definition)
  (include_compiler_directive)+
] @fold
]==],
    ["highlights.scm"] = [==[
; Keywords
[
  "begin"
  "end"
  "generate"
  "endgenerate"
  (module_keyword)
  "endmodule"
  "program"
  "endprogram"
  "package"
  "endpackage"
  "checker"
  "endchecker"
  "config"
  "endconfig"
  "pure"
  "virtual"
  "extends"
  "implements"
  "super"
  (class_item_qualifier)
  "parameter"
  "localparam"
  "defparam"
  "assign"
  "modport"
  "fork"
  "join"
  "join_none"
  "join_any"
  "default"
  "break"
  "tagged"
  "extern"
  "alias"
  "posedge"
  "negedge"
  "bind"
  "expect"
  "type"
  "void"
  "coverpoint"
  "cross"
  "nettype"
  "export"
  "force"
  "release"
  "timeunit"
  "timeprecision"
  "sequence"
  "endsequence"
  "property"
  "endproperty"
  "clocking"
  "endclocking"
  "covergroup"
  "endgroup"
  "specify"
  "endspecify"
  "primitive"
  "endprimitive"
  "wait"
  "wait_order"
  "const"
  "constraint"
  "unique"
  "do"
  "genvar"
  "inside"
  "rand"
  "continue"
  "randc"
  "event"
  "global"
  "ref"
  "initial"
  (unique_priority)
  (bins_keyword)
  (always_keyword)
] @keyword

[
  "class"
  "endclass"
  "interface"
  "endinterface"
  "enum"
  "struct"
  "union"
  "typedef"
] @keyword.type

[
  "function"
  "endfunction"
  "task"
  "endtask"
] @keyword.function

"return" @keyword.return

[
  "for"
  "foreach"
  "repeat"
  "forever"
  "while"
] @keyword.repeat

; for
(loop_generate_construct
  (generate_block
    [
      "begin"
      "end"
    ] @keyword.conditional))

; foreach
(loop_statement
  (statement
    (statement_item
      (seq_block
        [
          "begin"
          "end"
        ] @keyword.conditional))))

; repeat forever while
(loop_statement
  (statement_or_null
    (statement
      (statement_item
        (seq_block
          [
            "begin"
            "end"
          ] @keyword.conditional)))))

[
  "if"
  "else"
  "iff"
  (case_keyword)
  "endcase"
] @keyword.conditional

[
  "="
  "-"
  "+"
  "/"
  "*"
  "^"
  "&"
  "|"
  "&&"
  "||"
  "<="
  "=="
  "!="
  "==="
  "!=="
  "-:"
  "<"
  ">"
  ">="
  "%"
  ">>"
  "<<"
  "|="
  "|=>"
  "|->"
  ">>>"
  "<<<"
  "->>"
  "->"
  "=>"
  "*>"
  ".*"
  (unary_operator)
  (inc_or_dec_operator)
  (queue_dimension)
] @operator

"#" @constructor

[
  ";"
  "::"
  ","
  "."
  ":"
] @punctuation.delimiter

(conditional_expression
  [
    "?"
    ":"
  ] @keyword.conditional.ternary)

[
  "["
  "]"
  "("
  ")"
  "{"
  "}"
  "'{"
] @punctuation.bracket

[
  "or"
  "and"
] @keyword.operator

[
  "input"
  "output"
  "inout"
  "signed"
  "unsigned"
  "assert"
  "cover"
  "assume"
  "disable"
  "automatic"
  "static"
  (dpi_function_import_property)
  (dpi_task_import_property)
] @keyword.modifier

[
  "include"
  "import"
  "directive_include"
] @keyword.import

(comment) @comment @spell

[
  "@"
  (cycle_delay_range)
  (delay_control)
  (cycle_delay)
  (attribute_instance)
] @attribute

(attribute_instance
  (attr_spec
    (simple_identifier) @property))

[
  (integral_number)
  (unbased_unsized_literal)
  (fixed_point_number)
  (unsigned_number)
] @number

[
  (net_type)
  (data_type)
  (time_unit)
] @type.builtin

; variable
(list_of_variable_decl_assignments
  (variable_decl_assignment
    name: (simple_identifier) @variable))

(hierarchical_identifier
  (simple_identifier) @variable)

(tf_port_item
  (simple_identifier) @variable)

port_name: (simple_identifier) @variable

(port
  (simple_identifier) @variable)

(list_of_port_identifiers
  (simple_identifier) @variable)

(net_lvalue
  (simple_identifier) @variable)

(sequence_port_item
  (simple_identifier) @variable)

(property_port_item
  (simple_identifier) @variable)

(net_decl_assignment
  (simple_identifier) @variable)

(ERROR
  (simple_identifier) @variable)

; variable.member
(hierarchical_identifier
  (simple_identifier)
  (simple_identifier) @variable.member)

(select
  (simple_identifier) @variable.member)

(named_port_connection
  port_name: (simple_identifier) @variable.member)

(ordered_port_connection
  (expression
    (primary
      (hierarchical_identifier
        (simple_identifier) @variable.member))))

(coverage_option
  (simple_identifier) @variable.member)

; variable.builtin
(method_call_body
  arguments: (list_of_arguments
    (expression) @variable.builtin
    (#any-of? @variable.builtin "this")))

(implicit_class_handle) @variable.builtin

; variable.parameter
(named_parameter_assignment
  (simple_identifier) @variable.parameter)

(parameter_declaration
  (list_of_param_assignments
    (param_assignment
      (simple_identifier) @variable.parameter)))

(local_parameter_declaration
  (list_of_param_assignments
    (param_assignment
      (simple_identifier) @variable.parameter)))

; function builtin
[
  (simulation_control_task)
  (system_tf_identifier)
  (severity_system_task)
  (randomize_call)
  (array_or_queue_method_name)
  "new"
] @function.builtin

; declaration
(task_body_declaration
  .
  name: (simple_identifier) @function
  (simple_identifier)? @label)

(function_body_declaration
  .
  name: (simple_identifier) @function
  (simple_identifier)? @label)

(function_body_declaration
  .
  (data_type_or_void)
  name: (simple_identifier) @function
  (simple_identifier)? @label)

(clocking_declaration
  .
  name: (simple_identifier) @constructor
  (simple_identifier)? @label)

(sequence_declaration
  .
  name: (simple_identifier) @constructor
  (simple_identifier)? @label)

(property_declaration
  .
  name: (simple_identifier) @constructor
  (simple_identifier)? @label)

(class_declaration
  .
  name: (simple_identifier) @constructor
  (simple_identifier)? @label)

(interface_class_declaration
  .
  name: (simple_identifier) @constructor
  (simple_identifier)? @label)

(covergroup_declaration
  .
  name: (simple_identifier) @constructor
  (simple_identifier)? @label)

(package_declaration
  .
  name: (simple_identifier) @constructor
  (simple_identifier)? @label)

(checker_declaration
  .
  name: (simple_identifier) @constructor
  (simple_identifier)? @label)

(interface_declaration
  .
  [
    (simple_identifier) @constructor
    (interface_nonansi_header
      (simple_identifier) @constructor)
    (interface_ansi_header
      (simple_identifier) @constructor)
  ]
  (simple_identifier)? @label)

(module_declaration
  .
  [
    (simple_identifier) @constructor
    (module_nonansi_header
      (simple_identifier) @constructor)
    (module_ansi_header
      (simple_identifier) @constructor)
  ]
  (simple_identifier)? @label)

(program_declaration
  .
  [
    (simple_identifier) @constructor
    (program_nonansi_header
      (simple_identifier) @constructor)
    (program_ansi_header
      (simple_identifier) @constructor)
  ]
  (simple_identifier)? @label)

; function.call
(method_call_body
  name: (simple_identifier) @function.call)

(tf_call
  (hierarchical_identifier
    (simple_identifier) @function.call))

; instance
(module_instantiation
  instance_type: (simple_identifier) @constructor)

(name_of_instance
  instance_name: (simple_identifier) @module)

(sequence_instance
  (hierarchical_identifier
    (simple_identifier) @module))

(udp_instantiation
  (simple_identifier) @constructor)

(ansi_port_declaration
  (interface_port_header
    interface_name: (simple_identifier) @variable
    modport_name: (simple_identifier) @variable.member)
  port_name: (simple_identifier) @variable)

; bind
(bind_directive
  (bind_target_scope
    (simple_identifier) @constructor))

(bind_target_instance
  (hierarchical_identifier
    (simple_identifier) @module))

; assertion
(concurrent_assertion_item
  (simple_identifier) @label)

; converge
(cover_point
  name: (simple_identifier) @label)

(cover_cross
  name: (simple_identifier) @module)

(list_of_cross_items
  (simple_identifier) @constructor)

;package
(package_import_item
  (simple_identifier) @constructor)

; label
(seq_block
  (simple_identifier) @label)

(statement
  block_name: (simple_identifier) @label)

; dpi
(dpi_spec_string) @string

c_name: (c_identifier) @function

(dpi_import_export
  name: (simple_identifier) @function)

; type def
(class_type
  (simple_identifier) @constructor)

(class_type
  (simple_identifier)
  (simple_identifier) @type)

(data_type
  (class_scope
    (class_type
      (simple_identifier) @constructor)))

(task_prototype
  name: (simple_identifier) @function)

(function_prototype
  name: (simple_identifier) @function)

(type_assignment
  name: (simple_identifier) @type.definition)

(interface_class_type
  (simple_identifier) @type.definition)

(package_scope
  (simple_identifier) @constructor)

(data_declaration
  (type_declaration
    type_name: (simple_identifier) @type.definition))

(net_declaration
  (simple_identifier) @type)

(constraint_declaration
  (simple_identifier) @constructor)

(method_call
  (primary
    (hierarchical_identifier
      (simple_identifier) @constructor)))

(string_literal
  (quoted_string) @string)

; include
(include_statement
  (file_path_spec) @string.special.path)

; directive
[
  "directive_define"
  "directive_default_nettype"
  "directive_resetall"
  "directive_timescale"
  "directive_undef"
  "directive_undefineall"
  "directive_ifdef"
  "directive_elsif"
  "directive_endif"
  "directive_else"
] @keyword.directive.define

(include_compiler_directive
  (quoted_string) @string.special.path)

(include_compiler_directive
  (system_lib_string) @string)

(default_nettype_compiler_directive
  (default_nettype_value) @type.builtin)

(text_macro_definition
  (text_macro_name
    (simple_identifier) @keyword.directive))

(text_macro_usage) @keyword.directive

(ifdef_condition
  (simple_identifier) @keyword.directive)

(undefine_compiler_directive
  (simple_identifier) @keyword.directive)
]==],
    ["injections.scm"] = [==[
((comment) @injection.content
  (#set! injection.language "comment"))

((macro_text) @injection.content
  (#set! injection.language "systemverilog"))
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
