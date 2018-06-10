package = "libqrpng"
version = "0.1-0"
source = {
    url = "git://github.com/p0pr0ck5/libqrpng",
    tag = "0.1",    
}
description = {
    summary = "Create QR codes as png files",
}
build = {
    type = "builtin",
    modules = {
        qrpng = {
            sources = "qrpng.c",
            libraries = { "qrencode", "png" },
            external_dependencies = {
                LIBQRENCODE = {
                    header = "qrencode.h",
                },
                LIBPNG = {
                    header = "png.h",
                },
            }
        },
    },
}
