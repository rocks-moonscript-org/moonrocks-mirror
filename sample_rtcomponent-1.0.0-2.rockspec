package = "Sample_RTComponent"
version = "1.0.0-2"
source = {
   url = "git://github.com/Nobu19800/Sample_RTComponent"
}

description = {
   summary = "ModuleDescription",
   detailed = [[

   ]],
   homepage = "",
   license = ""
}

dependencies = {
   "openrtm >= 0.0"
}

build = {
    type = "builtin",
    modules = {
      ["Sample_RTComponent"] = "Sample_RTComponent.lua",
    },
    install = {
      lua = {
    }
  }
}
