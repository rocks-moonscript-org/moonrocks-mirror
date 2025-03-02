package = "shazam-arm64"
version = "1.0.0-1"

source = {
    url = "file://./src_arm64.tar.gz",
    dir = "src_arm64"
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
            shazam = "shazam.so"
        }
    },
}
