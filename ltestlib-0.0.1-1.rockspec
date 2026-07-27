package = "ltestlib"
version = "0.0.1-1"

if ((version:match("^dev")) or (version:match("^scm"))) then
    source = {
        url = [=[git+https://github.com/luau-project/ltestlib.git]=],
        branch = "main"
    }
else
    source = {
        url = [=[git+https://github.com/luau-project/ltestlib.git]=],
        tag = "v0.0.1"
    }
end

description = {
    homepage = [=[https://github.com/luau-project/ltestlib]=],
    summary = [[Yet another test library for Lua]],
    detailed = [=[
Yes, this is yet another test library for Lua, but with very specific goals.

Visit the repository for more information.]=],
    license = "Unlicense OR MIT"
}

dependencies = {
    "lua >= 5.1"
}

build = {
    type = "builtin",
    modules = {
        ["ltestlib"] = "ltestlib.lua"
    }
}
