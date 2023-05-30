rockspec_format = "3.0"
package = "exaerror"
local tag = "2.0.3"
version = tag .. "-1"

source = {
    url = 'git://github.com/exasol/error-reporting-lua',
    tag = tag
}

description = {
    summary = "Uniform error objects for Lua",
    labels = {"error-reporting", "builder"},
    detailed = [["exaerror" lets you define errors with a uniform set of attributes. The created error objects can be used in places where strings are expected like in string concatenation.

    And you can conveniently raise a Lua `error` from them.

    Additionally the resulting code is made to be parsable, so that you can extract an error catalog from the code.

    You can find the user guide in the project's GitHub repository.
    
    Links:
    
    - User guide: https://github.com/exasol/error-reporting-lua/blob/master/doc/user_guide/user_guide.md]],
    homepage = "https://github.com/exasol/error-reporting-lua",
    issues_url = "https://github.com/exasol/error-reporting-lua/issues",
    license = "MIT",
    maintainer = 'Exasol <opensource@exasol.com>'
}

dependencies = {"lua >= 5.1, < 5.5"}

test_dependencies = {
    "busted >= 2.0.0-1",
    "luacov >= 0.15.0-1",
    "luacheck >= 0.26.1-1"
}

build = {
    type = "builtin",
    modules = {
        ExaError = "src/ExaError.lua",
        MessageExpander = "src/MessageExpander.lua"
    },
    copy_directories = { "doc" }
}

test = {
    type = "busted"
}