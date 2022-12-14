rockspec_format = "3.0"
package = "abletonlink"
version = "1.0.0-1"
source = {
  url = 'git+https://git.s-ol.nu/lua-abletonlink.git',
  tag = 'v1.0.0',
}
description = {
  summary = "Ableton Link bindings for Lua",
  detailed = [[
Lightweight wrapper of the Ableton Link C API (abl_link).

https://github.com/Ableton/link/tree/master/extensions/abl_link
  ]],
  homepage = "https://git.s-ol.nu/lua-abletonlink/-/",
  license = "GPL-2.0-or-later",
}

dependencies = {
  "lua >= 5.1",
}
build = {
  type = 'builtin',
  modules = {
    -- C module
    abletonlink = {
      sources = {
        'abletonlink.c',
        'link/extensions/abl_link/src/abl_link.cpp',
      },
      incdirs   = {'link/include', 'link/extensions/abl_link/include'},
      libraries = {'stdc++'},
    },
  },
  platforms = {
    linux = {
      modules = {
        abletonlink = {
          defines = {'LINK_PLATFORM_LINUX'},
        },
      },
    },
    windows = {
      modules = {
        abletonlink = {
          defines = {'LINK_PLATFORM_WINDOWS'},
        },
      },
    },
    macosx = {
      modules = {
        abletonlink = {
          defines = {'LINK_PLATFORM_MACOSX'},
        },
      },
    },
  },
}
