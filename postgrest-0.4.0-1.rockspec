package = "postgrest"
version = "0.4.0-1"
source = {
    url = "git+https://github.com/AndreMiras/postgrest-lua",
    tag = "0.4.0"
}
description = {
    summary = "PostgREST Lua library.",
    detailed = "A PostgREST (and Supabase) library written in pure Lua",
    homepage = "https://github.com/AndreMiras/postgrest-lua",
    license = "MIT"
}
dependencies = {"http >= 0.4"}
build = {
    type = "builtin",
    modules = {
        ["postgrest.database"] = "postgrest/database.lua",
        ["postgrest.query_builder"] = "postgrest/query_builder.lua",
        ["postgrest.utils"] = "postgrest/utils.lua"
    }
}
