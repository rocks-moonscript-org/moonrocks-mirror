package = "remotelog"
version = "1.0.0-1"

source = {
    url = 'https://github.com/exasol/remotelog-lua',
    tag = "1.0.0"
}

description = {
    summary = "(Remote) logging for Exasol and other Lua contexts",
    detailed = [[`remotelog` provides a logger for Lua that can log message to a remote log receiver listening on a TCP
    port of a host reachable from the machine producing the log entries.
    
    It can also be used for simple console logging. If the connection cannot be established, the log automatically
    falls back to STDOUT (in some cases this will at least let the messages appear in a local log file).
     
    `remotelog` depends on [LuaSocket](http://w3.impa.br/~diego/software/luasocket/) (MIT license). Note that on an
    Exasol cluster LuaSocket is pre-installed.

    You can find the [user guide](https://github.com/exasol/remotelog-lua/blob/master/doc/user_guide/user_guide.md) in the
    projects GitHub repository.]],
    homepage = "https://github.com/exasol/remotelog-lua",
    license = "MIT",
    maintainer = 'Exasol <opensource@exasol.com>'
}

dependencies = {"lua >= 5.1, < 5.4", "luasocket > 2.0.2-6"}

-- With support for LuaRocks 3 we will enable the following configuration option. Right now LuaRocks 2 is still the
-- current version on Ubuntu, so it is too early for this.
--
-- rockspec_format = "3.0"
-- build_dependencies = {"luaunit >= 3.3-1", "mockagne >= 1.0-1 "}

build = {
    type = "builtin",
    modules = {remotelog = "src/remotelog.lua"},
    copy_directories = { "doc", "test" }
}
