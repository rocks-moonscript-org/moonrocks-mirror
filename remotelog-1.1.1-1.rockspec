rockspec_format = "3.0"

package = "remotelog"
version = "1.1.1-1"

source = {
    url = 'git://github.com/exasol/remotelog-lua',
    tag = "1.1.1"
}

description = {
    summary = "(Remote) logging for Exasol and other Lua contexts",
    detailed = [["remotelog" provides a logger for Lua that can log message to a remote log receiver listening on a TCP
    port of a host reachable from the machine producing the log entries.
    
    It can also be used for simple console logging. If the connection cannot be established, the log automatically
    falls back to STDOUT (in some cases this will at least let the messages appear in a local log file).
     
    "remotelog" depends on LuaSocket (MIT license). Note that on an Exasol cluster LuaSocket is pre-installed.

    You can find the  user guide in the projects GitHub repository.
    
    Links:
    
    - LuaSocket: http://w3.impa.br/~diego/software/luasocket/
    - User guide: https://github.com/exasol/remotelog-lua/blob/master/doc/user_guide/user_guide.md]],
    homepage = "https://github.com/exasol/remotelog-lua",
    license = "MIT",
    maintainer = 'Exasol <opensource@exasol.com>'
}

dependencies = {"lua >= 5.1, < 5.5", "luasocket > 2.0.2-6"}

build_dependencies = {"luacheck >= 0.25.0", "luacov >= 0.15.0", "luacov-coveralls >= 0.2.3", "luaunit >= 3.4",
     "mockagne >= 1.0-2"}

build = {
    type = "builtin",
    modules = {remotelog = "src/remotelog.lua"},
    copy_directories = { "doc", "test" }
}
