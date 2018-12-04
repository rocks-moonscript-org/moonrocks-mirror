package = "ccrunx"
version = "1.0-1"

source  = {
  url   = "https://github.com/daelvn/ccrunx",
  tag   = "v1.0"
}

description = {
  summary  = "Wrapper around CCEmuX to create environments and run projects",
  detailed = [[
    Better version of the ccrun wrapper, which lets you create environments, run projects in different
    computers, attach files permanently, and keep your debugging organized.
  ]],
  homepage = "https://github.com/daelvn/ccrunx",
  license  = "MIT/X11"
}

dependencies = {
  "lrunkit",
  "ltext"
}

build = {
  type = "builtin",
  modules = {},
  install = {
    bin = {
      ccrunx = "ccrunx"
    }
  }
}
