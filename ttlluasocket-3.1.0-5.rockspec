package = "ttlLuaSocket"
version = "3.1.0-5"
source = {
  url = "git+https://github.com/TonyLau00/luasocket.git",
  tag = "master"
}
description = {
  summary = "Network support for the Lua language",
  detailed = [[
      LuaSocket is a Lua extension library composed of two parts: a set of C
      modules that provide support for the TCP and UDP transport layers, and a
      set of Lua modules that provide functions commonly needed by applications
      that deal with the Internet.
   ]],
  homepage = "https://github.com/TonyLau00/luasocket",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}

local function make_plat(plat)
  local defines = {
    unix = {
      "LUASOCKET_DEBUG"
    },
    macosx = {
      "LUASOCKET_DEBUG",
      "UNIX_HAS_SUN_LEN"
    },
    win32 = {
      "LUASOCKET_DEBUG",
      "NDEBUG"
    },
    mingw32 = {
      "LUASOCKET_DEBUG",
      -- "LUASOCKET_INET_PTON",
      "WINVER=0x0501"
    }
  }
  local modules = {
    ["socket.core"] = {
      sources = {
        "src/luasocket.c",
        "src/timeout.c",
        "src/buffer.c",
        "src/io.c",
        "src/auxiliar.c",
        "src/options.c",
        "src/inet.c",
        "src/except.c",
        "src/select.c",
        "src/tcp.c",
        "src/udp.c",
        "src/compat.c"
      },
      defines = defines[plat],
      incdir = "src",
      -- 靜態庫配置 --
      lib = "core.a",
      variables = {
        CC = "gcc",
        LIB_EXTENSION = "a",  -- 指定生成靜態庫
        CFLAGS = "-fPIC -O2", -- 編譯選項
        LIBFLAG = "-static",  -- 靜態庫標誌
        AR = "ar rcs"         -- 使用 ar 工具生成靜態庫
      }
    },
    ["mime.core"] = {
      sources = { "src/mime.c", "src/compat.c" },
      defines = defines[plat],
      incdir = "src",
      -- 靜態庫配置 --
      lib = "core.a",
      variables = {
        CC = "gcc",
        LIB_EXTENSION = "a",  -- 指定生成靜態庫
        CFLAGS = "-fPIC -O2", -- 編譯選項
        LIBFLAG = "-static",  -- 靜態庫標誌
        AR = "ar rcs"         -- 使用 ar 工具生成靜態庫
      }
    },
    ["socket.http"]    = "src/http.lua",
    ["socket.url"]     = "src/url.lua",
    ["socket.tp"]      = "src/tp.lua",
    ["socket.ftp"]     = "src/ftp.lua",
    ["socket.headers"] = "src/headers.lua",
    ["socket.smtp"]    = "src/smtp.lua",
    ltn12              = "src/ltn12.lua",
    socket             = "src/socket.lua",
    mime               = "src/mime.lua"
  }
  if plat == "unix"
    or plat == "macosx"
    or plat == "haiku"
  then
    modules["socket.core"].sources[#modules["socket.core"].sources+1] = "src/usocket.c"
    if plat == "haiku" then
      modules["socket.core"].libraries = {"network"}
    end
    modules["socket.unix"] = {
      sources = {
        "src/buffer.c",
        "src/compat.c",
        "src/auxiliar.c",
        "src/options.c",
        "src/timeout.c",
        "src/io.c",
        "src/usocket.c",
        "src/unix.c",
        "src/unixdgram.c",
        "src/unixstream.c"
      },
      defines = defines[plat],
      incdir = "src",
      -- 靜態庫配置 --
      lib = "core.a",
      variables = {
        CC = "gcc",
        LIB_EXTENSION = "a",  -- 指定生成靜態庫
        CFLAGS = "-fPIC -O2", -- 編譯選項
        LIBFLAG = "-static",  -- 靜態庫標誌
        AR = "ar rcs"         -- 使用 ar 工具生成靜態庫
      }
    }
    modules["socket.serial"] = {
      sources = {
        "src/buffer.c",
        "src/compat.c",
        "src/auxiliar.c",
        "src/options.c",
        "src/timeout.c",
        "src/io.c",
        "src/usocket.c",
        "src/serial.c"
      },
      defines = defines[plat],
      incdir = "src",
      -- 靜態庫配置 --
      lib = "core.a",
      variables = {
        CC = "gcc",
        LIB_EXTENSION = "a",  -- 指定生成靜態庫
        CFLAGS = "-fPIC -O2", -- 編譯選項
        LIBFLAG = "-static",  -- 靜態庫標誌
        AR = "ar rcs"         -- 使用 ar 工具生成靜態庫
      }
    }
  end
  if  plat == "win32"
    or plat == "mingw32"
  then
    modules["socket.core"].sources[#modules["socket.core"].sources+1] = "src/wsocket.c"
    modules["socket.core"].libraries = { "ws2_32" }
    modules["socket.core"].libdirs = {}
  end
  return { modules = modules }
end

build = {
  type = "make",
  platforms = {
    unix = make_plat("unix"),
    macosx = make_plat("macosx"),
    haiku = make_plat("haiku"),
    win32 = make_plat("win32"),
    mingw32 = make_plat("mingw32")
  },
  copy_directories = {
    "docs",
    "samples",
    "test"
  }
}