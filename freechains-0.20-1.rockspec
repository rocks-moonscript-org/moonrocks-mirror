package = "freechains"
version = "0.20-1"

source = {
    url = "git+https://github.com/Freechains/freechains.vcs.git",
    branch = "v0.20",
}

description = {
    summary  = "Permissionless Peer-to-peer Content Dissemination",
    homepage = "https://www.freechains.org/",
    license  = "MIT",
}

dependencies = {
    "lua >= 5.4",
}

build = {
    type = "builtin",
    modules = {
        ["freechains.argparse"]        = "src/freechains/argparse.lua",
        ["freechains.common"]          = "src/freechains/common.lua",
        ["freechains.constants"]       = "src/freechains/constants.lua",
        ["freechains.chain"]           = "src/freechains/chain/init.lua",
        ["freechains.chain.action"]    = "src/freechains/chain/action.lua",
        ["freechains.chain.git"]       = "src/freechains/chain/git.lua",
        ["freechains.chain.consensus"] = "src/freechains/chain/consensus.lua",
        ["freechains.chain.abandon"]   = "src/freechains/chain/abandon.lua",
        ["freechains.chain.sweep"]     = "src/freechains/chain/sweep.lua",
        ["freechains.chain.get"]       = "src/freechains/chain/get.lua",
        ["freechains.chain.like"]      = "src/freechains/chain/like.lua",
        ["freechains.chain.list"]      = "src/freechains/chain/list.lua",
        ["freechains.chain.post"]      = "src/freechains/chain/post.lua",
        ["freechains.chain.reps"]      = "src/freechains/chain/reps.lua",
        ["freechains.chain.rules"]     = "src/freechains/chain/rules.lua",
        ["freechains.chain.ssh"]       = "src/freechains/chain/ssh.lua",
        ["freechains.chain.state"]     = "src/freechains/chain/state.lua",
        ["freechains.chain.sync"]      = "src/freechains/chain/sync.lua",
        ["freechains.chains"]          = "src/freechains/chains.lua",
    },
    install = {
        bin = {
            freechains = "src/freechains.lua",
        },
    },
}
