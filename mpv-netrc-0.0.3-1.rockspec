package = 'mpv-netrc'
version = '0.0.3-1'
source = { tag = 'v0.0.3', url = 'git+https://github.com/Tatsh/mpv-netrc.git' }
description = {
  detailed = [[
    An mpv script to read usernames and passwords from ~/.netrc. See
    https://www.gnu.org/software/inetutils/manual/html_node/The-_002enetrc-file.html.
    ]],
  homepage = 'https://github.com/Tatsh/mpv-netrc',
  issues_url = 'https://github.com/Tatsh/mpv-netrc/issues',
  labels = { 'lua', 'mpv', 'mpv-script', 'netrc' },
  license = 'MIT <http://opensource.org/licenses/MIT>',
  summary = 'An mpv script to read usernames and passwords from ~/.netrc.'
}
dependencies = { 'lua >= 5.1' }
build = { type = 'builtin', modules = { netrc = 'netrc.lua' } }
test_dependencies = { 'busted', 'luacov', 'luacov-coveralls' }
test = { type = 'busted' }
rockspec_format = '3.0'
