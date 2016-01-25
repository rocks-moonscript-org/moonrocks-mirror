package = 'matchext'
version = '0.1.0-1'

source = {}
source.url = 'git://github.com/jcgoble3/lua-matchext.git'
source.tag = 'v0.1.0-1'

description = {}
description.summary = 'Fork of Lua 5.3 pattern matching with added features'
description.homepage = 'https://github.com/jcgoble3/lua-matchext'
description.license = 'MIT/X11'
description.detailed = [[
This is a fork of Lua 5.3's pattern matching functions plus some added features. This was spawned by a proposal on lua-l regarding the first feature below (the balanced string with escape).

Current extra features:

* `%Bxyz`: new token that behaves like `%bxy`, but with a specified escape character. `x` is the starting character, `y` is the escape character, and `z` is the ending character. As with the two arguments to the built-in `%b`, all three arguments are always interpreted literally and never imbue special meaning; this applies even to the pattern-matching escape character `%`.
* Uses Lua 5.3's pattern-matching library, even on 5.1 and 5.2. However, Lua 5.1 still cannot handle null characters in patterns. Eventually I'll investigate why.
* Currently, that's it. More may come eventually, but no guarantee.

Possible features in the future are listed below. The priority is given on a scale of 0 to 10, 10 being most important, but it is a rough approximation only and is in no way a guarantee of what order features will come in or if they will ever come.

* Match functions that return their match data in a table or userdata instead of multiple return values (priority 10)
* UTF-8-aware matching (this would probably result in a backport of the whole `utf8` standard library to 5.1 and 5.2) (priority 6)
* Ability to apply quantifiers to parentheses (priority 4)
* `|` for alternation, as in ordinary regex (priority 1)
* Non-capturing parentheses (priority 8, but pointless unless and until support for group quantifiers or alternation is implemented)
* Support for null characters in patterns for Lua 5.1 (priority 3)
* ?????]]

dependencies = {'lua >= 5.1, < 5.4'}

build = {}
build.type = 'builtin'
build.modules = {matchext = 'src/matchext.c'}
