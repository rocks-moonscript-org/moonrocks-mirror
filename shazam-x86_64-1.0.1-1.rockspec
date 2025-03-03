package = "shazam-x86_64"
version = "1.0.1-1"

source = {
    url = "file://./src_x86_64.tar.gz",
    dir = "x86_64"
}

description = {
    summary = "Shazam For lua",
    detailed = "Shazam For lua Recognize Songs",
    homepage = "https://github.com/BDXBB",
    license = "EULA",
}

dependencies = {
    "lua >= 5.3",
}

build = {
    type = "none",
    install = {
        lib = {
            Shazam = "shazam.so"
        }
    },
}
