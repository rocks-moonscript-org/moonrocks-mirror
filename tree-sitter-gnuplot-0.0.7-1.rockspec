local git_ref = '3c895f5d9c0b3a3c7e02383766b462c21913c000'
local modrev = '0.0.7'
local specrev = '1'

local repo_url = 'https://github.com/dpezto/tree-sitter-gnuplot'

rockspec_format = '3.0'
package = 'tree-sitter-gnuplot'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for gnuplot',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/dpezto/tree-sitter-gnuplot',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 5.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-gnuplot-' .. '3c895f5d9c0b3a3c7e02383766b462c21913c000',
}

build = {
  type = "treesitter-parser",
  lang = "gnuplot",
  parser = true,
  generate = false,
  generate_from_json = false,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["highlights.scm"] = [==[
; highlights.scm
(comment) @comment @spell

(identifier) @variable

[
  "-"
  "+"
  "~"
  "!"
  "$"
  "|"
  "**"
  "*"
  "/"
  "%"
  "=="
  "!="
  "<"
  "<="
  ">"
  ">="
  "<<"
  ">>"
  "&"
  "^"
  "&&"
  "||"
  "="
  ","
  "."
] @operator

[
  "eq"
  "ne"
] @keyword.operator

(ternary_expression
  [
    "?"
    ":"
  ] @keyword.conditional.ternary)

"sum" @function.builtin

[
  "for"
  "in"
  "do"
  "while"
] @keyword.repeat

[
  (c_break)
  (c_cd)
  (c_clear)
  "evaluate"
  "fit"
  "help"
  "load"
  "lower"
  "print"
  (c_replot)
  (c_reread)
  "reset"
  "splot"
  "cmd"
  "test"
  "undefine"
  "vfill"
] @keyword

(c_pause
  "pause" @keyword
  "mouse" @variable.member
  _? @attribute
  (","
    _ @attribute)?)

(c_plot
  "plot" @keyword)

(c_show
  "show" @keyword
  "plot"? @attribute)

(c_stats
  "stats" @keyword
  ("name"
    (_))? @variable.member)

[
  "via"
  "inverse"
  "sample"
] @keyword.function

[
  "if"
  "else"
] @keyword.conditional

(plot_element
  "axes"? @variable.member)

(cntrparam
  "auto"? @variable.member)

(colorbox
  "origin"? @attribute)

(contourfill
  "auto"? @variable.member)

(format
  _? @attribute
  (_)
  _? @attribute)

(key
  "auto"? @variable.member)

(style ; TODO: complete
  [
    "arrow"
    "boxplot"
    ("data"
      [
        (_)
        "spiderplot" @attribute
      ])
    "fs"
    "function"
    "line"
    "circle"
    "rectangle"
    "ellipse"
    "parallelaxis"
    ; (spiderplot) ; TODO: complete
    "textbox"
    ("watchpoint"
      "labels" @attribute
      (_)?)
  ] @variable.member)

(terminal
  "name" @variable.member)

; TODO: complete terminals in grammar and then simplify its options here
(t_cairolatex
  [
    "eps"
    "pdf"
    "png"
    "standalone"
    "input"
    "blacktext"
    "colortext"
    "colourtext"
    ("header"
      (_))
    "mono"
    "color"
    "background"
    "rounded"
    "butt"
  ]* @attribute)

; (t_canvas)
; (t_cgm)
; (t_context)
; (t_domterm)
; (t_dumb)
; (t_dxf)
; (t_emf)
; (t_epscairo)
; (t_epslatex)
; (t_fig)
; (t_gif)
; (t_hpgl)
; (t_jpeg)
; (t_lua)
; (t_pc15)
; (t_pdfcairo)
; (t_png)
; (t_pngcairo)
; (t_postscript)
; (t_pslatex)
; (t_pstricks)
; (t_qt)
; (t_sixelgd)
; (t_svg [(font_spec)]* @attribute)
; (t_tek4xxx)
; (t_texdraw)
; (t_tikz)
; (t_tkcanvas)
(plot_style
  [
    "lines"
    "points"
    "lp"
    "financebars"
    "dots"
    "impulses"
    "labels"
    "surface"
    "steps"
    "fsteps"
    "histeps"
    "arrows"
    "vectors"
    "sectors"
    "contourfill"
    "errorbar"
    "errorlines"
    "parallelaxes"
    "boxes"
    "boxerrorbars"
    "boxxyerror"
    "isosurface"
    "boxplot"
    "candlesticks"
    "circles"
    "zerrorfill"
    "ellipses"
    "filledcurves"
    "fillsteps"
    "histograms"
    "image"
    "spiderplot"
    "pm3d"
    "rgbalpha"
    "rgbimage"
    "polygons"
    "table"
    "mask"
  ] @attribute)

[
  "tc"
  "fc"
  "fs"
  "lc"
  "ls"
  "lw"
  "lt"
  "pt"
  "ps"
  "pi"
  "pn"
  "dt"
  "as"
  "start"
  "cycles"
  "saturation"
  "interval"
  "format"
  "keywidth"
  "samplen"
  "columns"
  "title"
  "notitle"
  "every"
  "index"
  "using"
  "with"
  "frac"
  "cb"
  "arg"
  "prefix"
  "output"
  "primary"
  "specular"
  "spec2"
  "firstlinetype"
  "width"
  "height"
  "expand"
  "array"
  "dx"
  "dy"
  "dz"
  "filetype"
  "center"
  "record"
] @variable.member

; Workaround because formatter cannot handle 300 list nodes
[
  (angles)
  (clip)
  (colorsequence)
  (contour)
  (encoding)
  (mapping)
  (xdata)
  (theta)
  "wall"
  "on"
  "off"
  "opaque"
  "inside"
  "outside"
  "margin"
  "cen"
  "lef"
  "rig"
  "top"
  "bot"
  "lr"
  "a"
  "maxcols"
  "maxrows"
  "autojustify"
  "overlap"
  "spread"
  "wrap"
  "swarm"
  "range"
  "label"
  "mixed"
  "triangles"
  "insidecolor"
  "noinsidecolor"
  "cycle"
  "tics"
  "ztics"
  "cbtics"
  "user"
  "front"
  "back"
  "bdefault"
  "time"
  "palette"
  "terminal"
  "onecolor"
  "invert"
  "reverse"
  "writeback"
  "extend"
  "restore"
  "linear"
  "cubicspline"
  "bspline"
  "points"
  "order"
  "levels"
  "sorted"
  "autofreq"
  "add"
  "inout"
  "axis"
  "mirror"
  "type"
  "rowsfirst"
  "columnsfirst"
  "downwards"
  "upwards"
  "prevnext"
  "gray"
  "color"
  "gamma"
  "defined"
  "cubehelix"
  "model"
  "maxcolors"
  "file"
  "colormap"
  "rgbformulae"
  "viridis"
  "positive"
  "negative"
  "nops_allcF"
  "ps_allcF"
  "quiet"
  "full"
  "trip"
  "numbers"
  "small"
  "large"
  "fullwidth"
  "append"
  "bind"
  "errors"
  "session"
  "behind"
  "polar"
  "layerdefault"
  "locale"
  "axes"
  "fix"
  "keepfix"
  "noextend"
  "head"
  "fixed"
  "filled"
  "nofilled"
  "absolute"
  "at"
  "relative"
  "enhanced"
  "border"
  "noborder"
  "rgbcolor"
  "empty"
  "black"
  "bgnd"
  "nodraw"
  "size"
  "new"
  "first"
  "second"
  "screen"
  "graph"
  "character"
  "trianglepattern"
  "undefined"
  "noundefined"
  "altdiagonal"
  "bentover"
  "vertical"
  "horizontal"
  "square"
  "ratio"
  "noratio"
  "solid"
  "transparent"
  "pattern"
  "from"
  "to_rto"
  "length"
  "angle"
  "columnheaders"
  "fortran"
  "nofpe_trap"
  "missing"
  "separator"
  "commentschars"
  "log"
  "rangelimited"
  "offset"
  "nooffset"
  "scale"
  "font"
  "point"
  "nopoint"
  "boxed"
  "noboxed"
  "hypertext"
  "defaults"
  "keyentry"
  "splines"
  "qnorm"
  "gauss"
  "cauchy"
  "exp"
  "box"
  "hann"
  "implicit"
  "explicit"
  "rotate"
  "by"
  "parallel"
  "norotate"
  "map"
  "projection"
  "equal"
  "azimuth"
  "nohidden3d"
  "nocontours"
  "nosurface"
  "colornames"
  "functions"
  "variables"
  "version"
  "nologfile"
  "logfile"
  "fit_out"
  "errorvariables"
  "covariancevariables"
  "errorscaling"
  "prescale"
  "maxiter"
  "limit"
  "limit_abs"
  "start-lambda"
  "lambda-factor"
  "script"
  "clip"
  "fontscale"
  "lighting"
  "depthorder"
  "interpolate"
  "corners2color"
  "flush"
  "scanorder"
  "hidden3d"
  "clipcb"
  "layout"
  "margins"
  "spacing"
  "smooth"
  "binary"
  "skip"
  "bins"
  "binrange"
  "binwidth"
  "binvalue"
  "mask"
  "convexhull"
  "concavehull"
  "volatile"
  "zsort"
  "nonuniform"
  "sparse"
  "matrix"
] @attribute

[
  "x1"
  "x2"
  "y1"
  "y2"
  "y"
  "r"
  "z"
  "xy"
  "xz"
  "yz"
  "xyz"
  "x1y1"
  "x2y2"
  "x1y2"
  "x2y1"
  "columnheader"
  "seconds"
  "minutes"
  "hours"
  "days"
  "weeks"
  "months"
  "years"
  "cm"
  "in"
  "discrete"
  "incremental"
  "default"
  "long"
  "nogrid"
  "unique"
  "frequency"
  "fnormal"
  "cumulative"
  "cnormal"
  "csplines"
  "acsplines"
  "mcsplines"
  "path"
  "bezier"
  "sbezier"
  "unwrap"
  "kdensity"
  "closed"
  "between"
  "above"
  "below"
  "variable"
  "pixels"
  "RGB"
  "CMY"
  "HSV"
  "base"
  "begin"
  "center"
  "end"
  "ftriangles"
  "clip1in"
  "clip4in"
  "c2c"
  "retrace"
  "whitespace"
  "tab"
  "comma"
  "push"
  "pop"
  "flipx"
  "flipy"
  "flipz"
] @variable.member

(colorspec
  "palette" @attribute)

(datafile_modifiers
  "origin"? @variable.member)

((datafile_modifiers
  filetype: (identifier) @variable.member)
  (#any-of? @variable.member
    "avs" "bin" "edf" "ehf" "gif" "gpbin" "jpeg" "jpg" "png" "raw" "rgb" "auto"))

(macro) @function.macro

(datablock) @function.macro

(function
  name: (identifier) @function)

((function
  name: (identifier) @function.builtin)
  (#any-of? @function.builtin
    "abs" "acos" "acosh" "airy" "arg" "asin" "asinh" "atan" "atan2" "atanh" "besj0" "besj1" "besjn"
    "besy0" "besy1" "besyn" "besi0" "besi1" "besin" "cbrt" "ceil" "conj" "cos" "cosh" "EllipticK"
    "EllipticE" "EllipticPi" "erf" "erfc" "exp" "expint" "floor" "gamma" "ibeta" "inverf" "igamma"
    "imag" "int" "invnorm" "invibeta" "invigamma" "LambertW" "lambertw" "lgamma" "lnGamma" "log"
    "log10" "norm" "rand" "real" "round" "sgn" "sin" "sinh" "sqrt" "SynchrotronF" "tan" "tanh"
    "uigamma" "voigt" "zeta" "cerf" "cdawson" "faddeva" "erfi" "FresnelC" "FresnelS" "VP" "VP_fwhm"
    "Ai" "Bi" "BesselH1" "BesselH2" "BesselJ" "BesselY" "BesselI" "BesselK" "gprintf" "sprintf"
    "strlen" "strstrt" "substr" "strptime" "srtftime" "system" "trim" "word" "words" "time"
    "timecolumn" "tm_hour" "tm_mday" "tm_min" "tm_mon" "tm_sec" "tm_wday" "tm_week" "tm_yday"
    "tm_year" "weekday_iso" "weekday_cdc" "column" "columnhead" "exists" "hsv2rgb" "index" "palette"
    "rgbcolor" "stringcolumn" "valid" "value" "voxel"))

((identifier) @variable.builtin
  (#match? @variable.builtin
    "^\\w+_(records|headers|outofrange|invalid|blank|blocks|columns|column_header|index_(min|max)(_x|_y)?|(min|max)(_x|_y)?|mean(_err)?(_x|_y)?|stddev(_err)?(_x|_y)?)$"))

((identifier) @variable.builtin
  (#match? @variable.builtin
    "^\\w+_(sdd(_x|_y)?|(lo|up)_quartile(_x|_y)?|median(_x|_y)?|sum(sq)?(_x|_y)?|skewness(_err)?(_x|_y)?)$"))

((identifier) @variable.builtin
  (#match? @variable.builtin
    "^\\w+_(kurtosis(_err)?(_x|_y)?|adev(_x|_y)?|correlation|slope(_err)?|intercept(_err)?|sumxy|pos(_min|_max)_y|size(_x|_y))$"))

((identifier) @variable.builtin
  (#match? @variable.builtin "^((GPVAL|MOUSE|FIT)_\\w+|GNUTERM|NaN|VoxelDistance|GridDistance|pi)$"))

(array_def
  "array" @keyword.function)

(array
  (identifier) @function)

(number) @number

(string_literal) @string
]==],
    ["injections.scm"] = [==[
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
