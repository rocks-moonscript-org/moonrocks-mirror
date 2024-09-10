local git_ref = '886601b67d1f4690173a4925c214343c30704d32'
local modrev = '0.0.3'
local specrev = '1'

local repo_url = 'https://github.com/treeman/tree-sitter-djot'

rockspec_format = '3.0'
package = 'tree-sitter-djot'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for djot',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/treeman/tree-sitter-djot',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 5.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-djot-' .. '886601b67d1f4690173a4925c214343c30704d32',
}

build = {
  type = "treesitter-parser",
  lang = "djot",
  parser = true,
  generate = false,
  generate_from_json = false,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["folds.scm"] = [==[
[
  (section)
  (code_block)
  (raw_block)
  (list)
  (div)
] @fold
]==],
    ["highlights.scm"] = [==[
(heading1) @markup.heading.1

(heading2) @markup.heading.2

(heading3) @markup.heading.3

(heading4) @markup.heading.4

(heading5) @markup.heading.5

(heading6) @markup.heading.6

(thematic_break) @string.special

[
  (div_marker_begin)
  (div_marker_end)
] @punctuation.delimiter

([
  (code_block)
  (raw_block)
  (frontmatter)
] @markup.raw.block
  (#set! priority 90))

; Remove @markup.raw for code with a language spec
(code_block
  .
  (code_block_marker_begin)
  (language)
  (code) @none
  (#set! priority 90))

[
  (code_block_marker_begin)
  (code_block_marker_end)
  (raw_block_marker_begin)
  (raw_block_marker_end)
] @punctuation.delimiter

(language) @attribute

(inline_attribute
  _ @conceal
  (#set! conceal ""))

((language_marker) @punctuation.delimiter
  (#set! conceal ""))

(block_quote) @markup.quote

(block_quote_marker) @punctuation.special

(table_header) @markup.heading

(table_header
  "|" @punctuation.special)

(table_row
  "|" @punctuation.special)

(table_separator) @punctuation.special

(table_caption
  (marker) @punctuation.special)

(table_caption) @markup.italic

[
  (list_marker_dash)
  (list_marker_plus)
  (list_marker_star)
  (list_marker_definition)
  (list_marker_decimal_period)
  (list_marker_decimal_paren)
  (list_marker_decimal_parens)
  (list_marker_lower_alpha_period)
  (list_marker_lower_alpha_paren)
  (list_marker_lower_alpha_parens)
  (list_marker_upper_alpha_period)
  (list_marker_upper_alpha_paren)
  (list_marker_upper_alpha_parens)
  (list_marker_lower_roman_period)
  (list_marker_lower_roman_paren)
  (list_marker_lower_roman_parens)
  (list_marker_upper_roman_period)
  (list_marker_upper_roman_paren)
  (list_marker_upper_roman_parens)
] @markup.list

(list_marker_task
  (unchecked)) @markup.list.unchecked

(list_marker_task
  (checked)) @markup.list.checked

; Colorize `x` in `[x]`
((checked) @constant.builtin
  (#offset! @constant.builtin 0 1 0 -1))

[
  (ellipsis)
  (en_dash)
  (em_dash)
  (quotation_marks)
] @string.special

(list_item
  (term) @type.definition)

; Conceal { and } but leave " and '
((quotation_marks) @string.special
  (#any-of? @string.special "\"}" "'}")
  (#offset! @string.special 0 1 0 0)
  (#set! conceal ""))

((quotation_marks) @string.special
  (#any-of? @string.special "\\\"" "\\'" "{'" "{\"")
  (#offset! @string.special 0 0 0 -1)
  (#set! conceal ""))

[
  (hard_line_break)
  (backslash_escape)
] @string.escape

; Only conceal \ but leave escaped character.
((backslash_escape) @string.escape
  (#offset! @string.escape 0 0 0 -1)
  (#set! conceal ""))

(frontmatter_marker) @punctuation.delimiter

(emphasis) @markup.italic

(strong) @markup.strong

(symbol) @string.special.symbol

(insert) @markup.underline

(delete) @markup.strikethrough

[
  (highlighted)
  (superscript)
  (subscript)
] @string.special

; We need to target tokens specifically because `{=` etc can exist as fallback symbols in
; regular text, which we don't want to highlight or conceal.
(highlighted
  [
    "{="
    "=}"
  ] @punctuation.delimiter
  (#set! conceal ""))

(insert
  [
    "{+"
    "+}"
  ] @punctuation.delimiter
  (#set! conceal ""))

(delete
  [
    "{-"
    "-}"
  ] @punctuation.delimiter
  (#set! conceal ""))

(superscript
  [
    "^"
    "{^"
    "^}"
  ] @punctuation.delimiter
  (#set! conceal ""))

(subscript
  [
    "~"
    "{~"
    "~}"
  ] @punctuation.delimiter
  (#set! conceal ""))

([
  (emphasis_begin)
  (emphasis_end)
  (strong_begin)
  (strong_end)
  (verbatim_marker_begin)
  (verbatim_marker_end)
  (math_marker)
  (math_marker_begin)
  (math_marker_end)
  (raw_inline_attribute)
  (raw_inline_marker_begin)
  (raw_inline_marker_end)
] @punctuation.delimiter
  (#set! conceal ""))

((math) @markup.math
  (#set! priority 90))

(verbatim) @markup.raw

((raw_inline) @markup.raw
  (#set! priority 90))

(comment
  "%" @comment
  (#set! conceal ""))

(span
  [
    "["
    "]"
  ] @punctuation.bracket)

(inline_attribute
  [
    "{"
    "}"
  ] @punctuation.bracket)

(block_attribute
  [
    "{"
    "}"
  ] @punctuation.bracket)

[
  (class)
  (class_name)
] @type

(identifier) @tag

(key_value
  "=" @operator)

(key_value
  (key) @property)

(key_value
  (value) @string)

(link_text
  [
    "["
    "]"
  ] @punctuation.bracket
  (#set! conceal ""))

(autolink
  [
    "<"
    ">"
  ] @punctuation.bracket
  (#set! conceal ""))

(inline_link
  (inline_link_destination) @markup.link.url
  (#set! conceal ""))

(link_reference_definition
  ":" @punctuation.special)

(full_reference_link
  (link_text) @markup.link)

(full_reference_link
  (link_label) @markup.link.label
  (#set! conceal ""))

(collapsed_reference_link
  "[]" @punctuation.bracket
  (#set! conceal ""))

(full_reference_link
  [
    "["
    "]"
  ] @punctuation.bracket
  (#set! conceal ""))

(collapsed_reference_link
  (link_text) @markup.link)

(collapsed_reference_link
  (link_text) @markup.link.label)

(inline_link
  (link_text) @markup.link)

(full_reference_image
  (link_label) @markup.link.label)

(full_reference_image
  [
    "!["
    "["
    "]"
  ] @punctuation.bracket)

(collapsed_reference_image
  [
    "!["
    "]"
  ] @punctuation.bracket)

(inline_image
  [
    "!["
    "]"
  ] @punctuation.bracket)

(image_description) @markup.italic

(image_description
  [
    "["
    "]"
  ] @punctuation.bracket)

(link_reference_definition
  [
    "["
    "]"
  ] @punctuation.bracket)

(link_reference_definition
  (link_label) @markup.link.label)

(inline_link_destination
  [
    "("
    ")"
  ] @punctuation.bracket)

[
  (autolink)
  (inline_link_destination)
  (link_destination)
  (link_reference_definition)
] @markup.link.url

(footnote
  (reference_label) @markup.link.label)

(footnote_reference
  (reference_label) @markup.link.label)

[
  (footnote_marker_begin)
  (footnote_marker_end)
] @punctuation.bracket

(todo) @comment.todo

(note) @comment.note

(fixme) @comment.error

[
  (paragraph)
  (comment)
  (table_cell)
] @spell

[
  (autolink)
  (inline_link_destination)
  (link_destination)
  (code_block)
  (raw_block)
  (math)
  (raw_inline)
  (verbatim)
  (reference_label)
  (class)
  (class_name)
  (identifier)
  (key_value)
  (frontmatter)
] @nospell

(full_reference_link
  (link_label) @nospell)

(full_reference_image
  (link_label) @nospell)
]==],
    ["indents.scm"] = [==[
; The intention here is to rely on Neovims `autoindent` setting.
; This allows us to not indent after just a single list item
; so we can create narrow lists quickly, but indent blocks inside list items
; to the previous paragraph.
(list_item_content) @indent.auto

(footnote_content) @indent.align

((table_caption) @indent.begin
  (#set! indent.immediate 1))
]==],
    ["injections.scm"] = [==[
((comment) @injection.content
  (#set! injection.language "comment"))

(code_block
  (language) @injection.language
  (code) @injection.content)

(raw_block
  (raw_block_info
    (language) @injection.language)
  (content) @injection.content)

(raw_inline
  (content) @injection.content
  (raw_inline_attribute
    (language) @injection.language))

(frontmatter
  (language) @injection.language
  (frontmatter_content) @injection.content)
]==],
    ["locals.scm"] = [==[
(link_reference_definition
  (link_label) @local.definition)

(footnote
  (reference_label) @local.definition)

(collapsed_reference_link
  (link_text) @local.reference)

(full_reference_link
  (link_label) @local.reference)

(full_reference_image
  (link_label) @local.reference)

(footnote_reference
  (reference_label) @local.reference)
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
