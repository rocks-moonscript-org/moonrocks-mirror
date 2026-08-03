package = "lnuminfo"
version = "0.0.1-1"

if ((version:match("^dev")) or (version:match("^scm"))) then
    source = {
        url = [=[git+https://github.com/luau-project/lnuminfo.git]=],
        branch = "main"
    }
else
    source = {
        url = [=[git+https://github.com/luau-project/lnuminfo.git]=],
        tag = "v0.0.1"
    }
end

description = {
    homepage = [=[https://github.com/luau-project/lnuminfo]=],
    summary = [[Detect characteristics of Lua numbers.]],
    detailed = [=[
Detect characteristics of floating-point numbers in pure Lua.

Visit the repository for more information.]=],
    license = "MIT"
}

dependencies = {
    "lua >= 5.1"
}

build = {
    type = "builtin",
    modules = {
        ["lnuminfo"] = "lnuminfo.lua"
    }
}
