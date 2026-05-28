rockspec_format = "3.0"
package = "pure_hash"
version = "1.0.2-1"
build = {
    type = "builtin",
    modules = {
        ["pure_hash.hashing"] = "pure_hash/hashing.lua",
        ["pure_hash.init"] = "pure_hash/init.lua",
        ["pure_hash.salting"] = "pure_hash/salting.lua",
        ["pure_hash.utils"] = "pure_hash/utils/utils.lua",
        ["pure_hash.verify"] = "pure_hash/verify.lua",
    }
}



source = {
    url = "https://github.com/otsuli/pure_hash/archive/refs/tags/v1.0.2.tar.gz",
    dir = "pure_hash-1.0.2"
}

description = {
    summary = "A pure lua sha-256 hashing library.",
    detailed = "pure hash is a sha-256 hashing library written with pure lua. It's meant to be used for projects requiring pure lua libraries, but it can be used for whatever you'd like.",
    homepage =  "https://github.com/otsuli/pure_hash", 
    issues_url = "https://github.com/otsuli/pure_hash/issues",
    maintainer = "Otso Reijonen <otso.reijonen@icloud.com>"
}
