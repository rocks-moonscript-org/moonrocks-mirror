package = "xctrl"
version = "20101026-1"

source = {
  dir = "xctrl-2010-10-26", 
  url = "http://jkp.t35.com/files/xctrl-2010-10-26.tar.gz", 
}

description = {
  summary = "module to query and manipulate X11 managers and windows", 
  homepage = "http://jkp.t35.com/lua/", 
  license = "GPL2", 
  maintainer = "yetanothergeek@gmail.com", 
  detailed = [[
xctrl can do things like return a list of all top-level windows, retrieve window
information, set title and position of windows, work with the X cliipboard,
and send fake keyboard events to a window. (Author Jeff Pohlmeyer)
]]
}

supported_platforms = {
  "unix", 
}

external_dependencies = {
    X11 = {
        header = "X11/Xmu/WinUtil.h"
    }
}

build = {
  type = "builtin", 
  modules = {
    xctrl = {
      defines = {
        "VERSION=1.08a", 
      },
      sources = {
        "src/xctrl.c", 
        "src/lxctrl.c", 
      },
      incdirs = {
        ".", 
      },
      libraries = {
        "X11", 
        "Xmu", 
      }
    }
  },
  copy_directories = {
    "doc", 
  }
}

