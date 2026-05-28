package = 'mpv-netrc'
version = '0.0.4-1'
source = { tag = 'v0.0.4', url = 'git+https://github.com/Tatsh/mpv-netrc.git' }
description = {
  detailed = [==[
mpv-netrc is an mpv user script that, when mpv opens an http(s) URL,
looks up matching credentials in your ~/.netrc file and rewrites the
URL to include them, so you can stream password-protected media
without typing or embedding credentials in the command line.

For background on the netrc file format, see
https://www.gnu.org/software/inetutils/manual/html_node/The-_002enetrc-file.html.

Installing into mpv
-------------------

LuaRocks installs the script as a Lua module under the rocks tree
(typically ~/.luarocks/share/lua/<lua-version>/netrc.lua). mpv does
not load scripts from the rocks tree, so after running
`luarocks install mpv-netrc` you still need to make netrc.lua
available to mpv. On Linux/macOS:

    ln -s "$(luarocks which netrc | head -n1)" \
      ~/.config/mpv/scripts/netrc.lua

Alternatively, copy the file or fetch netrc.lua directly from the
project repository and place it in ~/.config/mpv/scripts/ (or the
equivalent scripts/ directory inside your mpv config on other
platforms).

netrc format
------------

Only single-line entries are supported. Each entry must match:

    machine HOSTNAME login USERNAME password PASSWORD

HOSTNAME is matched against the host portion of the URL mpv is
loading (no leading scheme, no path). URLs that already embed
credentials (anything containing "@" before the path) are skipped.
Make sure ~/.netrc is readable only by you (chmod 600 ~/.netrc).

Configuration
-------------

By default the script reads ~/.netrc. To use a different file, either:

  * Create ${MPV_CONFIG_DIR}/script-opts/netrc.conf containing:

        netrc-path=/full/path/to/netrc

  * Or start mpv with:

        mpv --script-opts=netrc=/full/path/to/netrc ...

A full, absolute path is recommended; "~" and mpv's "~~" expansion
may not be applied.

Debug logging
-------------

The script emits messages on the "netrc" log prefix. Run mpv with
`--msg-level=netrc=debug` to see when entries are skipped, matched, or
when ~/.netrc cannot be opened.
]==],
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
