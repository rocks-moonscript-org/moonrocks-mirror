package = "linterval"
version = "20180729-1"
source = {
  url = "http://webserver2.tecgraf.puc-rio.br/~lhf/ftp/lua/ar/linterval-100.tar.gz",
  md5 = "39e710d8324c3508f54f65acd766b25f"
}
description = {
  summary = "An interval arithmetic library for Lua based on fi_lib.",
  detailed = [[
    This is an interval arithmetic library for Lua. It is based on the
    FI_LIB available at http://www2.math.uni-wuppertal.de/~xsc/software/filib.html
  ]],
  homepage = "http://webserver2.tecgraf.puc-rio.br/~lhf/ftp/lua/",
  license = "MIT",
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type= "builtin",
  modules = {
     interval = {
        sources = {
          "linterval.c",
          "src/j_acos.c",
          "src/j_acot.c",
          "src/j_acsh.c",
          "src/j_acth.c",
          "src/j_asin.c",
          "src/j_asnh.c",
          "src/j_atan.c",
          "src/j_atnh.c",
          "src/j_cos.c",
          "src/j_cosh.c",
          "src/j_cot.c",
          "src/j_coth.c",
          "src/j_erf.c",
          "src/j_ex10.c",
          "src/j_exp2.c",
          "src/j_exp.c",
          "src/j_expm.c",
          "src/j_lg10.c",
          "src/j_lg1p.c",
          "src/j_log2.c",
          "src/j_log.c",
          "src/j_sin.c",
          "src/j_sinh.c",
          "src/j_sqr.c",
          "src/j_sqrt.c",
          "src/j_tan.c",
          "src/j_tanh.c",
          "src/q_acos.c",
          "src/q_acot.c",
          "src/q_acsh.c",
          "src/q_acth.c",
          "src/q_ari.c",
          "src/q_asin.c",
          "src/q_asnh.c",
          "src/q_atan.c",
          "src/q_atn1.c",
          "src/q_atnh.c",
          "src/q_comp.c",
          "src/q_cos1.c",
          "src/q_cos.c",
          "src/q_cosh.c",
          "src/q_cot.c",
          "src/q_coth.c",
          "src/q_cth1.c",
          "src/q_ep1.c",
          "src/q_epm1.c",
          "src/q_erf.c",
          "src/q_ex10.c",
          "src/q_exp2.c",
          "src/q_exp.c",
          "src/q_expm.c",
          "src/q_glbl.c",
          "src/q_lg10.c",
          "src/q_log1.c",
          "src/q_log2.c",
          "src/q_log.c",
          "src/q_pred.c",
          "src/q_prnt.c",
          "src/q_rtrg.c",
          "src/q_scan.c",
          "src/q_sin1.c",
          "src/q_sin.c",
          "src/q_sinh.c",
          "src/q_sqr.c",
          "src/q_sqrt.c",
          "src/q_succ.c",
          "src/q_tan.c",
          "src/q_tanh.c"
        },
        incdirs = {
          "./src"
        }
     }
  }
}