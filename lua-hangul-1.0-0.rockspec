package = "lua-hangul"
version = "1.0-0"

source = {
    url = "git://github.com/gonapps-org/lua-hangul",
    tag = "v1.0-0"
}

description = {
    summary = "libhangul lua binding",
    detailed = [[]],
    homepage = "http://github.com/gonapps-org/lua-hangul",
    license = "LGPLv2"
}

dependencies = {
    "lua >= 5.1",
}

external_dependencies = {
  hangul = {
    header = "hangul-1.0/hangul.h",
    library = "hangul"
  }
}

build = {
    type = "builtin",
    build_command = "mkdir -p build; cd build; cmake ..; cmake --build .;",
    install_command = "cmake --build . --target install",
    modules = {
        ["hangul"] = {
            sources = { "src/lua_hangul.c" },
            incdirs = { "$(hangul_INCDIR)/hangul-1.0", },
            libdirs = { "$(hangul_LIBDIR)" },
            libraries = { "hangul" }
        }
    }
}
