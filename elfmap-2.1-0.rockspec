package = "elfmap"
version = "2.1-0"
source = {
    url = "git://github.com/liaozhaoyan/elfmap",
}
description = {
    summary = "get all elf file symbols.",
    license = "MIT",
    homepage = "https://github.com/liaozhaoyan/elfmap",
    detailed = [[
get all elf file symbols.
]],
}
dependencies = {
    "lua >= 5.1",

}
external_dependencies = {
    ELF = {
        header = "elf.h"
    },
    LIBELF = {
        header = "libelf.h",
        library = "elf"
    },
    GELF = {
        header = "gelf.h"
    },
    SYS_STAT = {
        header = "sys/stat.h"
    }
}
build = {
    type = "builtin",
    modules = {
        ['elfmap'] = {
            sources = {"elfmap.c"},
        }
    },
}