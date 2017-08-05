package = "hook_nt_create_file"
version = "0.1-1"
source = {
  url = [[...]] -- We don't have one yet
}
description = {
  summary = "NtCreateFile hook",
  detailed = [[
    NtCreateFile hook implementation.
  ]],
  homepage = "http://hyperion.com", -- We don't have one yet
  license = "MIT/X11" -- or whatever you like
}
dependencies = {

}
supported_platforms = {
  "nt"
}
build = {
  type = "builtin",
  modules = {
  },
  symbols = {
    {
      name = "ntkrnlmp.exe",
      globals = {
        "NtOpenFile",
        "NtCreateFile",
        "NtWriteFile",
        "NtClose"
      },
      types = {
        {
          name = "_SID"
        },
        {
          name = "_EX_FAST_REF",
          fields = {"Object"}
        },
        {
          name = "_ETHREAD",
          fields = {"CreateTime", "ExitTime", "StartAddress"}
        }
      }
    }
  }
}