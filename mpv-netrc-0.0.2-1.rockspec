package = 'mpv-netrc'
version = '0.0.2-1'
source = {tag = 'v0.0.2', url = 'git+ssh://git@github.com/Tatsh/mpv-netrc.git'}
description = {detailed = [[
    An mpv script to read usernames and passwords from ~/.netrc. See _[The .netrc file](https://www.gnu.org/software/inetutils/manual/html_node/The-_002enetrc-file.html)_.
    ]], homepage = 'https://github.com/Tatsh/mpv-netrc',
               issues_url = 'https://github.com/Tatsh/mpv-netrc/issues',
               license = 'MIT <http://opensource.org/licenses/MIT>',
               summary = 'An mpv script to read usernames and passwords from ~/.netrc.'}
dependencies = {'lua >= 5.1'}
build = {type = 'builtin', modules = {netrc = 'netrc.lua'}}
test_dependencies = {'busted', 'luacov', 'luacov-coveralls'}
test = {type = 'busted'}
rockspec_format = '3.0'
