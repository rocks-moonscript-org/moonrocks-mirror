package = "lua-k8s"
version = "0.1.0-1"

source = {
    url = "git+https://github.com/ruivieira/lua-k8s.git",
    tag = "v0.1.0",
}

description = {
    summary = "Kubernetes and OpenShift client for Lua, backed by oc or kubectl",
    detailed = [[
Answers "does this object exist, and wait for it" through the cluster CLI
already configured in the caller's environment. Every accessor returns
(value, outcome, detail) and distinguishes "missing" from "cannot read", so a
caller can tell an absent object from an RBAC or connectivity failure.

Pure Lua: no C modules and no third-party dependencies. It stays inside the
Lua 5.1/LuaJIT subset, which is what Neovim embeds, and also loads in a
standalone interpreter.
]],
    homepage = "https://github.com/ruivieira/lua-k8s",
    license = "Apache-2.0",
}

dependencies = {
    "lua >= 5.1",
}

build = {
    type = "builtin",
    modules = {
        ["k8s"] = "lua/k8s.lua",
        ["k8s.client"] = "lua/k8s/client.lua",
        ["k8s.primitives"] = "lua/k8s/primitives.lua",
        ["k8s.core"] = "lua/k8s/core.lua",
    },
}
